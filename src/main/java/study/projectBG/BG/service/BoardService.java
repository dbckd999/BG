package study.projectBG.BG.service;

import java.util.List;

import study.projectBG.BG.model.BoardDTO;
import study.projectBG.BG.model.Criteria;

public interface BoardService {

	void boardInsert(BoardDTO dto);

	List<BoardDTO> boardList();
 
	 public List<BoardDTO> getListPaging(Criteria cri);

	 /* 게시판 총 갯수 */
	    public int getTotal();
}
