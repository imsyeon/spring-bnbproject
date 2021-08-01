package com.spring.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.web.vo.BoardVO;

@Repository
public class BoardDAOMybatis extends SqlSessionDaoSupport{

	private SqlSession mybatis = null;

	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
		mybatis = getSqlSession();
	}

	public void insertBoard(BoardVO vo) {
		System.out.println("mybatis - insertBoard()");

		mybatis.insert("BoardDAO.insertBoard", vo);
	}

	public void updateBoard(BoardVO vo) {
		System.out.println("mybatis - updateBoard()");

		mybatis.update("BoardDAO.updateBoard", vo);
	}

	public void deleteBoard(BoardVO vo) {
		System.out.println("mybatis - deleteBoard()");

		mybatis.delete("BoardDAO.deleteBoard", vo);
	}

	public BoardVO getBoard(BoardVO vo) {
		System.out.println("mybatis - getBoard()");

		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	public List<BoardVO> getBoardList(BoardVO vo) {
//		System.out.println("mybatis - getBoardList()");
//		System.out.println("**************"+vo.getEndPageList());
//		System.out.println("**************"+vo.getStartList());
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
		
	
	public int getBoardCount(BoardVO vo) {
		System.out.println("getBoardCount()");
		
		return mybatis.update("BoardDAO.getBoardCount", vo);
	}
	
	public int boardCount(BoardVO vo) {
//		System.out.println("boardCount()");
//		System.out.println("**************"+vo.getEndPageList());
//		System.out.println("**************"+vo.getStartList());
		return mybatis.selectOne("BoardDAO.boardCount", vo);
	}
	
	public List<BoardVO> searchBoardList(BoardVO vo){
	
		System.out.println("BoardDAO.SearchBoardList()");
		System.out.println(vo);
		
		return mybatis.selectList("BoardDAO.searchBoardList", vo);	
	}
}
