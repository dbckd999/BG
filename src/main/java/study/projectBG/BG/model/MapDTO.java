package study.projectBG.BG.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import lombok.Data;

@Data
public class MapDTO {
	private int id;
	private String category;						
	private String restroom_name;				
	private String address_load;						
	private String address_location;					
	private boolean is_public_gender;			
	private int c_man_closet;					
	private int c_man_urinal;					
	private int c_man_disable_person_closet;	
	private int c_man_disable_person_urinal;	
	private int c_man_child_closet;			
	private int c_man_child_urinal;			
	private int c_woman_closet;				
	private int c_woman_disable_person_urinal;	
	private int c_woman_child_closet;			
	private String manage_group_name;					
	private int call_number;								
	private String open_day_info;			
	private Timestamp opening_time;			
	private Timestamp closing_time;			
	private String installation_date;			
	private BigDecimal wgs84_latitude;		
	private BigDecimal wgs84_longitude;		
	private String owner_name_group; 			
	private String installation_details; 	
	private String sewage_care_processing;		
	private boolean have_emergency_bell;
	private String emergency_bell_location;		
	private boolean have_entrance_cctv;	
	private boolean have_diaper_switchboard; 
	private String diaper_switchboard_location;
	private String remodeling_date;				
	private Date db_update_date;
}
