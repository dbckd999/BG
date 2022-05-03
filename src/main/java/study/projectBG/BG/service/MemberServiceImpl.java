package study.projectBG.BG.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.projectBG.BG.mapper.MemberMapper;
import study.projectBG.BG.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;

//	@Autowired
//	private BCryptPasswordEncoder pwEncoder ;

	@Override
	public void memberInsert(MemberDTO dto) {
		mapper.memberInsert(dto);
	}

	@Override
	public int check_id(String user_id) {
		System.out.println("inner ServiceImpl");
		return mapper.check_id(user_id);
	}

	@Override
	public int check_nick(String user_nick) {
		return mapper.check_nick(user_nick);
	}
	@Override
	public MemberDTO login(MemberDTO dto) {
//		String resultPW = mapper.getRealPassword(dto.getUser_id());
//		System.out.println("resultPW 값 : " + resultPW);
//		boolean loginFilter = pwEncoder.matches(dto.getUser_pw(), resultPW);
//		System.out.println(loginFilter);
//		
//		if(loginFilter) {
//			return "Success";
//		} else {
//			return "Fail";
//		}
		return mapper.login(dto);
	}
}