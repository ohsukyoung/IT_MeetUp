package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IAssignmentListDAO
{
	public ArrayList<AssignmentDTO> assignmentList(String opCode);
	public ArrayList<AssignmentDTO> assScheduleList();
	public ArrayList<AssignmentDTO> assOutputList();
	public ArrayList<AssignmentDTO> searchOutputList(String ssCode);
	public String searchOpCode(String memCode);
	public String searchPcCode(String memCode);
	public String searchLeaveLeader(String leaderPcCode);
	public String searchLeaderMemCode(String lederOpCode);
	public String searchLeaderPcCode(String leaderMemCode);
	public String searchChangeLeaderMemCode(String opCode);
	public String searchChangeLeaderPcCode(String opCode);
	public int searchSdNo(@Param("opCode") String opCode, @Param("ssCode") String ssCode);
	public int insertAssignment(AssignmentDTO dto);
	public int removeAssignment(AssignmentDTO dto);
	
}
