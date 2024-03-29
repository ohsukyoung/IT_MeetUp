package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IOpenProjectDAO
{
	// 현재 생성된 프로젝트 출력
	public ArrayList<OpenProjectDTO> openList(@Param("startPage") int startPage, @Param("endPage") int endPage);
	
	// 마감 임박 프로젝트 출력 
	public ArrayList<OpenProjectDTO> deadlineList();
	
	// 프로젝트 카테고리 출력
	public ArrayList<String> cateList();
	
	// 시군구 출력 
	public ArrayList<String> sidoList();
	public ArrayList<String> siggList();
	
	// 커리어 출력
	public ArrayList<String> carList();
	
	// 사용자가 누른  프로젝트 출력
	public OpenProjectDTO choiceProList(String code);

	// 프로젝트의 해당하는 희망 기술 뽑기
	public ArrayList<String> skillList(String code);
	public ArrayList<String> skillList2(String code);
	
	// 프로젝트 조회수 증가 
	public int viewUpdate(String code);
	
	// 현재 진행중인 프로젝트 개수 
	public int countProject();
	
	// 필터 프로젝트 개수 
	public int countFilter(OpenProjectDTO dto);
	
	// 가장 최근 프로젝트 코드 뽑기 
	public String lastCode();
	
	// 찜 추가
	public int addWish(OpenProjectDTO dto);
	
	// 찜 제거
	public int removeWish(OpenProjectDTO dto);
	
	// 사용자 찜 목록
	public ArrayList<String> wishList(String memCode);
	
	// 프로젝트 필터 리스트
	public ArrayList<OpenProjectDTO>filterList( @Param("dto")OpenProjectDTO dto, @Param("startPage") int startPage, @Param("endPage") int endPage);
	
	// 회원이 프로젝트를 개설했는지 안해는지  
	public int ingCount(String memCode);
	
}


