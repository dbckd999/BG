package study.projectBG.BG.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.service.AdminRestroomService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.PageMakerDTO;
import study.projectBG.BG.service.AdminRestroomService;
import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.service.AdminRestroomService;
import study.projectBG.BG.service.AdminService;
import study.projectBG.BG.service.RestroomCommentService;

@Controller
public class AdminRestroomController {
	
	
	@Autowired
	private AdminRestroomService adminRestroomService;

	@Autowired
	private AdminRestroomService adminrestroomService;

	@GetMapping("/updateRestroom")
	public String updateRestroom(@RequestParam("id") String id, Model model) {
		MapDTO dto = adminrestroomService.adminRestroom(id);
		model.addAttribute("dto", dto);
		return "admin/adminUpdate";
	}

	@PostMapping("/updateRestroom")
	public String postUpdateRestroom(MapDTO dto) {
		System.out.println(dto);
		adminrestroomService.updateRestroom(dto);
		return "redirect:/adminRestroom?id=" + dto.getId();
	}

	
	 
	@GetMapping("/adminRestroom")
	public String adminRestroom(Model model , Criteria cri) {

           
		model.addAttribute("list", adminrestroomService.getListPaging(cri));
		System.out.println("adminRestroomLISTGET");
		int total = adminrestroomService.getTotal(cri);
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		 model.addAttribute("pageMaker", pageMake);
		return "admin/adminRestroom";
	}
	
	
	@GetMapping("/adminInsert")
	public String adminInsert() {
		return "admin/adminInsert";
	}
	
	@PostMapping("/adminInsert")
	public String restroomInsert(MapDTO dto) {
		System.out.println("Insert: " + dto);
		adminRestroomService.restroomInsert(dto);
		//MapDTO dto2 = new MapDTO();
		//dto2.setC_man_closet(Integer.parseInt(dto.getC_man_closet()));
		return "redirect:/adminInsert";
	}
}
