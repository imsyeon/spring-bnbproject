package com.spring.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.spring.web.vo.UserVO;


@Repository
public class UserDAOMybatis extends SqlSessionDaoSupport{
	
	private SqlSession mybatis = null;
	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
		mybatis = getSqlSession();
	}
	
	
	public UserVO getUser(UserVO vo) {
//		System.out.println("mybatisDAO-getUser()");
//		System.out.println((UserVO) mybatis.selectOne("UserDAO.getUser",vo));
		return (UserVO) mybatis.selectOne("UserDAO.getUser",vo);
	}
	

	public void insertUser(UserVO vo) {
//		System.out.println("mybatisDAO-insertUser()");
//		System.out.println(vo);
		mybatis.insert("UserDAO.insertUser",vo);
	}
	
	public void deleteUser(UserVO vo) {
//		System.out.println("mybatisDAO-deleteUser()");
//		System.out.println(vo);
		mybatis.delete("UserDAO.deleteUser",vo);
	}
	public void modifyUser(UserVO vo) {
//		System.out.println("mybatisDAO-modifyUser()");
//		System.out.println(vo);
		mybatis.update("UserDAO.modifyUser",vo);
	}
}
