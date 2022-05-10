package study.projectBG.BG.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.service.MapService;

@Controller
public class MapController {
	@Autowired
	private MapService mapService; 

	@GetMapping("/map")
	public String mainMap() {
		return "/map/map";
	}
	
	@PostMapping("/markerShow")
	@ResponseBody
	public List<MapDTO> markerShow() {
		List<MapDTO> list = mapService.markerShow();
		System.out.println("list 값 확인 : " + list.toString());
		
		return list;
	}

}