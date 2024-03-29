package com.itmeetup.mybatis;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GroupSetupController
{
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;

	// 그룹원설정
	@RequestMapping(value = "/groupSetup.action", method = RequestMethod.GET)
	public String groupSetupList(ModelMap model, String memCode)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
		
		String opCode = dao.teamOpCode(memCode); // 회원의 개설요청 코드
		String pcCode = dao.teamPcCode(memCode); // 회원의 개설요청 코드
		String leaderMemCode = dao.leaderMemCode(opCode); // 방장의 회원코드
		String leaderPcCode = dao.leaderPcCode(leaderMemCode); // 방장의 참여확인코드
		String leavePcCode = dao.leaveLeader(leaderPcCode); // 이탈한 방장의 참여확인코드
		String changeLeaderMemCode = dao.changeLeaderMemCode(opCode); // 변경된 방장의 회원코드
		String changeLeaderPcCode = dao.changeLeaderPcCode(opCode); // 변경된 방장의 참여확인코드
		
		// 팀장 닉네임 출력
		model.addAttribute("groupLeaders", dao.groupLeaders(memCode));
		
		// 그룹원 리스트
		model.addAttribute("groupSetupList", dao.groupSetupList(memCode));
		
		// 그룹원 팀 이름
		model.addAttribute("groupTeamName", dao.groupTeamName(memCode));

		model.addAttribute("opCode", opCode);
		model.addAttribute("pcCode", pcCode);
		model.addAttribute("leaderMemCode", leaderMemCode);
		model.addAttribute("leaderPcCode", leaderPcCode);
		model.addAttribute("leavePcCode", leavePcCode);
		model.addAttribute("changeLeaderMemCode", changeLeaderMemCode);
		model.addAttribute("changeLeaderPcCode", changeLeaderPcCode);
		
		return "/Content/MeetGroup/GroupSetup.jsp";
	}
	
	// 팀명 수정을 위한 모달 컨트롤러
	@RequestMapping(value = "/groupSetupUpdate.action", method = RequestMethod.GET)
	public String GroupTeamNamesearchId(ModelMap model, String memCode)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);

		OpenProjectDTO opdto = new OpenProjectDTO();

		opdto = dao.GroupTeamNamesearchId(memCode);
		
		model.addAttribute("opdto", opdto);

		return "/Content/MeetGroup/M_GroupSetup.jsp";
	}
	
	// 팀명 수정
	@RequestMapping(value = "/groupteamnamemodify.action", method = RequestMethod.POST)
	public String groupTeamNamemodify(@Param("teamName") String teamName, @Param("opcode") String memCode)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
		dao.groupTeamNamemodify(teamName, memCode);
		return "redirect:/groupSetup.action?memCode=" + memCode;
	}
}
