package study.projectBG.BG.controller;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.model.Restroom_SampleDTO;
import study.projectBG.BG.model.SimpleRestroomDTO;
import study.projectBG.BG.service.MapService;

@Controller
public class MapController {
	
	@Autowired
	private MapService service;
	
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

	//db에서 핀에 찍을 데이터를 가져옵니다.
	@RequestMapping(value = "/showRestrooms", method = RequestMethod.POST)
	@ResponseBody
	public List<SimpleRestroomDTO> callPins(
			@Param("south") BigDecimal south,
			@Param("north") BigDecimal north,
			@Param("west") BigDecimal west,
			@Param("east") BigDecimal east
			){
		System.out.println(south + ", " + north + ", " + west + ", " + east);
		List<SimpleRestroomDTO> list = service.callPins(south, north, west, east);
		System.out.println(list);
		return list;
	}
	
	
	@RequestMapping(value = "/showRestrooms2", method = RequestMethod.POST)
	@ResponseBody
	public List<Restroom_SampleDTO> callPins2(
			@Param("south") BigDecimal south,
			@Param("north") BigDecimal north,
			@Param("west") BigDecimal west,
			@Param("east") BigDecimal east
			){
		//System.out.println(south + ", " + north + ", " + west + ", " + east);
		List<Restroom_SampleDTO> list = service.callPins2(south, north, west, east);
		for(Restroom_SampleDTO dto : list) {
			System.out.print(dto.getId() + ' ');
		}
		System.out.println();
		return list;
	}
	
	@PostMapping("/restroomRead")
	@ResponseBody
	public MapDTO restroomRead(@RequestParam("id") String id, Model model) {
		
		System.out.println("id 값 확인 : " + id);
		MapDTO dto = mapService.restroomRead(id);
		model.addAttribute("dto", dto);
		
		return dto;
		
	}
	
	
	@RequestMapping(value = "/shortestForMe", method = RequestMethod.POST)
	@ResponseBody
	public int shortestForMe(@Param("latitude") BigDecimal latitude, @Param("longitude") BigDecimal longitude){
		System.out.println(latitude + ", " + longitude);
		int id = service.shortestForMe(latitude, longitude);
		return id;
	}
	
}