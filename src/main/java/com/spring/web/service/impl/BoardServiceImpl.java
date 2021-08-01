package com.spring.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.web.dao.BoardDAOMybatis;
import com.spring.web.service.BoardService;
import com.spring.web.vo.BoardVO;


@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAOMybatis boardDAO;

	@Override
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);

	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}
	
	@Override
	public int getBoardCount(BoardVO vo) {
		return boardDAO.getBoardCount(vo);
	}

	@Override
	public List<BoardVO> searchBoardList(BoardVO vo) {
		
		return boardDAO.searchBoardList(vo);
	}

	@Override
	public int boardCount(BoardVO vo) {
		// TODO Auto-generated method stub
		return boardDAO.boardCount(vo);
	}

	
	

}
