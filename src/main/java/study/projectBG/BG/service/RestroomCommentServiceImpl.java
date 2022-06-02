package study.projectBG.BG.service;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;
import study.projectBG.BG.mapper.RestroomCommentMapper;
import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.model.RestroomCommentDTO;

@Service
@Slf4j
public class RestroomCommentServiceImpl implements RestroomCommentService{

	@Autowired
	RestroomCommentMapper mapper;
	
	//Logger log = Logger.getGlobal();
	
	public RestroomCommentServiceImpl() {
		//log.setLevel(Level.INFO);
	}
	
	@Override
	public List<RestroomCommentDTO> getAllComment() {
		return mapper.getAllComment();
	}

	@Override
	public List<RestroomCommentDTO> getARestroomComment(int c_restroom_no) {
		return mapper.getARestroomComment(c_restroom_no);
	}

	@Override
	public int insertComment(RestroomCommentDTO dto) {
		int insertRes = -999;
		try {
			insertRes = mapper.insertComment(dto);
		}catch(Exception e) {
			//http://www.gisdeveloper.co.kr/?p=5174
			log.info("insert fail dto: " + dto);
			e.printStackTrace();
			insertRes = -1;
		}
		return insertRes;
	}

	@Override
	public int modifyComment(RestroomCommentDTO dto) {
		int modifyRes = mapper.modifyComment(dto);
		return modifyRes;
	}

	@Override
	public int deleteComment(int c_no) {
		int deleteRes = mapper.deleteComment(c_no); 
		return deleteRes;
	}

	@Override
	public List<RestroomCommentDTO> getListPaging(Criteria cri) {
		 return mapper.getListPaging(cri);
	}

}