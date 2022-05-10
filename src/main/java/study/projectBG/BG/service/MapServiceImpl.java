package study.projectBG.BG.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.projectBG.BG.mapper.MapMapper;
import study.projectBG.BG.model.SimpleRestroomDTO;

@Service
public class MapServiceImpl implements MapService {

	@Autowired
	private MapMapper mapper;
	
	@Override
	public List<SimpleRestroomDTO> callPins(BigDecimal south, BigDecimal north, BigDecimal west, BigDecimal east) {
		List<SimpleRestroomDTO> list = mapper.callPins(south, north, west, east);
		return list;
	}
	
}
