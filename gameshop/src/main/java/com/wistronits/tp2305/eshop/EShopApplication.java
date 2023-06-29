package com.wistronits.tp2305.eshop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.core.env.Environment;

@SpringBootApplication(scanBasePackages = "com.wistronits.tp2305.eshop")
@EnableAspectJAutoProxy
public class EShopApplication {
	
	private static final Logger log = LoggerFactory.getLogger(EShopApplication.class);
	
	@Autowired
	private Environment environment;

	@Value("${spring.datasource.url}")
	private String url;

	@Value("${spring.datasource.username}")
	private String username;

	@Value("${spring.datasource.driver-class-name}")
	private String driver;

	@Value("${spring.datasource.password}")
	private String password;

	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(EShopApplication.class, args);
		EShopApplication mavenJdbcTest = context.getBean(EShopApplication.class);
		mavenJdbcTest.testJdbcConnection();
//			log.trace("Trace message");
//			log.debug("Debug message");
//			log.info("Info message");
//			log.warn("Warn message");
//			log.error("Error message");
//        mavenJdbcTest.getTestCity();
	}

	public void testJdbcConnection() {
//      String url = environment.getProperty("spring.datasource.url");
//      String username = environment.getProperty("spring.datasource.username");
//      String driver = environment.getProperty("spring.datasource.driver-class-name");
//      String password = environment.getProperty("spring.datasource.password");
		log.info("url:{}", url );
		log.info("username:{}", username );
		log.info("driver:{}", driver );
		log.info("password:{}", password );

		Connection connection = null;
		try {
			// Load JDBC driver
			Class.forName(driver);

			// Create connection
			connection = DriverManager.getConnection(url, username, password);

			// Check if connection is successful
			if (connection != null) {
				log.error("JDBC connection successful!");
			}
		} catch (ClassNotFoundException e) {
			log.error("JDBC driver not found!");
		} catch (SQLException e) {
			log.error("JDBC connection failed!");
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.error("Failed to close JDBC connection!");
			}
		}
	}
}
