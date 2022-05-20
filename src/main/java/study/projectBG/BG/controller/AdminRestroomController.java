package study.projectBG.BG.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.service.AdminRestroomService;
import study.projectBG.BG.service.AdminService;
import study.projectBG.BG.service.RestroomCommentService;

@Controller
public class AdminRestroomController {
	
	

	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminRestroomService adminRestroomService;
	 
	@GetMapping("/adminRestroom")
	public String adminRestroom() {
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
	
	@GetMapping("restroomDelete")
	public String restroomDelete(int id) {
		adminRestroomService.restroomDelete(id);
		return "admin/adminRestroom";
	}
	
	
}
