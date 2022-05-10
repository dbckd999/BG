package study.projectBG.BG.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import study.projectBG.BG.model.MapDTO;

@Mapper
public interface MapMapper {

	List<MapDTO> markerShow();



}
