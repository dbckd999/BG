package study.projectBG.BG.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.PageMakerDTO;
import study.projectBG.BG.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@GetMapping("/admin")
	public String adminList(Model model, Criteria cri) {

		System.out.println("adminListGET");
		model.addAttribute("list", adminService.getListPaging(cri));
		int total = adminService.getTotal();

		PageMakerDTO pageMake = new PageMakerDTO(cri, total);

		model.addAttribute("pageMaker", pageMake);
		return "admin/admin";
	}

	@GetMapping("/adminDelete")
	public String adminDelete(@RequestParam("user_no") String user_no) {

		System.out.println(user_no);
		adminService.adminDelete(user_no);

		return "redirect:/admin";
	}

	@GetMapping("/userDelete")
	public String userDelete(@RequestParam("user_id") String user_id) {

		adminService.userDelete(user_id);

		return "redirect:/admin";

	}

}
