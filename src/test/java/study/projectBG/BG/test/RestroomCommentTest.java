package study.projectBG.BG.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import study.projectBG.BG.mapper.RestroomCommentMapper;
import study.projectBG.BG.model.RestroomCommentDTO;
import study.projectBG.BG.service.RestroomCommentServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class RestroomCommentTest {

	@Autowired
	private RestroomCommentMapper mapper;
	
	@Autowired
	private RestroomCommentServiceImpl service;
	
	//@Test
	public void cInsertTest() {
		RestroomCommentDTO dto = new RestroomCommentDTO();
		dto.setC_restroom_no(5);
		dto.setC_user_no(11);
		dto.setC_comment("test1");
		service.insertComment(dto);
	}
	
	@Test
	public void cAll() {
		List<RestroomCommentDTO> list = service.getAllComment();
		for(RestroomCommentDTO dto : list) {
			log.info(dto);
		}
	}
}
