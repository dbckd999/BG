package study.projectBG.BG.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.model.RestroomCommentDTO;

@Mapper
public interface AdminRestroomMapper {
	//R 화장실 정보를 리스트로 뽑습니다. index: 페이징 번호, cMaxList: 페이징 시 보일 목록의 최대 갯수(c=count)
	public List<MapDTO> showRestroomList(int index, int cMaxList);
	//R 화장실 id에 해당하는 정보를 가져옵니다.
	public MapDTO showARestroom(int id);
	//C 새로운 화장실을 생성합니다.
	public int insertRestroom();
	//U 화장실 정보를 최신화합니다.
	public void updateRestroom(String id);
	//D 화장실 삭제합니다.
	public int deleteRestroom(int id);
	
	
	/*
	 * insert, update, delete는 성공/실패 시 반환하는 값이 있습니다.
	 * service구현 시 
	 * 참고 URL
	 * https://duriepark.tistory.com/entry/MyBatis-와-iBATIS-성공시-리턴값
	 * */
}