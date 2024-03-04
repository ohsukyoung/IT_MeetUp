package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GroupHomeController
{
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;

	
	@RequestMapping(value = "/grouphome.action", method = RequestMethod.GET)
	public String weeklyReportList(ModelMap model)
	{
		IGroupHomeDAO dao = sqlSession.getMapper(IGroupHomeDAO.class);
			
		model.addAttribute("meetCount", dao.meetCount());
		model.addAttribute("planCount", dao.planCount());
		model.addAttribute("flowchartCount", dao.flowchartCount());
		model.addAttribute("requestCount", dao.requestCount());
		model.addAttribute("weeklyReportList", dao.weeklyReportList());
		model.addAttribute("groupHomePlan", dao.groupHomePlan());
		model.addAttribute("groupHomeDesign", dao.groupHomeDesign());
		model.addAttribute("groupHomeFront", dao.groupHomeFront());
		model.addAttribute("groupHomeBack", dao.groupHomeBack());
		model.addAttribute("progressPeriod", dao.progressPeriod());

		return "/Content/MeetGroup/GroupHome.jsp";
	}

}
