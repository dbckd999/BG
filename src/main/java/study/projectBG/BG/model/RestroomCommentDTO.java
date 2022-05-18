package study.projectBG.BG.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class RestroomCommentDTO {
	private int c_no; 			//댓글고유번호
	private int c_restroom_no;	//화장실 고유번호
	private int c_user_no;		//유저 고유번호
	private String c_id;		//유저 아이디
	private String c_comment;	//댓글
	private Timestamp c_reg_date;		//댓글 등록일
	private Timestamp c_last_reg_date;	//댓글 수정일
}
