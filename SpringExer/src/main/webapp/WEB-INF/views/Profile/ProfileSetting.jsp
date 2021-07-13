<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="enable-scroll" lang="ko">
<head>
</head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	id="wixDesktopViewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--내가 추가한 코드-->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/profileSetting.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<title>내 계정</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/templates/Top.jsp" />
	<div class="profileContainer">
		<div class="profileSideBar">
			<jsp:include page="/WEB-INF/views/templates/ProfileSideBar.jsp" />
		</div>

		<div id="TPASection_kpndp3jv" style="height: auto;">
			<div class="TPASection_kpndp3jv">

				<div
					class="Toast1936151037__root Toast1936151037---skin-7-success Toast1936151037---placement-6-inline Toast661470535__toast Toast661470535--displayNone"
					role="alert" data-is-shown="false" data-skin="success"
					data-mobile="false" data-hook="MyAccount-toast">
				
				</div>
				<div class="Root3224495471__root" data-hook="MyAccount-wrapper"
					dir="ltr">
					<form action="#" novalidate="">
						<div class="Header152996678__root">
							<div>
								<div class="SectionHeader32289813__root">
									<div
										class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary SectionHeader32289813__title"
										aria-hidden="false" data-hook="MyAccount-sectionTitle">내
										계정</div>
									<div class="SectionHeader32289813__subtitleWrapper">
										<span
											class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary SectionHeader32289813__subtitle"
											aria-hidden="false">아래에서 개인 정보를 확인 및 편집하세요.</span>
									</div>
								</div>
							</div>
							<div>
								<div class="CTAGroup1093696031__root">
									<div class="CTAGroup1093696031__container">
										<button data-fullwidth="false" data-mobile="false"
											data-hook="MyAccount-discardChangesButton"
											class="buttonnext4084022348__root buttonnext4084022348--disabled Focusable2573421935__root Button4267364078__root Button4267364078---priority-9-secondary Button4267364078--upgrade CTAGroup1093696031__discardButton CTAGroup1093696031--disabled"
											type="button" disabled="disabled" tabindex="-1"
											aria-disabled="true">
											<span class="buttonnext4084022348__content">변경 사항 취소</span>
										</button>
										<button data-fullwidth="false" data-mobile="false"
											data-hook="MyAccount-saveAccountButton"
											class="buttonnext4084022348__root buttonnext4084022348--disabled Focusable2573421935__root Button4267364078__root Button4267364078---priority-7-primary Button4267364078--upgrade CTAGroup1093696031__saveButton"
											type="submit" disabled="disabled" tabindex="-1"
											aria-disabled="true">
											<span class="buttonnext4084022348__content">정보 업데이트</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="Divider1883987836__root">
							<div class="Divider1883987836__divider"></div>
						</div>
						<div class="Root3224495471__sections">
							<div class="Account3271963488__root">
								<div class="SectionHeader32289813__root">
									<div
										class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary SectionHeader32289813__title"
										aria-hidden="false" data-hook="MyAccount-sectionTitle">계정</div>
									<div class="SectionHeader32289813__subtitleWrapper">
										<span
											class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary SectionHeader32289813__subtitle"
											aria-hidden="false">커뮤니티에 공개할 정보를 업데이트 및 편집하세요.</span>
									</div>
								</div>
								<div class="LoginEmail2399031486__root">
									<div
										class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary LoginEmail2399031486__title"
										aria-hidden="false">로그인 이메일:</div>
									<div
										class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary LoginEmail2399031486__title"
										aria-hidden="false">userID@gmail.com</div>
									<div
										class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary LoginEmail2399031486__subtitle"
										aria-hidden="false">(로그인 이메일은 변경할 수 없습니다.)</div>
								</div>
								<div class="FieldGroup68759556__root">
									<div data-hook="customfields.system.firstname">
										<label for="74419c89-4e5d-41d5-a86a-167455876c4f"
											class="FieldLabel3716810435__root"><span
											class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary FieldLabel3716810435__label"
											aria-hidden="false">First Name </span></label>
										<div
											class="TextField2249754734__root TextField2249754734---theme-3-box Text4249898713__field">
											<div
												class="Input2288008926__root TextField2249754734__input TextField2249754734---theme-3-box"
												data-theme="box" data-success="false" data-error="false"
												data-empty-state="true" data-hook="MyAccount-textField">
												<input id="74419c89-4e5d-41d5-a86a-167455876c4f"
													data-theme="box" data-success="false" data-error="false"
													data-empty-state="true" data-hook="MyAccount-textField"
													placeholder="Input Text" type="text"
													errortooltipmaxwidth="2000"
													class="Input2288008926__nativeInput">
											</div>
										</div>
									</div>
									<div data-hook="customfields.system.lastname">
										<label for="21382c59-d3c4-4dc1-9a52-885eb0edb886"
											class="FieldLabel3716810435__root"><span
											class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary FieldLabel3716810435__label"
											aria-hidden="false">Last Name </span></label>
										<div
											class="TextField2249754734__root TextField2249754734---theme-3-box Text4249898713__field">
											<div
												class="Input2288008926__root TextField2249754734__input TextField2249754734---theme-3-box"
												data-theme="box" data-success="false" data-error="false"
												data-empty-state="true" data-hook="MyAccount-textField">
												<input id="21382c59-d3c4-4dc1-9a52-885eb0edb886"
													data-theme="box" data-success="false" data-error="false"
													data-empty-state="true" data-hook="MyAccount-textField"
													placeholder="Input Text" type="text"
													errortooltipmaxwidth="2000"
													class="Input2288008926__nativeInput">
											</div>
										</div>
									</div>
									<div data-hook="customfields.system.email">
										<label for="1aeed99e-1a7a-411a-8263-2927264c0a32"
											class="FieldLabel3716810435__root"><span
											class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary FieldLabel3716810435__label"
											aria-hidden="false">Email </span></label>
										<div
											class="TextField2249754734__root TextField2249754734---theme-3-box Text4249898713__field">
											<div
												class="Input2288008926__root TextField2249754734__input TextField2249754734---theme-3-box"
												data-theme="box" data-success="false" data-error="false"
												data-empty-state="false" data-hook="MyAccount-textField">
												<input id="1aeed99e-1a7a-411a-8263-2927264c0a32"
													data-theme="box" data-success="false" data-error="false"
													data-empty-state="false" data-hook="MyAccount-textField"
													placeholder="Input Text" type="text"
													errortooltipmaxwidth="2000"
													class="Input2288008926__nativeInput"
													value="userID@gmail.com">
											</div>
										</div>
									</div>
									<div data-hook="customfields.system.phone">
										<label for="7910d2f2-1404-48a3-9880-716e044147e3"
											class="FieldLabel3716810435__root"><span
											class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary FieldLabel3716810435__label"
											aria-hidden="false">Phone </span></label>
										<div
											class="TextField2249754734__root TextField2249754734---theme-3-box Text4249898713__field">
											<div
												class="Input2288008926__root TextField2249754734__input TextField2249754734---theme-3-box"
												data-theme="box" data-success="false" data-error="false"
												data-empty-state="true" data-hook="MyAccount-textField">
												<input id="7910d2f2-1404-48a3-9880-716e044147e3"
													data-theme="box" data-success="false" data-error="false"
													data-empty-state="true" data-hook="MyAccount-textField"
													placeholder="Input Text" type="text"
													errortooltipmaxwidth="2000"
													class="Input2288008926__nativeInput">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="Root3224495471__ctaGroup">
								<div class="CTAGroup1093696031__root">
									<div class="CTAGroup1093696031__container">
										<button data-fullwidth="false" data-mobile="false"
											data-hook="MyAccount-discardChangesButton"
											class="buttonnext4084022348__root buttonnext4084022348--disabled Focusable2573421935__root Button4267364078__root Button4267364078---priority-9-secondary Button4267364078--upgrade CTAGroup1093696031__discardButton CTAGroup1093696031--disabled"
											type="button" disabled="disabled" tabindex="-1"
											aria-disabled="true">
											<span class="buttonnext4084022348__content">변경 사항 취소</span>
										</button>
										<button data-fullwidth="false" data-mobile="false"
											data-hook="MyAccount-saveAccountButton"
											class="buttonnext4084022348__root buttonnext4084022348--disabled Focusable2573421935__root Button4267364078__root Button4267364078---priority-7-primary Button4267364078--upgrade CTAGroup1093696031__saveButton"
											type="submit" disabled="disabled" tabindex="-1"
											aria-disabled="true">
											<span class="buttonnext4084022348__content">정보 업데이트</span>
										</button>
									</div>
								</div>
							</div>
							<div class="Divider1883987836__root">
								<div class="Divider1883987836__divider"></div>
							</div>
						</div>
					</form>
					<div class="AccountSettings2570994765__root">
						<div
							class="SectionHeader32289813__root AccountSettings2570994765__sectionHeader">
							<div
								class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary SectionHeader32289813__title"
								aria-hidden="false" data-hook="MyAccount-sectionTitle">계정
								설정</div>
							<div class="SectionHeader32289813__subtitleWrapper">
								<span
									class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary SectionHeader32289813__subtitle"
									aria-hidden="false">커뮤니티에 공개할 정보를 업데이트 및 편집하세요.</span>
							</div>
						</div>
						<div class="Accordion3196983736__root">
							<div class="Item3479552200__root">
								<div class="Item3479552200__header">
									<span
										class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary CommunityPageUrl1842232732__header"
										aria-hidden="false"
										data-hook="MyAccount-profileUrlAccordionHeader">커뮤니티
										페이지 URL</span>
									<button
										class="buttonnext4084022348__root Focusable2573421935__root IconButton455764551__root IconButton455764551---skin-4-line IconButton455764551__skin-line Item3479552200__iconButton"
										type="button" tabindex="0">
										<span class="buttonnext4084022348__content"><span
											class="IconButton455764551__icon"><svg width="24px"
													height="24px" viewBox="0 0 24 24" version="1.1"
													xmlns="http://www.w3.org/2000/svg">
																				<path fill="#000"
														d="M12 15L6 9.76 6.657 9l5.342 4.666L17.343 9l.657.76z"
														fill-rule="evenodd" transform-origin="center"
														transform="rotate(180)"></path></svg></span></span>
									</button>
								</div>
								<div class="Item3479552200__content Item3479552200--open">
									<div>
										<div data-content-hook="popover-content--undefined"
											class="Popover1826439104__root Tooltip3287928415__root Tooltip2173016402__root Tooltip2173016402---skin-8-standard CommunityPageUrl1842232732__tooltip">
											<div class="Popover1826439104__popoverElement"
												data-hook="popover-element">
												<div
													class="Text3970018701__root Text3970018701---typography-11-runningText Text3970018701---priority-7-primary CommunityPageUrl1842232732__content"
													aria-hidden="false">https://jemilykoo.wixsite.com/website/profile/userID/profile</div>
											</div>
										</div>
									</div>
									<button data-hook="MyAccount-editProfileUrlButton"
										class="buttonnext4084022348__root Focusable2573421935__root TextButton2311320180__root TextButton2311320180---priority-4-link CommunityPageUrl1842232732__cta"
										type="button" tabindex="0">
										<span class="buttonnext4084022348__content">URL 편집</span>
									</button>
								</div>
								<div class="Divider1883987836__root">
									<div class="Divider1883987836__divider"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>

</body>
</html>