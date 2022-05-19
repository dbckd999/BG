package study.projectBG.BG.service;

import java.util.List;

import study.projectBG.BG.model.Criteria;
import study.projectBG.BG.model.MapDTO;

//관리자가 화장실 정보를 운영할수있도록 만드는 인터페이스입니다.
public interface AdminRestroomService {
	//R 화장실 정보를 리스트로 뽑습니다. index: 페이징 번호, cMaxList: 페이징 시 보일 목록의 최대 갯수(c=count)
	public List<MapDTO> showRestroomList(int index, int cMaxList);
	
	public List<MapDTO> showRestroomList();
	//R 화장실 id에 해당하는 정보를 가져옵니다.
	public MapDTO showARestroom(int id);
	//C 새로운 화장실을 생성합니다.
	public int insertRestroom();
	//U 화장실 정보를 최신화합니다.
	public void updateRestroom(MapDTO dto);
	//D 화장실 삭제합니다.
	public int deleteRestroom(int id);
	
	public List<MapDTO> getListPaging(Criteria cri);
	
	public int getTotal();

	public MapDTO adminRestroom(String id);
	/*
	 * insert, update, delete는 성공/실패 시 반환하는 값이 있습니다.
	 * service구현 시 
	 * 참고 URL
	 * https://duriepark.tistory.com/entry/MyBatis-와-iBATIS-성공시-리턴값
	 * */
}