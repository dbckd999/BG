package study.projectBG.BG.model;

import lombok.Data;
//!!!!!!!!!사용금지!!!!!!!!!!망가졌음!!!!!!!!!!!!!!!!!!
@Data
public class SimpleRestroomDTO {
	private int c_no; //댓글고유번호
	private String c_id;	//유저 아이디
	private int c_content_no;	//화장실 고유번호
	private String c_comment;	//댓글
}