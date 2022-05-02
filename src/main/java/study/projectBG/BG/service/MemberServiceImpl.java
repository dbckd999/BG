package study.projectBG.BG.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import study.projectBG.BG.mapper.MemberMapper;
import study.projectBG.BG.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;

	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	@Override
	public void memberInsert(MemberDTO dto) {
		dto.setU_pw(pwEncoder.encode(dto.getU_pw()));

		mapper.memberInsert(dto);

	}

}
