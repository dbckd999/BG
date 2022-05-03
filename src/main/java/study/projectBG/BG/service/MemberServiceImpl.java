package study.projectBG.BG.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import study.projectBG.BG.mapper.MemberMapper;
import study.projectBG.BG.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
	
//	@Autowired
//	private BCryptPasswordEncoder pwEncoder ;
	
	@Override
	
	public String login(MemberDTO dto) {

		
		return mapper.login(dto);
		
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
		
	
	}
}
