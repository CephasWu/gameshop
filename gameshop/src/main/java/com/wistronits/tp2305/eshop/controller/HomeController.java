package com.wistronits.tp2305.eshop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.wistronits.tp2305.eshop.config.JwtTokenUtil;
import com.wistronits.tp2305.eshop.model.dto.UserDto;
import com.wistronits.tp2305.eshop.model.entity.Product;
import com.wistronits.tp2305.eshop.model.request.RequestBodyModel;
import com.wistronits.tp2305.eshop.model.response.ResponseBodyModel;
import com.wistronits.tp2305.eshop.model.vo.UserVo;
import com.wistronits.tp2305.eshop.service.ProductService;
import com.wistronits.tp2305.eshop.service.UserService;

@Controller
@CrossOrigin(origins = "http://localhost:8080/tp2305.eShop")
public class HomeController {

	private static Logger log = LoggerFactory.getLogger(HomeController.class);

	Map<String, Object> localStorage = new HashMap<>();

	@Autowired
	private UserService userService;

	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	private String TOKEN;

	@Autowired
	private ProductService productService;

	@RequestMapping("/index")
	public String index(Model model, HttpServletRequest request) {

		List<Product> products = productService.getAllProduct();
		model.addAttribute("basePath", request.getContextPath());
		model.addAttribute("products", products);

		log.info("----------------------------index:userName:{}", localStorage.get("userName"));
		if (localStorage.get("userName") != null) {
			model.addAttribute("token", TOKEN);
			model.addAttribute("userName", localStorage.get("userName"));
		}

		boolean adCart = false;
		if (adCart) {
			if (userService.isUserLoggedIn(model)) {
				return "redirect:/cart";
			} else {
				return "redirect:/login";
			}
		}

		return "index";
	}

	@RequestMapping("/")
	public String index(Model model) {

		log.info("----------------------------index:userName:{}", localStorage.get("userName"));
		if (localStorage.get("userName") != null) {
			model.addAttribute("token", TOKEN);
			model.addAttribute("userName", localStorage.get("userName"));
		}

		boolean adCart = false;
		if (adCart) {
			if (userService.isUserLoggedIn(model)) {
				return "redirect:/cart";
			} else {
				return "redirect:/login";
			}
		}

		return "index";
	}

	@PostMapping(value = "/login", produces = "application/json")
	public ResponseEntity<ResponseBodyModel<UserVo>> doLogin(@RequestBody RequestBodyModel<UserDto> request,
			Model module) {

		log.info(request.toString());
		String userAccount = request.getRequestBody().getUserAccount();
		String userPassword = request.getRequestBody().getUserPassword();
		int userCertificationStatus = request.getRequestBody().getUserCertificationStatus();
		String type = request.getType();

		ResponseBodyModel<UserVo> response = new ResponseBodyModel<>();
		UserVo responseBody = new UserVo();

		boolean isExist = userService.login(userAccount, userPassword);
		log.info("isExist:{}", isExist);
		if (isExist) {
			responseBody.setUserAccount(userAccount);
			responseBody.setUserCertificationStatus(userCertificationStatus);
			final String token = jwtTokenUtil.generateToken(responseBody);
			TOKEN = token;

			log.info("LoginSuccess TOKEN:{} ", TOKEN);

			module.addAttribute("userName", userAccount);
			localStorage.put("userName", userAccount);
		} else {
			TOKEN = null;
		}

		log.info("TOKEN不為空:{} ", StringUtils.isNotBlank(TOKEN));
		if (StringUtils.isNotBlank(TOKEN)) {

			response.setToken(TOKEN);
			response.setRequestBody(responseBody);
			response.setSuccess(true);

			return new ResponseEntity<>(response, HttpStatus.OK);
		} else {
			module.addAttribute("error", "Invalid username or password");
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
		}

	}

	@GetMapping(value = "/login")
	public String login(Model model) {
		log.info("----------------------------login:userName:{}", localStorage.get("userName"));
		if (localStorage.get("userName") != null) {
			model.addAttribute("token", TOKEN);
			model.addAttribute("userName", localStorage.get("userName"));
			return "redirect:/index";
		}
		return "login";
	}

	@RequestMapping("/verify")
	public String gotoVerify() {
		return "verify";
	}

	@PostMapping(value = "/userVerify")
	public ResponseEntity<String> postVerify(@RequestBody String req, HttpSession session) throws Exception {
		JSONObject object = new JSONObject(req);
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 5; i++) {
			int num = (int) (Math.random() * 10);
			sb.append(Integer.toString(num));
		}
		String verifycode = sb.toString();
		log.info(verifycode);
		session.setAttribute("verify", verifycode);
		session.setAttribute("USERMAIL", object.getString("USERMAIL"));
		if (userService.findUserStatus(object.getString("USERMAIL"))) {
            return ResponseEntity.status(HttpStatus.CREATED).build();
		}
		userService.createUser(object.getString("USERMAIL"), object.getString("PASSWORD"), object.getString("NICKNAME"),
				object.getString("PHONE"));
		userService.sendSimpleMail(object.getString("USERMAIL"), verifycode);

		return ResponseEntity.status(HttpStatus.OK).build();
	}

	@PostMapping(value = "/userCreate")
	public ResponseEntity<String> postCreates(@RequestBody String req, HttpSession session,
			@SessionAttribute("verify") String verify, @SessionAttribute("USERMAIL") String userEmail)
			throws Exception {
		JSONObject object = new JSONObject(req);
		if (verify.equals(object.getString("PASSWORD"))) {
			userService.userStatus(userEmail);
			return ResponseEntity.status(HttpStatus.OK).build();
		} else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
	}
	@GetMapping("/logout")
	public String logout(){
		TOKEN="";
		localStorage.put("userName", null);
		return "redirect:/index";
	}
}
