package study.projectBG.BG.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.projectBG.BG.mapper.AdminMapper;
import study.projectBG.BG.model.MemberDTO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper mapper;

	@Override
	public List<MemberDTO> memberList() {
		return mapper.memberList();
		
	}

	@Override
	public void adminDelete(String user_no) {
	  mapper.adminDelete(user_no);
		
	}

	
	
}

	




