package study.projectBG.BG.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberDTO {
	private int user_no;
	private String user_nick;
	private String user_id;
	private String user_pw;
	private String user_Rpw;
	private String user_email;
	private String user_addr;
	private Timestamp user_regDate;
}
