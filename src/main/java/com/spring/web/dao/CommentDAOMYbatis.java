package com.spring.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.web.vo.CommentVO;

@Repository
public class CommentDAOMYbatis extends SqlSessionDaoSupport{

	private SqlSession mybatis = null;

	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
		mybatis = getSqlSession();
	}

	//댓글남기기 글쓰기 Insert
	public void insertComment(CommentVO vo) {
		System.out.println("mybais-insertComment");

		mybatis.insert("CommentDAO.insertComment", vo);
	}

	//댓글 수정하기 modify-update
	public void updateComment(CommentVO vo) {
		System.out.println("mybais-updateComment");

		mybatis.update("CommentDAO.updateComment", vo);
	}
	//delete
	public void deleteComment(CommentVO vo) {
		//System.out.println("mybais-deleteComment");

		mybatis.delete("CommentDAO.deleteComment", vo);
	}
	//List
	public List<CommentVO> getCommentList(int board_idx){
		//System.out.println("mybais-getCommentList");

		return mybatis.selectList("CommentDAO.getCommentList", board_idx);

	}
	
	//수정을 위한 getComment 하나짜리
	public CommentVO getComment(CommentVO vo) {
		//System.out.println("mybais-getComment");

		return mybatis.selectOne("CommentDAO.getComment", vo);
	}
	
	//페이징을 위한 댓글 개수 
	
	public int getCommentCount(CommentVO vo) {
		//System.out.println("mybais-getCommentCount");
		return mybatis.selectOne("CommentDAO.getCommentCount", vo);
	}



}
