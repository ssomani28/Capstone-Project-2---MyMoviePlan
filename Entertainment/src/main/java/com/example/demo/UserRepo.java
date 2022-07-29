package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepo extends JpaRepository<User, Integer> {
	
	@Query("select user from User user where user.email=?1")
	public List<User> findByUserName(String username);
}
