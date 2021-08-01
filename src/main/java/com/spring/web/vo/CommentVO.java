package com.spring.web.vo;

public class CommentVO {
	private int comment_hId; 
	private String comment_name;
	private String comment_content;
	private String	comment_REGDATE;
	private int board_idx;
	
	public CommentVO() {
		// TODO Auto-generated constructor stub
	}

	public CommentVO(int comment_hId, String comment_name, String comment_content, String comment_REGDATE) {
		super();
		this.comment_hId = comment_hId;
		this.comment_name = comment_name;
		this.comment_content = comment_content;
		this.comment_REGDATE = comment_REGDATE;
	}
	

	public CommentVO(int comment_hId, String comment_name, String comment_content, String comment_REGDATE,
			int board_idx) {
		super();
		this.comment_hId = comment_hId;
		this.comment_name = comment_name;
		this.comment_content = comment_content;
		this.comment_REGDATE = comment_REGDATE;
		this.board_idx = board_idx;
	}

	public int getComment_hId() {
		return comment_hId;
	}

	public void setComment_hId(int comment_hId) {
		this.comment_hId = comment_hId;
	}

	public String getComment_name() {
		return comment_name;
	}

	public void setComment_name(String comment_name) {
		this.comment_name = comment_name;
	}

	public String getComment_content() {
		return comment_content;
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}

	public String getComment_REGDATE() {
		return comment_REGDATE;
	}

	public void setComment_REGDATE(String comment_REGDATE) {
		this.comment_REGDATE = comment_REGDATE;
	}
	
	
	public int getBoard_idx() {
		return board_idx;
	}

	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}

	@Override
	public String toString() {
		return "CommentVO [comment_hId=" + comment_hId + ", comment_name=" + comment_name + ", comment_content="
				+ comment_content + ", comment_REGDATE=" + comment_REGDATE + ", board_idx=" + board_idx + "]";
	}
	
	
}
