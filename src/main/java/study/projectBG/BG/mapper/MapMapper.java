package study.projectBG.BG.mapper;

import java.math.BigDecimal;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.model.Restroom_SampleDTO;

import org.apache.ibatis.annotations.Param;
import study.projectBG.BG.model.SimpleRestroomDTO;

@Mapper
public interface MapMapper {
	public List<SimpleRestroomDTO> callPins(@Param("south")BigDecimal south, @Param("north")BigDecimal north, @Param("west")BigDecimal west, @Param("east")BigDecimal east);
	public List<Restroom_SampleDTO> callPins2(@Param("south")BigDecimal south, @Param("north")BigDecimal north, @Param("west")BigDecimal west, @Param("east")BigDecimal east);
	List<MapDTO> markerShow();
}

