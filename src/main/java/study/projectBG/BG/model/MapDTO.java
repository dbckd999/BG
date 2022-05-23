package study.projectBG.BG.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class MapDTO {
	private int id; //primary key
	private String category;  // 화장실 종류
	private String restroom_name; // 화장실명
	private String address_load; // 소재지 도로명 주소
	private String address_location; // 소재지 지번 주소
	private boolean is_public_gender; // 남녀공용화장실여부
	private int c_man_closet; // 남성용-대변기수
	private int c_man_urinal; // 남성용-소변기수
	private int c_man_disable_person_closet; //남성용-장애인용대변기수
	private int c_man_disable_person_urinal; //남성용-장애인용소변기수
	private int c_man_child_closet; //남성용-어린이용대변기수
	private int c_man_child_urinal; //남성용-어린이용소변기수
	private int c_woman_closet; //여성용-대변기수
	private int c_woman_disable_person_urinal; //여성용-장애인용대변기수
	private int c_woman_child_closet; //여성용-어린이용대변기수
	private String manage_group_name; //관리기관명
	private int call_number; //전화번호: "-"미포함으로 저장합니다.
	private String open_day_info; //개방 요일
	private String opening_time; //개방시간
	private String closing_time; //폐쇄시간
	private String installation_date; // 설치연월
	private BigDecimal wgs84_latitude; // WGS84위도 (WGS84는 좌표계 중 하나). 소수점 8자리 가로
	private BigDecimal wgs84_longitude; // WGS84경도 세로
	private String owner_name_group; // 화장실소유구분: 소유 단체 혹은 개인.
	private String installation_details; //화장실설치장소유형: 설치 된 장소 간략설명.
	private String sewage_care_processing; // 오물처리방식: 수거식=푸세식.
	private boolean have_emergency_bell; // 비상벨설치여부: 위용위용
	private String emergency_bell_location; // 비상벨설치장소
	private boolean have_entrance_cctv; // 화장실입구CCTV설치유무
	private boolean have_diaper_switchboard; // 기저귀교환대유무
	private String diaper_switchboard_location; //기저귀교환대장소: 있다면 써 넣을곳.
	private String remodeling_date; //리모델링연월
	private String db_update_date; //데이터기준일자: 공공데이터포털에서 추가된 날짜
}
