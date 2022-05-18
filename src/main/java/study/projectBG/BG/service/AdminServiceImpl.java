package study.projectBG.BG.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.projectBG.BG.mapper.AdminMapper;
import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.MemberDTO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper mapper;

	@Override
	public List<MemberDTO> memberList() {
		List<MemberDTO> list = mapper.memberList(); 
		System.out.println(list);
		return list;
		
	}

	@Override
	public void adminDelete(String user_no) {
	  mapper.adminDelete(user_no);
		
	}

	@Override
	public void userDelete(String user_id) {

		mapper.userDelete(user_id);
		
	}

	@Override
	public List<MemberDTO> getListPaging(Criteria cri) {
		   return mapper.getListPaging(cri);
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return mapper.getTotal();
	}

	
	
}

	




