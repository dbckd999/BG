package study.projectBG.BG.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import study.projectBG.BG.mapper.AdminRestroomMapper;
import study.projectBG.BG.mapper.BoardMapper;
import study.projectBG.BG.model.MapDTO;

//관리자가 화장실 정보를 운영할수있도록 만드는 인터페이스입니다.
public class AdminRestroomServiceImpl implements AdminRestroomService {

	@Autowired
	private AdminRestroomMapper mapper;
	
	@Override
	public List<MapDTO> showRestroomList(int index, int cMaxList) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MapDTO showARestroom(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertRestroom() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MapDTO updateRestroom(String id) {
		mapper.updateRestroom(id);
	}

	@Override
	public int deleteRestroom(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
}