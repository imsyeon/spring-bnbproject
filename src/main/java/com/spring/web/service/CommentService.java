package com.spring.web.service;

import java.util.List;

import com.spring.web.vo.BoardVO;
import com.spring.web.vo.CommentVO;

public interface CommentService {

	//댓글남기기 글쓰기 Insert
	void insertComment(CommentVO vo);
	
	//댓글 수정하기 modify-update
	void updateComment(CommentVO vo);
	//delete
	void deleteComment(CommentVO vo);
	//List
	List<CommentVO> getCommentList(int board_idx);
	
	CommentVO getComment(CommentVO vo);
	
	//페이징을 위한 댓글 개수 세기
	int getCommentCount(CommentVO vo);
	
}
