package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IGroupSetupDAO
{
	// 그룹원 조회
	public ArrayList<GroupDTO> groupSetupList(String memCode);
	
	// 팀명 조회
	public ArrayList<OpenProjectDTO> groupTeamName(String memCode);
	
	// 팀명을 수정하기 위해 code검색
	public OpenProjectDTO GroupTeamNamesearchId(String memCode);
	
	// 팀명수정
	public int groupTeamNamemodify(@Param("teamName") String teamName, @Param("memCode") String memCode);

}