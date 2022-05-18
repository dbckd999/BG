package study.projectBG.BG.service;

import java.util.List;

import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.MemberDTO;

public interface AdminService {

	List<MemberDTO> memberList();

	 void adminDelete(String user_no) ;

	void userDelete(String user_id);
	
	public List<MemberDTO> getListPaging(Criteria cri);
	 /* 게시판 총 갯수 */
    public int getTotal();
	
}
