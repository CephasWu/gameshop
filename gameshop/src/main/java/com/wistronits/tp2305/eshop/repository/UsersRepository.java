package com.wistronits.tp2305.eshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wistronits.tp2305.eshop.model.entity.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer>{

	Users findByUserAccountAndUserPassword(String username, String password);

	Users findByUserAccount(String username);
}
