package com.entertain.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entertain.biz.user.UserDTO;
import com.entertain.biz.user.UserService;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    public int getUserIdCheck(String id) {
        return userDAO.getUserIdCheck(id);
    }

    public void createUserInfo(UserDTO dto) {
        userDAO.createUserInfo(dto);
    }

    public UserDTO getUserInfo(UserDTO dto) {
        return userDAO.getUserInfo(dto);
    }
}
