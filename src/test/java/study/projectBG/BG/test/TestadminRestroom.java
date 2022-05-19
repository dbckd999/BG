package study.projectBG.BG.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import study.projectBG.BG.model.MapDTO;
import study.projectBG.BG.service.AdminRestroomService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestadminRestroom {

	@Autowired
	AdminRestroomService adminRestroomService;
	
	/*
	 * @Test public void test() { MapDTO dto = new MapDTO();
	 * dto.setCategory("dfdfd"); dto.setDb_update_date("2022-10-10");
	 * dto.setRestroom_name("dfdf"); dto.setAddress_load("dfdfdf");
	 * dto.setAddress_location("ddd"); dto.set_public_gender(false);
	 * dto.setC_man_closet(0); dto.setC_man_urinal(null);
	 * dto.setC_man_disable_person_closet(null);
	 * dto.setC_man_disable_person_urinal(null); dto.setC_man_child_closet(null);
	 * dto.setC_man_child_urinal(null); dto.setC_woman_closet(null);
	 * dto.setC_woman_disable_person_urinal(null);
	 * dto.setC_woman_child_closet(null); dto.setManage_group_name(null);
	 * dto.setCall_number(null); dto.setOpen_day_info(null);
	 * dto.setOpening_time(null); dto.setClosing_time(null);
	 * dto.setInstallation_date(null); dto.setWgs84_latitude(null);
	 * dto.setWgs84_longitude(null); dto.setOwner_name_group(null);
	 * dto.setInstallation_details(null); dto.setSewage_care_processing(null);
	 * dto.setHave_emergency_bell(null); dto.setEmergency_bell_location(null);
	 * dto.setHave_entrance_cctv(null); dto.setHave_diaper_switchboard(null);
	 * dto.setDiaper_switchboard_location(null); dto.setRemodeling_date(null);
	 * adminRestroomService.restroomInsert(dto); }
	 */
	
}
