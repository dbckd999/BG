package study.projectBG.BG.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.PageMakerDTO;
import study.projectBG.BG.model.RestroomCommentDTO;
import study.projectBG.BG.service.RestroomCommentService;

@Controller
public class RestroomCommentController {

	@Autowired
	RestroomCommentService service;
	
	//유저 입장에서 필요한 순서로 메서드 나열
	
	//댓글 전체보기
	@GetMapping("/showRestroomComments")
	@ResponseBody
	public List<RestroomCommentDTO> showRestroomComments(int c_restroom_no){
		List<RestroomCommentDTO> list = service.getARestroomComment(c_restroom_no);
		return list;
	}
	
	//댓글 작성하기
	@PostMapping("/insertRestroomComment")
	@ResponseBody
	public int insertRestroomComment(RestroomCommentDTO dto) {
		int res = service.insertComment(dto);
		return res;
	}
	
	//댓글 수정하기
	@PostMapping("/modifyRestroomComment")
	@ResponseBody
	public int modifyRestroomComment(RestroomCommentDTO dto) {
		int res = service.modifyComment(dto);
		return res;
	}
	
	//댓글 삭제하기
	@PostMapping("/deleteRestroomComment")
	@ResponseBody
	public int deleteRestroomComment(int c_no) {
		int res = service.deleteComment(c_no);
		return res;
	}
	
	
}
