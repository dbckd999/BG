package study.projectBG.BG.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import study.projectBG.BG.model.BoardDTO;
import study.projectBG.BG.model.Criteria;

@Mapper
public interface BoardMapper {

	  // 게시물 등록
	void boardInsert(BoardDTO dto);

	
	//게시물 목록
	List<BoardDTO> boardList();
	
	//게시물 페이지 
public List<BoardDTO> getListPaging(Criteria cri);
	
/* 게시판 총 갯수 */
public int getTotal(Criteria cri);

/* 게시물 상세보기 */

	
	void boardDelete(String b_no);

	public BoardDTO boardRead(String b_no);


	void boardUpdate(BoardDTO dto); 



}