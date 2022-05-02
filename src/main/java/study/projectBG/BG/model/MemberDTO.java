package study.projectBG.BG.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberDTO {
	private int u_no;
	private String u_id;
	private String u_pw;
	private String u_Rpw;
	private String u_email;
	private String u_addr;
	private Timestamp u_regDate;
}
