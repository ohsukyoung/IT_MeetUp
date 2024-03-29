<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Join</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<%-- <c:import url="../Components/Header.jsp"></c:import> --%>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<!-- <section class="m-body-area">
      <div class="container-xl"> -->

		<!-- 콘텐츠 내용 -->
		<div
			class="section register join min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div
						class="col-md-10 col-lg-6 d-flex flex-column align-items-center justify-content-center">
						<div class="d-flex justify-content-center py-4">
							<a class="navbar-brand logo-meetup d-none d-lg-block" href="home.action">IT-Meet<em>Up</em></a>
							<!-- <a href="index.jsp" class="logo d-flex align-items-center w-auto">
								<span class="d-none d-lg-block">IT-MeetUp</span>
							</a> -->
						</div>
						<!-- End Logo -->
						<div class="card mb-3 join-area">

							<div class="card-body">
								<div class="pt-4 pb-2">
									<div class="h3 card-title text-center pb-0">회원가입</div>
								</div>

								<!-- 회원가입 Swiper -->
								<form action="joininsert.action" name="joinForm01" method="get">
									<div class="swiper join-swiper">
										<!-- <div class="swiper-btn">
											<button type="button" class="swiper-button-prev">
												<i class="bi bi-arrow-left-circle"></i> <span class="blind">이전</span>
											</button>
											<button type="button" class="swiper-button-next">
												<i class="bi bi-arrow-right-circle"></i> <span class="blind">이후</span>
											</button>
										</div> -->
										<div class="swiper-pagination"></div>
										<div class="swiper-wrapper">
											<!-- 회원가입1 -->
											<div class="swiper-slide">
												<div class="row g-3 needs-validation">

													<div class="col-12">
														<div class="m-input-box">
															<label for="piName" class="form-label h5">이름</label> <input type="text" class="form-control" value="" id="piName" name="piName" required="required">
															<div class="invalid-feedback">이름을 입력해주세요.</div>
														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<label for="piId" class="form-label h5">아이디</label>
															<div class="row col-12">
																<div class="col-12 col-md-7">
																	<input type="text" class="form-control" value="" id="piId" name="piId" required="required">
																	<div class="invalid-feedback">아이디를 입력해주세요.</div>
																</div>
																<div class="col-12 col-md-5">
																	<button class="btn btn-primary w-100" type="button" id="checkId">중복확인</button>
																</div>
															</div>
														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<label for="piPw" class="form-label h5">비밀번호</label> <input type="password" class="form-control" value="" id="piPw" name="piPw" required="required">
															<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<label for="joinPwCheck01" class="form-label h5">비밀번호 확인</label> <input type="password" class="form-control" value="" id="joinPwCheck01" required="required">
															<div class="invalid-feedback">비밀번호 확인값을 입력해주세요.</div>
														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<input type="hidden" id="piEmail" name="piEmail" value=""> <label for="joinEmail1" class="form-label h5">이메일</label>
															<div class="row col-12">
																<div class="col-12 col-md-7">
																	<input type="text" class="form-control" value="" id="joinEmail1" required="required">
																	<div class="invalid-feedback">이메일을 입력해주세요.</div>
																</div>
																<div class="col-12 col-md-5">
																	<div class="m-select">
																		<select class="form-select" aria-label="Default select example" title="email" id="joinEmail2">
																			<option>-선택-</option>
																			<option value="@naver.com" selected="selected">@naver.com</option>
																			<option value="@gmail.com">@gmail.com</option>
																			<option value="@daum.net">@daum.net</option>
																		</select>
																	</div>
																</div>
															</div>

														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<label for="piNickname" class="form-label h5">닉네임</label>
															<div class="row col-12">
																<div class="col-12 col-md-7">
																	<input type="text" class="form-control" value="" id="piNickname" name="piNickname" required="required">
																	<div class="invalid-feedback">닉네임을 입력해주세요.</div>
																</div>
																<div class="col-12 col-md-5">
																	<button class="btn btn-primary w-100" type="button" id="checkNickname">중복확인</button>
																</div>
															</div>

														</div>
													</div>

													<div class="col-12">
														<button class="btn btn-primary w-100 join-step01" type="button">다음단계</button>
													</div>
												</div>
											</div>
											<!-- //회원가입1 -->
											<!-- 회원가입2 -->
											<div class="swiper-slide">
												<div class="row g-3 needs-validation">

													<div class="col-12">
														<div class="m-input-box">
															<label for="selectJoinJob" class="form-label h5">직무</label>
															<div class="row col-12">
																<div class="col-4">
																	<div class="m-select">
																		<select class="form-select" aria-label="Default select example" title="selectJoinJob" id="mJobCode" name="mJobCode">
																			<option>-선택-</option>
																			<c:forEach var="jobItem" items="${jobs}">
																				<option value="${jobItem.jobCode }">${jobItem.jobName }</option>
																			</c:forEach>
																		</select>
																	</div>
																	<div class="invalid-feedback">직무를 입력해주세요.</div>
																</div>
															</div>
														</div>
													</div>

													<div class="col-12">
														<div class="row">
															<div class="col-6">
																<div class="form-label label-tit h5">경력</div>
															</div>
															<div class="col-6 btn-more-box">
																<button class="btn btn-primary w-100 btn-more-one add" type="button" title="경력 추가" onclick="btnCareer(this,'addbtn');">
																	추가 <i class="bi bi-plus-circle-dotted"></i>
																</button>
																<button disabled="disabled" class="btn btn-secondary w-100 btn-more-one remove" type="button" title="경력 삭제" onclick="btnCareer(this,'removebtn');">
																	삭제 <i class="bi bi-dash-circle-dotted"></i>
																</button>
															</div>
														</div>
														<ul class="career-col-box">
															<li>
																<% int carrboxNumStr = 0; %>
																<div class="row col-12">
																	<div class="col-6">
																		<div class="m-input-box">
																			<label for="selectJoinCareer" class="form-label">경력직무</label>
																			<div class="m-select">
																				<select class="form-select" aria-label="Default select example" title="selectJoinCareer" name="jobNames" id="jobName_<%=carrboxNumStr %>">
																					<option>-선택-</option>
																					<c:forEach var="jobItem" items="${jobs}">
																						<option value="${jobItem.jobCode }">${jobItem.jobName }</option>
																					</c:forEach>
																				</select>
																			</div>
																			<div class="invalid-feedback">아이디를 입력해주세요.</div>
																		</div>
																	</div>
																	<div class="col-6">
																		<label for="comNames" class="form-label">회사명</label>
																		<input type="text" class="form-control join-comName" name="comNames" id="comName_<%=carrboxNumStr %>">
																	</div>
																</div>
																<div class="row range-datepicker02">
																	<div class="col-6 m-input-cal">
																		<label for="job-date-from" class="form-label">시작날짜</label> <input type="text" class="form-control job-date-from" value="2024-02-02" name="startDates" id="startDate_<%=carrboxNumStr %>">
																	</div>
																	<div class="col-6 m-input-cal">
																		<label for="job-date-to" class="form-label">종료날짜</label> <input type="text" class="form-control job-date-to" value="2024-02-28" name="endDates" id="endDate_<%=carrboxNumStr %>">
																	</div>
																</div>
															</li>
														</ul>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<label for="jobArea01" class="form-label h5">활동지역</label>
															<div class="row col-12">
																<div class="col-6">
																	<div class="m-select">
																		<select class="form-select" aria-label="Default select example" id="jobArea01" title="jobArea01">
																			<option selected="selected">-선택-</option>
																			<c:forEach var="sidoList" items="${sidoList }" varStatus="status">
																				<option value="SIDO_${status.index +1}">${sidoList }</option>
																			</c:forEach>
																			<!-- 
																			<option value="SIGG_1" selected="selected">서울</option>
																			<option value="SIGG_2">경기도</option>
																			<option value="SIGG_3">인천</option>
																			<option value="SIGG_4">부산</option>
																			 -->
																		</select>
																	</div>
																	<div class="invalid-feedback">선호지역1을(를) 입력해주세요.</div>
																</div>
																<div class="col-6">
																	<div class="m-select">
																		<select class="form-select" aria-label="Default select example" id="mSiggCode" name="mSiggCode" title="jobArea02">
																			<option selected="selected">-선택-</option>
																			<c:forEach var="siggList" items="${siggList }" varStatus="status">
																				<option value="SIGG_${status.index +1}">${siggList }</option>
																			</c:forEach>
																			<!-- 
																			<option value="SIGG_1" selected="selected">마포구</option>
																			<option value="SIGG_2">중구</option>
																			<option value="SIGG_3">강서구</option>
																			<option value="SIGG_4">수원시 영통구</option>
 																			-->
																		</select>
																	</div>
																	<div class="invalid-feedback">선호지역2을(를) 입력해주세요.</div>
																</div>
															</div>
														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<label for="joinMeet" class="form-label h5">모임방식</label>
															<div class="row col-12">
																<div class="btn-group" role="group" aria-label="Basic radio toggle button group">

																	<c:forEach var="meetItem" items="${meets }" varStatus="status">
																		<input type="radio" class="btn-check" name="mMetCode" id="joinMeet${status.index + 1}" autocomplete="off" value="${meetItem.meetCode }" <c:if test="${status.index == 0}">checked="checked"</c:if>>
																		<label class="btn btn-outline-primary" for="joinMeet${status.index + 1}">${meetItem.meetName }</label>
																	</c:forEach>

																</div>
																<div class="invalid-feedback">비밀번호 확인값을 입력해주세요.</div>
															</div>
														</div>
													</div>

													<div class="col-12">
														<button class="btn btn-primary w-100 join-step02" type="button">다음단계</button>
													</div>
												</div>
											</div>
											<!-- //회원가입2 -->
											<!-- 회원가입3 -->
											<div class="swiper-slide">
												<div class="row g-3 needs-validation">
													<!-- 보유기술 -->
													<div id="item-2-3" class="col-12">
														<p class="h5">보유기술</p>
														<div class="skill-box">
															<nav>
																<!-- <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
																	<button class="nav-link active" id="nav-skill1-tab" data-bs-toggle="tab" data-bs-target="#nav-skill1" type="button" role="tab"
																		aria-controls="nav-skill1" aria-selected="true">프론트</button>
																	<button class="nav-link" id="nav-skill2-tab " data-bs-toggle="tab" data-bs-target="#nav-skill2" type="button" role="tab"
																		aria-controls="nav-skill2" aria-selected="false">백엔드</button>
																	<button class="nav-link" id="nav-skill3-tab" data-bs-toggle="tab" data-bs-target="#nav-skill3" type="button" role="tab"
																		aria-controls="nav-skill3" aria-selected="false">기획, 디자인, 개발툴</button>
																</div> -->

																<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
																	<c:forEach var="skill" items="${skillCategorys}" varStatus="status">
																		<button class="nav-link <c:if test="${status.index == 0}">active</c:if>" id="nav-skill${status.index + 1}-tab" data-bs-toggle="tab" data-bs-target="#nav-skill${status.index + 1}" type="button" role="tab" aria-controls="nav-skill${status.index + 1}" aria-selected="true" value="${skill.scCode}">${skill.scName}</button>
																	</c:forEach>
																</div>

															</nav>
															<div class="tab-content" id="nav-tabContent">
																<div class="tab-pane fade show active" id="nav-skill1" role="skill1" aria-labelledby="nav-skill1-tab">
																	<ul class="skill-check">
																		<c:forEach var="skillItem" items="${skills }" varStatus="status">

																			<c:if test="${skillItem.skScCode == 'SC_1' }">
																				<li>
																					<div class="form-check skill-item 
																						<c:forEach var="entry" items="${skProcessors}">
																							<c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
																						<input class="form-check-input skill" type="checkbox" name="hopeskills" value="${skillItem.skCode }" id="${status.index +1}" name="skillCheck"> <label class="form-check-label"> ${skillItem.skName } </label>
																					</div>
																				</li>
																			</c:if>
																		</c:forEach>

																	</ul>

																</div>
																<div class="tab-pane fade" id="nav-skill2" role="skill2" aria-labelledby="nav-skill2-tab">
																	<ul class="skill-check">
																		<c:forEach var="skillItem" items="${skills }" varStatus="status">

																			<c:if test="${skillItem.skScCode == 'SC_2' }">
																				<li>
																					<div class="form-check skill-item 
																						<c:forEach var="entry" items="${skProcessors}">
																							<c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
																						<input class="form-check-input skill" type="checkbox" name="hopeskills" value="${skillItem.skCode }" id="${status.index +1}" name="skillCheck"> <label class="form-check-label"> ${skillItem.skName } </label>
																					</div>
																				</li>
																			</c:if>
																		</c:forEach>

																	</ul>

																</div>
																<div class="tab-pane fade" id="nav-skill3" role="skill3" aria-labelledby="nav-skill3-tab">
																	<ul class="skill-check">

																		<c:forEach var="skillItem" items="${skills }" varStatus="status">

																			<c:if test="${skillItem.skScCode == 'SC_3' }">
																				<li>
																					<div class="form-check skill-item 
																						<c:forEach var="entry" items="${skProcessors}">
																							<c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
																						<input class="form-check-input skill" type="checkbox" name="hopeskills" value="${skillItem.skCode }" id="${status.index +1}" name="skillCheck"> <label class="form-check-label"> ${skillItem.skName } </label>
																					</div>
																				</li>
																			</c:if>
																		</c:forEach>

																	</ul>
																</div>
															</div>
														</div>
													</div>
													<!-- //보유기술 -->

													<div class="col-12">
														<div class="sikll-box" id="skilArea">
															<!-- 내가 체크한 기술 나오는 공간 -->
														</div>
													</div>

													<div class="col-12">
														<button class="btn btn-primary w-100 join-step03" type="submit">회원가입</button>
													</div>
												</div>
											</div>
											<!-- //회원가입3 -->
										</div>
									</div>
									<!-- //회원가입 Swiper -->
								</form>

							</div>
						</div>

					</div>
				</div>
			</div>

		</div>


		<!-- </div>
    </section> -->
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<%-- <c:import url="../Components/Footer.jsp"></c:import> --%>
		<!-- //푸터영역 -->

	</div>


	<!-- 아이디찾기 -->
	<div class="modal fade" id="FindId" tabindex="-1"
		aria-labelledby="FindIdLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title fs-5 h1" id="FindIdLabel">아이디찾기</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p class="mb-4">
						가입한 이메일을 작성해주세요. <br>아이디를 메일로 보내드립니다.
					</p>
					<form class="row g-3 needs-validation" novalidate>

						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label h5">가입이메일</label> <input
									type="text" class="form-control" id="loginId02"
									required="required">
								<div class="invalid-feedback">가입이메일을 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<button class="btn btn-primary w-100" type="submit">아이디찾기</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- //아이디찾기 -->
	<!-- 비밀번호찾기 -->
	<div class="modal fade" id="ResetPassword" tabindex="-1"
		aria-labelledby="ResetPasswordLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title fs-5 h1" id="ResetPasswordLabel">비밀번호</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p class="mb-4">
						가입한 이메일을 작성해주세요. <br>비밀번호 재설정 메일을 보내드립니다.
					</p>
					<form class="row g-3 needs-validation" novalidate>

						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label h5">가입이메일</label> <input
									type="text" class="form-control" id="loginId02"
									required="required">
								<div class="invalid-feedback">가입이메일을 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label h5">아이디</label> <input
									type="text" class="form-control" id="loginId02"
									required="required">
								<div class="invalid-feedback">아이디를 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<button class="btn btn-primary w-100" type="submit">비밀번호
								찾기</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- //비밀번호찾기 -->

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/swiper-bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script type="text/javascript">
		// 경력추가
		let carrboxNum = <%=carrboxNumStr %>;
		function btnCareer(target,flag)
		{
			// add, remove
			let careerTag = target.parentElement.parentElement.nextElementSibling; //document.querySelector(".career-col-box");
			let cnt = careerTag.children.length;
			let addBtn = document.querySelector(".btn-more-one.add");
			let removeBtn = document.querySelector(".btn-more-one.remove");
			
			console.log(<%= carrboxNumStr%>);
			if(flag == 'addbtn'){
				carrboxNum = carrboxNum+1;
				<%carrboxNumStr++; %>
				if(cnt<3){
					let careerAddTag = "<li>"
									+ "<div class='row col-12'>"
									+     "<div class='col-6'>"
									+         "<div class='m-input-box'>"
									+             "<label for='selectJoinCareer' class='form-label'>경력직무</label>"
									+             "<div class='m-select'>"
									+                 "<select class='form-select' aria-label='Default select example' title='selectJoinCareer' name='jobNames' id='jobName_"+carrboxNum+"'>"
									+                     "<option>-선택-</option><option value='JOB_1'>기획자</option><option value='JOB_2'>디자이너</option><option value='JOB_3'>프론트엔드</option><option value='JOB_4'>백엔드</option>"
									+                 "</select>"
									+             "</div>"
									+             "<div class='invalid-feedback'>아이디를 입력해주세요.</div>"
									+         "</div>"
									+     "</div>"
									+     "<div class='col-6'>"
									+         "<label for='comNames' class='form-label'>회사명</label>"
									+         "<input type='text' class='form-control join-comName' name='comNames' id='comName_"+carrboxNum+"'>"
									+     "</div>"
									+ "</div>"
									+ "<div class='row range-datepicker02'>"
									+     "<div class='col-6 m-input-cal'>"
									+         "<label for='job-date-from' class='form-label'>시작날짜</label> <input type='text' class='form-control job-date-from hasDatepicker' value='2024-02-02' name='startDates' id='startDate_"+carrboxNum+"'>"
									+     "</div>"
									+     "<div class='col-6 m-input-cal'>"
									+         "<label for='job-date-to' class='form-label'>종료날짜</label> <input type='text' class='form-control job-date-to hasDatepicker' value='2024-02-28' name='endDates' id='endDate_"+carrboxNum+"'>"
									+     "</div>"
									+ "</div>"
								  + "</li>";
					careerTag.insertAdjacentHTML("beforeend", careerAddTag);
				};
			}else if(flag == 'removebtn'){
				<%carrboxNumStr--; %>
				careerTag.lastElementChild.remove();
			}else{}
			
			cnt = careerTag.children.length;
			// 버튼 disabled 처리
			let btnMoreOneParent = target.parentElement;	//.col-2.btn-addOn
			if(cnt>0){
				btnMoreOneParent.classList.add('btn-addOn');
				addBtn.disabled=false;
				removeBtn.disabled=false;
			}
			if(cnt==3){
				addBtn.disabled=true;
			}
			if(cnt==1){
				removeBtn.disabled=true;
			}
			
			//동적 생성된 요소에 datepicker 사용하기
			if($(".range-datepicker02").length){
				$.each($( ".range-datepicker02" ),function () {
					 for (var i = 0; i <= cnt; i++)
					{
						$(this).find("#startDate_"+i).removeClass('hasDatepicker').datepicker({dateFormat: "yy-mm-dd"});
						$(this).find("#endDate_"+i).removeClass('hasDatepicker').datepicker({dateFormat: "yy-mm-dd"});
					}
				});
			};
		};

		// 1단계 이메일
		let btn = document.querySelector(".join-step01");
		let inputEmail00 = document.querySelector("#piEmail");
		let inputEmail01 = document.querySelector("#joinEmail1");
		let inputEmail02 = document.querySelector("#joinEmail2");

		btn.addEventListener('click', function()
		{
			inputEmail00.value = inputEmail01.value
					+ inputEmail02.options[inputEmail02.selectedIndex].value;

		});
		
		$(function(){
			// 기술 체크할때마다 span 구역에 나오게 함수
			// 기술 체크할떄마다 span 구역에 나오게 함수
		$(".skill").change(function() 
		{
			var skilArea = $("#skilArea"); 								// 기술이 출력될 공간 가져오기
		    var skillName = $(this).next('.form-check-label').text();   // 선택된 기술의 이름 가져오기

	        // 체크된 기술의 수
	        var checkSkillCount = skilArea.find("span").length;

	        if ($(this).is(":checked"))									// 기술이 체크된 경우 
	        { 
	            // 선택된 기술이 5개 미만인 경우에만 추가
	            if (checkSkillCount < 5) 
	            {
	                skilArea.append("<span>" + skillName + "&ensp; </span>");
	            }
	            else 
	            {
	                // 5개 이상인 경우 체크를 해제하고 알림 표시
	                $(this).prop("checked", false);
	                alert("최대 5개까지 선택 가능합니다.");
	            }
	         }
	        else
	        { // 기술이 체크가 해제된 경우
	            // 선택된 기술을 삭제
	            skilArea.find("span").each(function() 
	            {
	                if ($(this).text().indexOf(skillName) !== -1) 
	                {
	                    $(this).remove();
	                }
	            });
	        }
			
		});
			
			// 아이디 중복체크
			$("#checkId").click(function(){
				let piIdStr = $("#piId");
				let piId = $("#piId").val();
				
				var ajaxRequest = null;
				
				if (ajaxRequest !== null) {
					ajaxRequest.abort();
				}

				ajaxRequest = $.ajax(
				{
					type: "GET"
					, url: "checkId.action"
					, data: { piId: piId }
					, success: function(searchCount)
					{
						if(searchCount>0)
						{
							piIdStr.next(".invalid-feedback").text("아이디가 같습니다.");
							piIdStr.removeClass("is-valid").addClass("is-invalid");
							piIdStr.focus();
						}else{
							piIdStr.removeClass("is-invalid").addClass("is-valid");
							
						}
					}
					, error: function()
					{
						alert("아이디 중복체크에 문제가 있습니다.");
					}
				});
			});
			
			// 닉네임 중복체크
			$("#checkNickname").click(function(){
				let piNicknameStr = $("#piNickname");
				let piNickname = $("#piNickname").val();

				var ajaxRequest02 = null;

				if (ajaxRequest02 !== null) {
					ajaxRequest02.abort();
				}

				ajaxRequest02 = $.ajax(
				{
					type : "GET"
					, url : "checkNickname.action"
					, data : { piNickname : piNickname }
					, success : function(searchNicknameCount){
						if (searchNicknameCount > 0) {
							piNicknameStr.next(".invalid-feedback").text("닉네임이 같습니다.");
							piNicknameStr.removeClass("is-valid").addClass("is-invalid");
							piNicknameStr.focus();
						} else {
							piNicknameStr.removeClass("is-invalid").addClass("is-valid");
						}
					}, error : function()
					{
						alert("닉네임 중복체크에 문제가 있습니다.");
					}
				});
			});
		});
	</script>
</html>