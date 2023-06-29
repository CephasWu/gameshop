package com.wistronits.tp2305.eshop.config;

import java.io.Serializable;
import java.security.SecureRandom;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.wistronits.tp2305.eshop.model.vo.UserVo;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Component
public class JwtTokenUtil implements Serializable {

	private static final long serialVersionUID = -2550185165626007488L;

	@Value("${jwt.expiration}")
	private Long expiration;

	private String secretKey;

	public String generateToken(UserVo user) {
		Map<String, Object> claims = new HashMap<>();
		return createToken(claims, user.getUserAccount());
	}

	@SuppressWarnings("deprecation")
	private String createToken(Map<String, Object> claims, String subject) {
		Date now = new Date();
		Date expirationDate = new Date(now.getTime() + expiration);

		secretKey = generateRandomSecretKey();

		return Jwts.builder().setClaims(claims).setSubject(subject).setIssuedAt(now).setExpiration(expirationDate)
				.signWith(SignatureAlgorithm.HS256, secretKey).compact();
	}

	public Boolean validateToken(String token, UserVo users) {
		String username = extractUsername(token);
		return (username.equals(users.getUserAccount()) && !isTokenExpired(token));
	}

	public String extractUsername(String token) {
		return extractClaim(token, Claims::getSubject);
	}

	public Date extractExpirationDate(String token) {
		return extractClaim(token, Claims::getExpiration);
	}

	private <T> T extractClaim(String token, Function<Claims, T> claimsResolver) {
		Claims claims = extractAllClaims(token);
		return claimsResolver.apply(claims);
	}

	@SuppressWarnings("deprecation")
	private Claims extractAllClaims(String token) {
		return Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody();
	}

	private Boolean isTokenExpired(String token) {
		Date expirationDate = extractExpirationDate(token);
		return expirationDate.before(new Date());
	}

	public String generateRandomSecretKey() {
		SecureRandom secureRandom = new SecureRandom();
		byte[] keyBytes = new byte[32];
		secureRandom.nextBytes(keyBytes);
		return Base64.getEncoder().encodeToString(keyBytes);
	}
}
