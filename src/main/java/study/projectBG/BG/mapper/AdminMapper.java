package study.projectBG.BG.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import study.projectBG.BG.model.MemberDTO;

@Mapper
public interface AdminMapper {

	List<MemberDTO> memberList();

	void adminDelete(String user_no);

	void userDelete(String user_id);
	
	
}
