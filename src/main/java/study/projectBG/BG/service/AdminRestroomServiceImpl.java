package study.projectBG.BG.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.projectBG.BG.mapper.AdminRestroomMapper;
import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.MapDTO;

//관리자가 화장실 정보를 운영할수있도록 만드는 인터페이스입니다.
@Service
public class AdminRestroomServiceImpl implements AdminRestroomService {

	@Autowired
	private AdminRestroomMapper mapper;
	
	@Override
	public List<MapDTO> showRestroomList(int index, int cMaxList) {
		
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
	public void updateRestroom(MapDTO dto) {
		mapper.updateRestroom(dto);
	}

	@Override
	public int deleteRestroom(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MapDTO> showRestroomList() {
		List<MapDTO> list = mapper.showRestroomList();
		return list;
	}

	@Override
	public List<MapDTO> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
	      return mapper.getListPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotal(cri);
	}

	@Override
	public MapDTO adminRestroom(String id) {
		return mapper.adminRestroom(id);
	}
	
	@Override
	public void restroomInsert(MapDTO dto) {
		mapper.restroomInsert(dto);
		
	}

	@Override
	public void restroomDelete(int id) {
		mapper.restroomDelete(id);
	}
}