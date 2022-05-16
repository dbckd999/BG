package study.projectBG.BG.test;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import study.projectBG.BG.mapper.MapMapper;
import study.projectBG.BG.mapper.MemberMapper;
import study.projectBG.BG.model.MemberDTO;
import study.projectBG.BG.model.Restroom_SampleDTO;
import study.projectBG.BG.model.SimpleRestroomDTO;
import study.projectBG.BG.service.MemberService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MapMapperTest {

	@Autowired
	private MapMapper mapper;
	
	//@Autowired
	//private MemberService memberService;
	
	//@Test
	public void mapTest() {
		List<SimpleRestroomDTO> list = mapper.callPins(new BigDecimal(35.857491811695375), new BigDecimal(35.86503042481595), new BigDecimal(128.5502099990845), new BigDecimal(128.56179714202884));
	}
//	@Test
	public void mapTest2() {
		List<Restroom_SampleDTO> list2 = mapper.callPins2(new BigDecimal(35.857491811695375), new BigDecimal(35.86503042481595), new BigDecimal(128.5502099990845), new BigDecimal(128.56179714202884));
		log.info(list2);
	}
	
	/*
	 * @Test public void shorestTest() { int res = mapper.shortestByMe(new
	 * BigDecimal(35.86121690020703), new BigDecimal(128.55605569999997));
	 * log.info("res: " + res); }
	 */
}
