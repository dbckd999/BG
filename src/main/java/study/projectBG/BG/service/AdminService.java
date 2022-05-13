package study.projectBG.BG.service;

import java.util.List;

import study.projectBG.BG.model.MemberDTO;

public interface AdminService {

	List<MemberDTO> memberList();

	 void adminDelete(String user_no) ;

	void userDelete(String user_id);
	
		

	
}
