package study.projectBG.BG.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MapController {

	@GetMapping("/map")
	public String mainMap() {
		return "/map/map";
	}

//	@GetMapping("/regist")
//	public String regist() {
//		return "map/regist";
//	}
}