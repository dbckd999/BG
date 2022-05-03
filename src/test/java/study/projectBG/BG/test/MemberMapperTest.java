package study.projectBG.BG.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import study.projectBG.BG.mapper.MemberMapper;
import study.projectBG.BG.model.MemberDTO;
import study.projectBG.BG.service.MemberService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class MemberMapperTest {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private MemberService memberService;
	
	@Test
	public void loginTest() {
		log.info("Login 시작");
		MemberDTO dto = new MemberDTO();
		dto.setUser_id("testID");
		dto.setUser_pw("testPW");
		log.info("dto 값 확인 : " + dto);
//		mapper.login(dto);
		memberService.login(dto);
		log.info("Login 끝");
		
	}
	
	
}
