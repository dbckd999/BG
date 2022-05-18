package study.projectBG.BG.controller;

import java.net.http.HttpRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import study.projectBG.BG.model.BoardDTO;
import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.PageMakerDTO;
import study.projectBG.BG.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardservice;

	@GetMapping("/boardList")
	public String board(Model model, Criteria cri) {

		System.out.println("BOARDLISTGET");
		model.addAttribute("list", boardservice.getListPaging(cri));

		int total = boardservice.getTotal();

		PageMakerDTO pageMake = new PageMakerDTO(cri, total);

		model.addAttribute("pageMaker", pageMake);
		return "/board/boardList";

	}

	@GetMapping("/boardInsert")
	public String boardInsert() {

		return "/board/boardInsert";
	}

	@PostMapping("/boardInsert")
	public String boardInsertProcess(BoardDTO dto) {
		System.out.println("타니 티파니? 이파니? ");
		boardservice.boardInsert(dto);

		return "redirect:/boardList";

	}

	@GetMapping("/boardRead")
	public String boardRead(@RequestParam("b_no") String b_no, Model model) {
		BoardDTO dto = boardservice.boardRead(b_no);
		model.addAttribute("dto", dto);
		return "board/boardRead";
	}
	
	@GetMapping("/boardUpdate")
	public String boardUpdate(@RequestParam("dto") BoardDTO dto, Model model) {
		boardservice.boardUpdate(dto);
		model.addAttribute(dto.getB_no());
		return "redirect:/boardRead";
	}

}