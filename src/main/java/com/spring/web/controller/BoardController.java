package com.spring.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.spring.web.service.BoardService;
import com.spring.web.service.CommentService;
import com.spring.web.vo.BoardVO;
import com.spring.web.vo.CommentVO;
import com.spring.web.vo.PagingVO;

@Controller
@SessionAttributes("board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	@Autowired
	private CommentService commentService;

	@ModelAttribute("searchType")
	public Map<String, String> searchType(){
		Map<String, String> searchType = new HashMap<String, String>();
		searchType.put("Title", "TITLE");
		searchType.put("Content", "CONTENT");
		//System.out.println(searchType);
		return searchType;
	}

	@RequestMapping(value = "/getBoardList.do")
	public String getBoardList(BoardVO vo,Model model
			,@RequestParam(defaultValue = "1") int curPage
			, @RequestParam(defaultValue = "1") int range) {
		System.out.println("GetBoardListController - getBoardList()");

		if(vo.getSearchType() == null) vo.setSearchType("TITLE");
		if(vo.getSearchKeyword() == null) vo.setSearchKeyword("");

		int listCnt = boardService.boardCount(vo);

//		System.out.println("curPage =>>>>>" + curPage);
//		System.out.println("getSearchType =>>>>>" + vo.getSearchType());
//		System.out.println("setSearchKeyword =>>>>>" + vo.getSearchKeyword());
//		System.out.println(listCnt);

		PagingVO pagingVO = new PagingVO();
		pagingVO.pageInfo(curPage, range, listCnt);
		//System.out.println("controller------"+ pagingVO);
		vo.setStartList(pagingVO.getStartList());
		vo.setEndPageList(pagingVO.getEndPageList());
		
		
		//System.out.println(vo);
			
		model.addAttribute("pagingVO",pagingVO); // Model 정보 저장  
		model.addAttribute("boardList",boardService.getBoardList(vo));


		return "getBoardList2.jsp";
	}


	@RequestMapping(value = "/insertBoard.do")
	public String insertBoard(MultipartHttpServletRequest mtfRequest, BoardVO vo) {
		System.out.println("----InsertBoardController - insertBoard()-------");
		List<MultipartFile> fileList = mtfRequest.getFiles("uploadFile");
		String filePath = "C:/java/springproject/src/main/webapp/resources/fileupload/";
		
		for(MultipartFile mf : fileList) {
			String fileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈
			
			
//			System.out.println("fileName : " + fileName);
//			System.out.println("fileSize : " + fileSize);
			//vo.setFileName(fileName);
			String safeFile = filePath +  fileName;
			String fileName1 = fileList.get(0).getOriginalFilename();
			String fileName2 = fileList.get(1).getOriginalFilename();
			vo.setFileName(fileName1);
			vo.setFileName2(fileName2);
			try {
				mf.transferTo(new File(safeFile));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		
		System.out.println(vo);
		boardService.insertBoard(vo);

		return "redirect:getBoardList.do";
	}


	@RequestMapping(value = "/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		System.out.println("DeleteBoardController - deleteBoard()");

		boardService.deleteBoard(vo);

		return "redirect:getBoardList.do";
	}

	
	@RequestMapping(value = "/getBoard.do")
	public String getBoard(BoardVO vo, Model model, CommentVO cvo) {
		System.out.println("-----board-----");
		//System.out.println(cvo.getContent());
		//System.out.println(cvo.gethId());
		//System.out.println(cvo.getSeq());
		
		
		model.addAttribute("board", boardService.getBoard(vo));
		boardService.getBoardCount(vo);
		//model.addAttribute("commentList",commentService.getCommentList(cvo.getBoard_idx()));
		return  "getBoard2.jsp";
	}



	@RequestMapping(value = "/updateBoard.do") 
	public String updateBoard(@ModelAttribute("board")BoardVO vo) {
		System.out.println("pdateBoardController - updateBoard()");

		boardService.updateBoard(vo);

		return "redirect:getBoardList.do" ;
	}



}
