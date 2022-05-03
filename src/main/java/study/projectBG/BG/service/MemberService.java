package study.projectBG.BG.service;

import study.projectBG.BG.model.MemberDTO;

public interface MemberService {

	void memberInsert(MemberDTO dto);

	int check_id(String user_id);

	int check_nick(String user_nick);
}
