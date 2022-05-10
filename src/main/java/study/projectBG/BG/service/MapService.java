package study.projectBG.BG.service;

import java.math.BigDecimal;
import java.util.List;

import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.model.SimpleRestroomDTO;

public interface MapService {	//south, north, west, east
	public List<SimpleRestroomDTO> callPins(BigDecimal south, BigDecimal north, BigDecimal west, BigDecimal east);
	List<MapDTO> markerShow();
}
