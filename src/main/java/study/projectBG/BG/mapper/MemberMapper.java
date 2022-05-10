package study.projectBG.BG.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import study.projectBG.BG.model.MemberDTO;

@Mapper
public interface MemberMapper {
	public void memberInsert(MemberDTO dto);
	public int check_id(String user_id);
	public int check_nick(String user_nick);
	public int check_email(String user_email); 
	public List<MemberDTO> login(MemberDTO dto);
	public String getRealPassword(String user_id);
	public MemberDTO memberRead(String user_id);
	public void memberUpdate(MemberDTO dto);
	public void memberDelete(String user_id);


}