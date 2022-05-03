package study.projectBG.BG.mapper;

import org.apache.ibatis.annotations.Mapper;

import study.projectBG.BG.model.MemberDTO;

@Mapper
public interface MemberMapper {

	public MemberDTO login(MemberDTO dto);

//	public String getRealPassword(String user_id);
	
	
	
	
}
