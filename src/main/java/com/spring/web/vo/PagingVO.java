package com.spring.web.vo;

public class PagingVO {

	private int listSize = 6;                //초기값으로 목록개수를 10으로 셋팅

	private int rangeSize = 3;            //초기값으로 페이지범위를 10으로 셋팅

	private int page;

	private int range;

	private int listCnt; //글개수

	private int pageCnt; //페이지의 수

	private int startPage;//시작하는페이지

	private int startList;

	private int endPageList;

	private int endPage; //끝나는 페이지

	private boolean prev;

	private boolean next;


	public PagingVO() {
		// TODO Auto-generated constructor stub
	}
	
	

	public PagingVO(int listSize, int rangeSize, int page, int range, int listCnt, int pageCnt, int startPage,
			int startList, int endPageList, int endPage, boolean prev, boolean next) {
		super();
		this.listSize = listSize;
		this.rangeSize = rangeSize;
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;
		this.pageCnt = pageCnt;
		this.startPage = startPage;
		this.startList = startList;
		this.endPageList = endPageList;
		this.endPage = endPage;
		this.prev = prev;
		this.next = next;
	}

	




	public int getEndPageList() {
		return endPageList;
	}



	public void setEndPageList(int endPageList) {
		this.endPageList = endPageList;
	}



	public int getRangeSize() {

		return rangeSize;

	}



	public int getPage() {

		return page;

	}



	public void setPage(int page) {

		this.page = page;

	}



	public int getRange() {

		return range;

	}



	public void setRange(int range) {

		this.range = range;

	}



	public int getStartPage() {

		return startPage;

	}



	public void setStartPage(int startPage) {

		this.startPage = startPage;

	}



	public int getEndPage() {

		return endPage;

	}



	public void setEndPage(int endPage) {

		this.endPage = endPage;

	}



	public boolean isPrev() {

		return prev;

	}



	public void setPrev(boolean prev) {

		this.prev = prev;

	}



	public boolean isNext() {

		return next;

	}



	public void setNext(boolean next) {

		this.next = next;

	}



	public int getListSize() {

		return listSize;

	}



	public void setListSize(int listSize) {

		this.listSize = listSize;

	}



	public int getListCnt() {

		return listCnt;

	}



	public void setListCnt(int listCnt) {

		this.listCnt = listCnt;

	}

	public int getStartList() {

		return startList;

	}


	public int getPageCnt() {
		return pageCnt;
	}



	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}



	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}



	public void setStartList(int startList) {
		this.startList = startList;
	}



	public void pageInfo(int page, int range, int listCnt) {

		this.page = page;

		this.range = range;

		this.listCnt = listCnt;



		//전체 페이지수 

		this.pageCnt = (int) Math.ceil((double)listCnt/listSize);



		//시작 페이지

		this.startPage = (range - 1) * rangeSize + 1 ;



		//끝 페이지

		this.endPage = range * rangeSize;



		//게시판 시작번호

		this.startList = (page - 1) * listSize +1;



		//이전 버튼 상태

		this.prev = range == 1 ? false : true;



		//다음 버튼 상태

		this.next = endPage > pageCnt ? false : true;

		if (this.endPage >= this.pageCnt) {

			this.endPage = this.pageCnt;

			this.next = false;

		}
		
		//마지막 종료점
		
		this.endPageList = (page - 1) * listSize + listSize;

	}



	@Override
	public String toString() {
		return "PagingVO [listSize=" + listSize + ", rangeSize=" + rangeSize + ", page=" + page + ", range=" + range
				+ ", listCnt=" + listCnt + ", pageCnt=" + pageCnt + ", startPage=" + startPage + ", startList="
				+ startList + ", endPageList=" + endPageList + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ "]";
	}

	
	
}



