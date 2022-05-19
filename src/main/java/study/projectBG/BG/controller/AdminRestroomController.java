package study.projectBG.BG.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import study.projectBG.BG.service.AdminService;

@Controller
public class AdminRestroomController {

	@Autowired
	private AdminService adminService;
	 
	@GetMapping("/adminRestroom")
	public String adminRestroom() {
		return "admin/adminRestroom";
	}
	
	
	@GetMapping("/adminInsert")
	public String adminInsert() {
		return "admin/adminInsert";
	}
}
