package com.spring.web.service;

import com.spring.web.vo.UserVO;

public interface UserService {
	public UserVO getUser(UserVO vo);
	void insertUser(UserVO vo);
	void deleteUser(UserVO vo);
	void modifyUser(UserVO vo);
	
}
