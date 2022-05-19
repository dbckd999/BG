package study.projectBG.BG.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.service.AdminRestroomService;

public class AdminRestroomController {

	@Autowired
	private AdminRestroomService adminrestroomservice;

	@GetMapping("/updateRestroom")
	public String updateRestroom(@RequestParam("id") String id, Model model) {
		MapDTO dto = adminrestroomservice.(id);
		model.addAttribute("dto", dto);
		return "admin/adminRestroom";
	}

	@PostMapping("/updateRestroom")
	public String postUpdateRestroom(MapDTO dto, Model model) {
		adminrestroomservice.updateRestroom(dto);
		model.addAttribute("id", dto.getId());
		return "redirect:/adminRestroom";
	}

}
