package study.projectBG.BG.model;

import java.math.BigDecimal;

import lombok.Data;

@Data
public class SimpleRestroomDTO {
	private int id;
	private String name;
	private BigDecimal wgs84_latitude;	//위도
	private BigDecimal wgs84_longitude;	//경도
	//private BigDecimal loc;			//현위치부터의 거리
}
