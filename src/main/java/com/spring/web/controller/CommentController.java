package com.spring.web.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.web.service.BoardService;
import com.spring.web.service.CommentService;
import com.spring.web.vo.BoardVO;
import com.spring.web.vo.CommentVO;
import com.spring.web.vo.UserVO;

@Controller
@SessionAttributes("comment")
public class CommentController {
	@Autowired
	private CommentService commentService;

	//하나만 가지고 오는 것
	@RequestMapping(value = "/getComment.do")
	public String getComment(CommentVO vo, Model model) {
		System.out.println("-----getCommentController()------");
		System.out.println(vo);
		model.addAttribute("comment",commentService.getComment(vo));
		return "updateComment2.jsp";
	}
	// 댓글쓰기
	@RequestMapping(value = "/insertComment.do")
	public String insertComment(CommentVO vo) {
		System.out.println("-----insertCommentController------");

		commentService.insertComment(vo);
		System.out.println(vo.getComment_content());
		System.out.println(vo.getBoard_idx());
		System.out.println(vo.getComment_hId());
		System.out.println(vo.getComment_name());

		return "redirect:getBoardList.do"; 
	}
	// 수정하기
	@RequestMapping(value = "/updateComment.do")
	public String updateComment(CommentVO vo, UserVO user, HttpSession httpSession) {
		System.out.println("-----updateCommentController------");
		httpSession.getAttribute("user_idx");
		System.out.print(httpSession.getAttribute("user_idx"));
		if(httpSession.getAttribute("user_idx") != null) {
			commentService.updateComment(vo);
			System.out.println(vo.getComment_content());
			System.out.println(vo.getComment_hId());
			System.out.println(vo.getComment_name());

			return "redirect:getBoardList.do";
		}

		return "redirect:getBoard.do";} 

	//삭제하기

	@RequestMapping(value = "/deleteComment.do")
	public String deleteComment(CommentVO vo) {
		System.out.println("-----deleteCommentController------");

		commentService.deleteComment(vo);
		System.out.println(vo.getComment_content());
		System.out.println(vo.getComment_hId());
		System.out.println(vo.getComment_name());


		return "redirect:getBoardList.do";
	}

	//댓글 등록ajax
	@RequestMapping(value="/board/addComment.do")
	@ResponseBody
	public String ajax_addComment(@ModelAttribute("commentVO") CommentVO commentVO,BoardVO boardVO,HttpServletRequest request) throws Exception{
		System.out.println("ajax_addComment");
		HttpSession session = request.getSession();
		session.getAttribute("user_name");

		try{

			commentVO.setComment_name((String)session.getAttribute("user_name"));
			commentVO.setBoard_idx(boardVO.getBoard_idx());
			commentService.insertComment(commentVO);

		} catch (Exception e){
			e.printStackTrace();
		}

		return "success";
	}

	@RequestMapping(value="/board/commentList.do", produces="application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity ajax_commentList(@ModelAttribute("commentVO") CommentVO commentVO,BoardVO boardVO,HttpServletRequest request) throws Exception{
		System.out.println("ajax_commentList");
		HttpHeaders responseHeaders = new HttpHeaders();
		ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

		// 해당 게시물 댓글
		List<CommentVO> commentVOList = (List<CommentVO>)commentService.getCommentList(commentVO.getBoard_idx());

		if(commentVOList.size() > 0){
			for(int i=0; i<commentVOList.size(); i++){
				HashMap hm = new HashMap();
				hm.put("comment_hId", commentVOList.get(i).getComment_hId());
				hm.put("comment_content", commentVOList.get(i).getComment_content());
				hm.put("comment_name", commentVOList.get(i).getComment_name());

				hmlist.add(hm);
			}

		}

		JSONArray json = new JSONArray(hmlist);        
		return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);

	}
}
