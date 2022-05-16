package study.projectBG.BG.model;

import java.math.BigDecimal;
import java.sql.Time;
import lombok.Data;

@Data
public class Restroom_SampleDTO {
	private int id;
	private String restroom_name;
	private BigDecimal wgs84_latitude;
	private BigDecimal wgs84_longitude;
	private Time opening_time;
	private Time closing_time;
	private int c_man_closet;
	private int c_woman_closet;
	private String open_day_info;
}
