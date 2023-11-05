package com.entertain.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entertain.biz.user.UserDTO;

@Repository
public class UserDAO {

    @Autowired
    SqlSessionTemplate mybatis;

    public int getUserIdCheck(String id) {
        return mybatis.selectOne("UserDAO.getUserIdCheck", id);
    }

    public void createUserInfo(UserDTO dto) {
        mybatis.insert("UserDAO.createUserInfo", dto);
    }

    public UserDTO getUserInfo(UserDTO dto) {
        return mybatis.selectOne("UserDAO.getUserInfo", dto);
    }

}
