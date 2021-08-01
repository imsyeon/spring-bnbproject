package com.spring.web.vo;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class BoardVO {
	
	private int board_idx;
	private String board_title;
	private String board_content;
	private String board_nickname;
	private String board_reion;
	private String board_regdate;
	private int cnt;
	private MultipartFile uploadFile;
	private String fileName;
	private String fileName2;
	private String searchType;
	private String searchKeyword;
	private int startList;
	private int endPage;
	private int endPageList;
	
	public BoardVO(int board_idx, String board_title, String board_content, String board_nickname, String board_reion,
			String board_regdate, int cnt, MultipartFile uploadFile, String fileName, String fileName2,
			String searchType, String searchKeyword, int startList, int endPage, int endPageList) {
		super();
		this.board_idx = board_idx;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_nickname = board_nickname;
		this.board_reion = board_reion;
		this.board_regdate = board_regdate;
		this.cnt = cnt;
		this.uploadFile = uploadFile;
		this.fileName = fileName;
		this.fileName2 = fileName2;
		this.searchType = searchType;
		this.searchKeyword = searchKeyword;
		this.startList = startList;
		this.endPage = endPage;
		this.endPageList = endPageList;
	}

	public BoardVO() {
		// TODO Auto-generated constructor stub
	}
	
	public BoardVO(int board_idx, String board_title, String board_content, String board_nickname, String board_reion,
			String board_regdate, int cnt, MultipartFile uploadFile, String fileName, String fileName2,
			String searchType, String searchKeyword, int startList, int endPage) {
		super();
		this.board_idx = board_idx;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_nickname = board_nickname;
		this.board_reion = board_reion;
		this.board_regdate = board_regdate;
		this.cnt = cnt;
		this.uploadFile = uploadFile;
		this.fileName = fileName;
		this.fileName2 = fileName2;
		this.searchType = searchType;
		this.searchKeyword = searchKeyword;
		this.startList = startList;
		this.endPage = endPage;
	}

	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_nickname() {
		return board_nickname;
	}
	public void setBoard_nickname(String board_nickname) {
		this.board_nickname = board_nickname;
	}
	public String getBoard_reion() {
		return board_reion;
	}
	public void setBoard_reion(String board_reion) {
		this.board_reion = board_reion;
	}
	public String getBoard_regdate() {
		return board_regdate;
	}
	public void setBoard_regdate(String board_regdate) {
		this.board_regdate = board_regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	public int getStartList() {
		return startList;
	}
	public void setStartList(int startList) {
		this.startList = startList;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	public String getFileName2() {
		return fileName2;
	}

	public void setFileName2(String fileName2) {
		this.fileName2 = fileName2;
	}
	

	public int getEndPageList() {
		return endPageList;
	}

	public void setEndPageList(int endPageList) {
		this.endPageList = endPageList;
	}

	@Override
	public String toString() {
		return "BoardVO [board_idx=" + board_idx + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", board_nickname=" + board_nickname + ", board_reion=" + board_reion + ", board_regdate="
				+ board_regdate + ", cnt=" + cnt + ", uploadFile=" + uploadFile + ", fileName=" + fileName
				+ ", fileName2=" + fileName2 + ", searchType=" + searchType + ", searchKeyword=" + searchKeyword
				+ ", startList=" + startList + ", endPage=" + endPage + ", endPageList=" + endPageList + "]";
	}

	
	
	
	
	

	
	
	
}