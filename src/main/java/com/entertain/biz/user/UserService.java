package com.entertain.biz.user;

import com.entertain.biz.board.BoardDTO;

public interface UserService {
	 int getUserIdCheck(String id);
	 void createUserInfo(UserDTO dto);
	 UserDTO getUserInfo(UserDTO dto);
}
