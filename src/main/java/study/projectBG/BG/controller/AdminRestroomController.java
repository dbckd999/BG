package study.projectBG.BG.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.PageMakerDTO;
import study.projectBG.BG.service.AdminRestroomService;

@Controller
public class AdminRestroomController {

	@Autowired
	private AdminRestroomService adminrestroomService;
	 
	@GetMapping("/adminRestroom")
	public String adminRestroom(Model model , Criteria cri) {

           
		model.addAttribute("list", adminrestroomService.getListPaging(cri));
		System.out.println("adminRestroomLISTGET");
		int total = adminrestroomService.getTotal();
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		 model.addAttribute("pageMaker", pageMake);
		return "admin/adminRestroom";
	}
	
	
	@GetMapping("/adminInsert")
	public String adminInsert() {
		return "admin/adminInsert";
	}
	
	
}
