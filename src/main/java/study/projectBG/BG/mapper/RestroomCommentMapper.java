package study.projectBG.BG.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import study.projectBG.BG.model.RestroomCommentDTO;

@Mapper
public interface RestroomCommentMapper {
	//전체 댓글을 가져옵니다.
	public List<RestroomCommentDTO> getAllComment(); 
	//화장실에 해당하는 전체 댓글을 가져옵니다.
	public List<RestroomCommentDTO> getARestroomComment(int c_restroom_no);
	//댓글을 등록합니다.
	public int insertComment(RestroomCommentDTO dto);
	//댓글을 수정합니다.
	public int modifyComment(RestroomCommentDTO dto);
	//댓글을 삭제합니다.
	public int deleteComment(int c_no);
}