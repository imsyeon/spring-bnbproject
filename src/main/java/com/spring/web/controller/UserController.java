package com.spring.web.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.spring.web.service.UserService;
import com.spring.web.vo.BoardVO;
import com.spring.web.vo.UserVO;

@Controller

public class UserController {

	@Autowired
	private UserService userService; // Service 추가
	//로그인
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(UserVO vo, HttpSession httpSession) {
		System.out.println("LoginController - login()");

		UserVO user = userService.getUser(vo);
		String role = vo.getUser_role();
		System.out.println(role);
		System.out.println("@@@@@@@@"+user);
		if(user != null && role.equals("admin")) {
			httpSession.setAttribute("user_email", user.getUser_email());
			httpSession.setAttribute("user_idx", user.getUser_idx());
			System.out.println(user.getUser_idx());
			return "redirect:index2.jsp";
		}else if(user != null && role.equals("user")) {
			httpSession.setAttribute("user_email", user.getUser_email());
			httpSession.setAttribute("user_idx", user.getUser_idx());
			httpSession.setAttribute("user_name", user.getUser_name());
			
			System.out.println(user.getUser_idx());
			return "redirect:indexUser.jsp";
		}
		else return "loginUser.jsp";

	}
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession httpSession) {
		System.out.println("LogoutController - logout()");

		httpSession.invalidate();

		return "redirect:loginUser.jsp";
	}

	//회원가입
	@RequestMapping(value="/insertUser.do")
	public String insertUser(UserVO vo) {
		System.out.println("InsertUserController - insertUser()");
		
		userService.insertUser(vo);
		return "redirect:loginUser.jsp";


	}
	
	//회워탈퇴
	
	@RequestMapping(value="/deleteUser.do")
	public String deleteUser(UserVO vo,HttpSession httpSession) {
		System.out.println("deleteUserController - deleteUser()");
		//httpSession.getAttribute("user_idx");
		
		userService.deleteUser(vo);
		httpSession.invalidate();
		return "redirect:loginUser.jsp";


	}
	
	//회원수정
		@RequestMapping(value="/modifyUser.do")
		public String modifyUser(UserVO vo) {
			System.out.println("modifyUserController -modifyUser()");
			
			userService.modifyUser(vo);
			return "redirect:indexUser.jsp";


		}
}
