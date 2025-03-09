package com.example.demo.services;

import org.springframework.stereotype.Service;

import com.example.demo.entity.User;
@Service
public interface UserService {
   public boolean registerUser(User user);
   public User loginUser(String email,String password);
}
