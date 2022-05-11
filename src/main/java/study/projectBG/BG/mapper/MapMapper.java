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
	//간략한 정보를 가져옵니다(핀 포인트 테스트 용도)
	public List<SimpleRestroomDTO> callPins(@Param("south")BigDecimal south, @Param("north")BigDecimal north, @Param("west")BigDecimal west, @Param("east")BigDecimal east);
	//실 프로젝트에 쓰일 데이터를 가져옵니다.
	public List<Restroom_SampleDTO> callPins2(@Param("south")BigDecimal south, @Param("north")BigDecimal north, @Param("west")BigDecimal west, @Param("east")BigDecimal east);
	//전체 데이터를 가져옵니다.
	List<MapDTO> markerShow();
	
	//현 위치에서 가장 가까운 위치를 쿼리
	public int shortestByMe(@Param("latitude")BigDecimal latitude, @Param("longitude")BigDecimal longitude); 
}

