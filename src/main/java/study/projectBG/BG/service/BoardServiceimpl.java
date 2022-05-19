package study.projectBG.BG.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.projectBG.BG.mapper.BoardMapper;
import study.projectBG.BG.model.BoardDTO;
import study.projectBG.BG.model.Criteria;

@Service
public class BoardServiceimpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	public void boardInsert(BoardDTO dto) {
		mapper.boardInsert(dto);
	}

	@Override
	public List<BoardDTO> boardList() {
	 List<BoardDTO> list = mapper.boardList();
		return list;
	}

	@Override
	public List<BoardDTO> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListPaging(cri);
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		 return mapper.getTotal();
	}

	@Override
	public BoardDTO boardRead(String b_no) {
		return mapper.boardRead(b_no);
	}

	@Override
	public void boardUpdate(BoardDTO dto) {
		// TODO Auto-generated method stub
		mapper.boardUpdate(dto);
		
	}

	@Override
	public void boardDelete(String b_no) {
		// TODO Auto-generated method stub
		
	}

	
	
}
