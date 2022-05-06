package study.projectBG.BG.service;

import study.projectBG.BG.model.MemberDTO;

public interface MemberService {
	void memberInsert(MemberDTO dto);
	int check_id(String user_id);
	int check_nick(String user_nick);
	int check_email(String user_email);
	int login(MemberDTO dto);
	MemberDTO memberRead(String user_id);
	void memberUpdate(MemberDTO dto);
	void memberDelete(String user_id);


}
