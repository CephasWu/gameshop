package com.wistronits.tp2305.eshop.service;

import java.sql.Timestamp;
import java.util.Optional;

import javax.mail.internet.MimeMessage;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.wistronits.tp2305.eshop.model.entity.Users;
import com.wistronits.tp2305.eshop.repository.UsersRepository;

/**
 * 使用者驗證
 * 
 * @author Boris Sun
 *
 */
@Service
public class UserService {

	@Autowired
	private UsersRepository usersRepository;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private Environment environment;

	@Value("${spring.mail.host}")
	private String host;

	@Value("${spring.mail.username}")
	private String username;

	@Value("${spring.mail.password}")
	private String password;

	@Value("${send.from.email}")
	private String sendFrom;

	private static Logger log = LoggerFactory.getLogger(UserService.class);

	public boolean isUserLoggedIn(Model model) {

		if (model.getAttribute("userName") != null) {
			return true;
		}

		return false;
	}

	public boolean login(String username, String password) {

		Optional<Users> user = Optional
				.ofNullable(usersRepository.findByUserAccountAndUserPassword(username, password));

		if (user.isPresent()) {

			log.info("user:{}", user);
			return true;
		}

		return false;
	}

	public boolean findUserStatus(String userEmail) {
		Optional<Users> user = Optional.ofNullable(usersRepository.findByUserAccount(userEmail));

		if (user.isPresent() && (StringUtils.equals("1", String.valueOf(user.get().getUserCertificationStatus())))) {
			return true;
		}

		return false;
	}

	@Transactional
	public void createUser(String userEmail, String password, String nickName, String phone) throws Exception {
		Timestamp userRegistrationDate = new Timestamp(System.currentTimeMillis());
		Users users = new Users();
		users.setUserAccount(userEmail);
		users.setUserPassword(password);
		users.setUserNickName(nickName);
		users.setUserPhone(phone);
		users.setUserCertificationStatus(0);
		users.setUserRegistrationDate(userRegistrationDate);

		usersRepository.save(users);

	}

	public void sendSimpleMail(String userEmail, String verifycode) throws Exception {
		// email部屬
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true);
		helper.setFrom(sendFrom);
		helper.setTo(userEmail);
		StringBuffer sb = new StringBuffer();
		StringBuffer sBuffer = new StringBuffer();

		helper.setSubject("Wits電玩網:使用者註冊驗證碼");
		for (int i = 0; i < 5; i++) {
			int num = (int) (Math.random() * 10);
			sb.append(Integer.toString(num));
		}
		sBuffer.append("<h5>這是Wits電玩網寄給您的註冊驗證碼</h5>");
		sBuffer.append("<p>驗證碼為 : ");
		sBuffer.append(verifycode);
		sBuffer.append("</p>");
		sBuffer.append("<p>請將驗證碼輸入至驗證網頁，以完成驗證，感謝您!</p>");
		String str = sBuffer.toString();
		helper.setText(str, true);

		mailSender.send(message);

	}

	@Transactional
	public void userStatus(String userEmail) throws Exception {
		Users users = usersRepository.findByUserAccount(userEmail);
		users.setUserCertificationStatus(1);
		usersRepository.save(users);
	}

//	------------購物車查詢userId-----------	
	public String getUserIdByUserAccount(String userAccount) {

		Users userIdII = usersRepository.findByUserAccount(userAccount);
		String userId = String.valueOf(userIdII.getUserId());

		if (userId != null) {
			return userId;
		} else {
			return "User with account " + userAccount + " not found.";
		}
	}

}
