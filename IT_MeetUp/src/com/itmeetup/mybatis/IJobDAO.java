package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IJobDAO
{
		
	// 사용자가 클릭한 프로젝트 역할별 인원수 및 직위 뽑기
	public ArrayList<JobDTO> jobList(String code);

	// 직위 이름, 코드 뽑기
	public ArrayList<JobDTO> jobs();
	

	
}
