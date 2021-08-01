package com.spring.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.web.dao.CommentDAOMYbatis;
import com.spring.web.service.CommentService;
import com.spring.web.vo.CommentVO;

@Controller("commentService")
public class CommnetServiceImpl implements CommentService{
	
	@Autowired
	private CommentDAOMYbatis commentDAO;
	
	@Override
	public void insertComment(CommentVO vo) {
		commentDAO.insertComment(vo);
		
	}

	@Override
	public void updateComment(CommentVO vo) {
		commentDAO.updateComment(vo);
		
	}

	@Override
	public void deleteComment(CommentVO vo) {
		commentDAO.deleteComment(vo);
		
	}

	@Override
	public List<CommentVO> getCommentList(int board_idx) {
		
		return commentDAO.getCommentList(board_idx);
	}

	@Override
	public CommentVO getComment(CommentVO vo) {
	
		return commentDAO.getComment(vo);
	}

	@Override
	public int getCommentCount(CommentVO vo) {
		// TODO Auto-generated method stub
		return commentDAO.getCommentCount(vo);
	}

}
