package study.projectBG.BG.controller;

import java.math.BigDecimal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseBody;

import study.projectBG.BG.model.SimpleRestroomDTO;
import study.projectBG.BG.model.MapDTO;
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
}