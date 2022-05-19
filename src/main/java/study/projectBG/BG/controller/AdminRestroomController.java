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

import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.PageMakerDTO;
import study.projectBG.BG.service.AdminRestroomService;

@Controller
public class AdminRestroomController {

	@Autowired
	private AdminRestroomService adminrestroomService;

	@GetMapping("/updateRestroom")
	public String updateRestroom(@RequestParam("id") String id, Model model) {
		MapDTO dto = adminrestroomService.adminRestroom(id);
		model.addAttribute("dto", dto);
		return "admin/adminRestroom";
	}

	@PostMapping("/updateRestroom")
	public String postUpdateRestroom(MapDTO dto, Model model) {
		adminrestroomService.updateRestroom(dto);
		model.addAttribute("id", dto.getId());
		return "redirect:/adminRestroom";
	}

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
