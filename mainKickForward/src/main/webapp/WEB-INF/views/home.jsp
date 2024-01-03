<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../resources/jsp_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="webapp/resources/css/styles.css" rel="stylesheet" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
/* 기본 스타일 */
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

/* 네비게이션 바 스타일 */
.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #ffffff;
	padding: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.navbar a {
	text-decoration: none;
	color: #333333;
	font-weight: bold;
}

.navbar_menu {
	list-style: none;
	display: flex;
	align-items: center;
	margin: 0;
	padding: 0;
}

.navbar_menu li {
	margin-left: 20px;
}

/* 추가 스타일 */
.container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 20px;
}

.title {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
}

.section {
	background-color: #ffffff;
	padding: 20px;
	margin-bottom: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.section h2 {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 10px;
}

.section p {
	margin-bottom: 10px;
}

.row {
	display: flex;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

/* 추가 스타일 */
.menubottom {
	background-color: #333333;
	color: #ffffff;
	padding: 20px;
}

.menubottom .row {
	display: flex;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.menubottom .col {
	flex: 1;
	padding: 0 15px;
}

.menubottom h5 {
	color: #ffffff;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 10px;
}

.menubottom ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.menubottom ul li {
	margin-bottom: 10px;
}

.menubottom ul li a {
	color: #ffffff;
	text-decoration: none;
}

.menubottom ul li a:hover {
	text-decoration: underline;
}

* {
	font-family: 'Noto Sans KR', sans-serif;
	list-style: none;
	text-decoration: none;
	border-collapse: collapse;
	margin: 0px;
	padding: 0px;
	color: #000;
}

h1 {
	font-size: 38px;
	font-weight: 100px;
}

.contents1 {
	font-size: 20px;
	font-weight: lighter;
	font-weight: bold;
	
}

.contents2 {
	font-size: 18px;
}

.contents3 {
	font-size: 14px;
	font-weight: 100;
}

.contents1_bold {
	font-size: 18px;
	font-weight: bold;
}

.button2 {
	border-radius: 10px;
	background-color: #0e5c5d;
	color: #ffffff;
	width: 155px;
	height: 50px;
	border: none;
	outline: none;
	font-size: 20px;
	font-weight: bold;
}

.bi-clipboard-check {
	color: #000000;
	font-size: 20px;
}

/* --- */
.result {
	font-size: 24px;
	font-weight: bold;
}

.intro_bg {
	background-image: url("/webapp/resources/assets/img/service5.jpg"); <!--url("/webapp/resources/image/service.jpg");-->
	width: 100%;
	height: 824px;
}

.header {
	width: 1280px;
	margin: auto;
	display: flex;
	height: 86px;
}

.Logo {
	width: 300px;
	height: 40px;
	border-radius: 5px;
	margin-top: 27px;
}

.searchArea>form>input {
	border: none;
	width: 250px;
	height: 40px;
	background: rgba(0, 0, 0, 0.0);
	color: #fff;
	padding-left: 10px;
}

.searchArea>form>span {
	width: 50px;
	color: #fff;
}

.navbar_logo a {
	text-decoration: none;
	color: #ffffff;
	font-weight: bold;
	font-size: 21px;
}

.nav {
	display: flex;
	justify-content: flex-end;
	width: calc(1280px - 300px);
	line-height: 86px;
}

.nav>li {
	margin-left: 25px;
}

.nav>li>a {
	color: #ffffff;
}

.amount {
	position: relative;
	top: -110px;
	display: flex;
	width: 800px;
	background: #fff;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	margin: auto;
}

.amount>li {
	flex: 1;
	height: 132px;
}

.amount>li>div {
	text-align: center;
	margin-top: 50px;
	height: 57px;
}

.amount>li:not(:last-child)>div {
	border-right: 1px solid #E1E1E1;
}

.intro_text {
	width: 100%;
	margin: 231px auto 231px auto;
	padding: 0 0 0 100px;
	font-weight: bold;
}

.intro_text>h1, .intro_text>h4 {
	color: #fff;
}

/* main_text0 */
.main_text0 {
	width: 100%;
	height: 601px;
	margin-top: -132px;
	background: #ffffff;
}

.main_text0>h1 {
	padding-top: 116px;
	text-align: center;
}

.main_text0>.contents1 {
	text-align: center;
}

.icons {
	display: flex;
	width: 1280px;
	height: 302px;
	/* background: orange; */
	margin: auto;
}

.icons>li {
	flex: 1;
	background: white;
	margin-top: 49px;
	height: 302px;
	text-align: center;
}

.icons>li>.icon_img {
	margin-top: 18px;
}

.icons>li:not(:last-child) {
	margin-right: 20px;
}

.icons .contents2 {
	width: 280px;
	margin: auto;
	letter-spacing: -1px;
}



more {
    width: 100px;
    /* height: 30px; */
    background: white;
    color: #000000;
    border: 3px solid black;
    font-size: 12px;
    line-height: 30px;
    margin: 25px auto;
}

.main_text1 {
	width: 100%;
	height: 500px;
	background-image: url("/webapp/resources/image/tree.jpg");
}

.main_text1_text {
	display: flex;
	flex-direction: row;
	padding: 130px;
	justify-content: center;
	font-size: 38px;
	font-weight: bold;
	color: #ffffff;
}

.main_text2 {
	width: 100%;
	height: 500px;
	background:black;
}

.main_text2_text {
	display: flex;
	flex-direction: row;
	padding: 130px;
	justify-content: center;
	font-size: 3rem;
	font-weight: bold;
	color: #ffffff;
}

.service {
	width: 1280px;
	display: flex;
	margin: 49px auto;
	height: 427px;
}

.service>.contents2 {
	padding: 20px;
}

.service>.contents2>h2 {
	margin-bottom: 27px;
}

/* main_text2 */
.main_text2 {
	width: 100%;
	height: 418px;
	background-image: url("/resources/image/contact.png");
}

.main_text2>ul {
	display: flex;
	padding-top: 138px;
}

.main_text2>ul>li {
	flex: 1;
	text-align: center;
}

.main_text2>ul>li>div, .main_text2>ul>li>div>h1 {
	color: #fff;
}

.more2 {
	width: 220px;
	height: 40px;
	border: 1px solid #fff;
	color: #fff;
	line-height: 40px;
	cursor: pointer;
	margin: 16px auto;
}

section {
	padding: 80px 21% 70px;
	background: #ffffff
}

.footer {
	display: grid;
	grid-tempLate-coLumns: repeat(auto-fit, minmax(200px, auto));
	gap: 3.5rem;
	background: #000000;
	left: 0;
	right: 0;
	bottom: 0;
}

.footer-content h4 {
	color: #fff;
	margin-bottom: 1.5rem;
	font-size: 17px;
}

.footer-content li {
	margin-bottom: 16px;
}

.footer-content li a {
	display: block;
	color: #d6d6d6;
	font-size: 14px;
	font-weight: 400;
	transition: all .40s ease;
	text-decoration: none;
}

.footer-content li a:hover {
	transform: transLateY(-3px) transLateX(-5px);
	color: #fff;
}

.footer-content p {
	color: #d6d6d6;
	font-size: 16px;
	line-height: 30px;
	margin: 20px 0;
}

.masthead {
	background-color: #ffffff;
}
</style>
</head>

<body id="page-top">
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">


				<!-- 위 메뉴 -->
				<nav
					class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm"
					id="mainNav">
					<div class="container px-5">
						<a class="navbar-brand fw-bold" href="/home">Kick Forward</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
							aria-controls="navbarResponsive" aria-expanded="false"
							aria-label="Toggle navigation">
							Menu <i class="bi-list"></i>
						</button>
						<div class="collapse navbar-collapse" id="navbarResponsive">
							<ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
								<li><a class="nav-link me-lg-3" href="/service">서비스</a></li>
								<li><a class="nav-link me-lg-3" href="team">킥포워드 팀</a></li>
								<li><a class="nav-link me-lg-3" href="/support">고객센터</a></li>
								<%-- 로그인 상태에 따라 다른 버튼 표시 --%>
								<c:choose>
									<c:when test="${empty loginUser}">
										<li><a class="nav-link me-lg-3" href="/login">로그인</a></li>
									</c:when>
									<c:otherwise>
										<li><a class="nav-link me-lg-3" href="/profile">회원정보</a></li>
										<li><a class="nav-link me-lg-3" href="/logout">로그아웃</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
				</nav>


				<div class="intro_text">
					<br> <br> <br> <br> <br>
					<h1>새로운 이동 경험, 킥포워드</h1>
					<h1 class="contents1">킥포워드가 이동 방식의 변화를 만들어갑니다</h1>
				</div>


			</div>
		</div>
	</div>
	<br>
	<br>

	<!-- intro end
	<ul class="amount">
		<li>
			<div>
				<div class="contents1"></div>
				<div class="result">음주운전 방지</div>
			</div>
		</li>
		<li>
			<div>
				<div class="contents1"></div>
				<div class="result">전동 킥보드</div>
			</div>
		</li>
		<li>
			<div class="content">
				<div class="contents1"></div>
				<div class="result">
					<button type="button" class="button2">앱 다운로드</button>
				</div>
			</div>
		</li>

	</ul>-->

	<br>

	<div class="main_text0">
		<h1>킥포워드를 소개합니다</h1>
		<div class="contents1">음주운전을 예방하고 안전한 이동을 위해 킥포워드를 이용하세요</div>

		<ul class="icons">
			<li>
				<div class="icon_img">
					<img src="/webapp/resources/image/smartphone.png">
				</div>
				<br>
				<div class="contents1_bold">알코올 수치 검사</div>
				<div class="contents2">앱과 연동된 아두이노 센서를 이용한 알코올 수치 검사를 합니다.</div>
				<div class="more"></div>
			</li>

			<li>
				<div class="icon_img">
					<img src="/webapp/resources/image/soju.png">
				</div>
				<br>
				<div class="contents1_bold">음주운전 방지</div>
				<div class="contents2">알코올 일정 수치 이상 검출 시 킥보드 대여 불가합니다</div>
				<div class="more"></div>
			</li>

			<li>
				<div class="icon_img">
					<img src="/webapp/resources/image/ride.png" width="128"
						height="128">

				</div>
				<br>
				<div class="contents1_bold">대여 조건</div>
				<div class="contents2">알코올 검사 통과 시 킥보드 대여 가능합니다</div>
				<div class="more"></div>
			</li>
		</ul>
	</div>
	
	
	
	
	<!-- 두번째 영역 -->
	
	<div class="main_text2"
		style="display: flex; justify-content: center; align-items: center; height: 500px;">
		<div class="main_text2_text" style="text-align: center;">우리의 선택, 우리의 책임 <br>우리의 손으로 안전한 도로를 만들어요!</div>
	</div>
	
	

	<!-- 다운로드 글 -->
	<header class="masthead">
		<div class="container px-5">
			<div class="row gx-5 align-items-center">
				<div class="col-lg-6">
					<!-- Mashead text and app badges-->
					<div class="mb-5 mb-lg-0 text-center text-lg-start">
						<h1 class="display-1 lh-1 mb-3">Let's do it with the Kick
							Forward!</h1>
						<p class="lead fw-normal text-muted mb-5">음주측정 킥보드
							지금 만나보세요!</p>
						<div class="d-flex flex-column flex-lg-row align-items-center">
							<a class="me-lg-3 mb-4 mb-lg-0" href="#!"><img
								class="app-badge"
								src="webapp/resources/assets/img/google-play-badge.svg"
								alt="..." /></a> <a href="#!"><img class="app-badge"
								src="webapp/resources/assets/img/app-store-badge.svg" alt="..." /></a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<!-- Masthead device mockup feature-->
					<div class="masthead-device-mockup">
						<svg class="circle" viewBox="0 0 100 100"
							xmlns="http://www.w3.org/2000/svg">
                                <defs>
                                    <linearGradient id="circleGradient"
								gradientTransform="rotate(45)">
                                        <stop
								class="gradient-start-color" offset="0%"></stop>
                                        <stop class="gradient-end-color"
								offset="100%"></stop>
                                    </linearGradient>
                                </defs>
                                <circle cx="50" cy="50" r="50"></circle></svg>
						<svg class="shape-1 d-none d-sm-block" viewBox="0 0 240.83 240.83"
							xmlns="http://www.w3.org/2000/svg">
                                <rect x="-32.54" y="78.39"
								width="305.92" height="84.05" rx="42.03"
								transform="translate(120.42 -49.88) rotate(45)"></rect>
                                <rect x="-32.54" y="78.39"
								width="305.92" height="84.05" rx="42.03"
								transform="translate(-49.88 120.42) rotate(-45)"></rect></svg>
						<svg class="shape-2 d-none d-sm-block" viewBox="0 0 100 100"
							xmlns="http://www.w3.org/2000/svg">
							<circle cx="50" cy="50" r="50"></circle></svg>

						<!-- PUT CONTENTS HERE:-->
						<!-- * * This can be a video, image, or just about anything else.-->
						<!-- * * Set the max width of your media to 100% and the height to-->
						<!-- * * 100% like the demo example below.-->
						<img src="webapp/resources/image/appmain1.png" alt="Your Image"
							width="308.75" height="661.5" style="z-index: 1;">
					</div>
				</div>
			</div>
	</header>

	<div class="main_text1"
		style="display: flex; justify-content: center; align-items: center; height: 500px;">
		<div class="main_text1_text" style="text-align: center;">킥포워드로 이동하며 도시를 지키세요</div>
	</div>

	<!-- 기능 소개-->
	<section id="features">
		<div class="row gx-5 justify-content-center text-center">
			<div class="col-xl-8">
				<div class="h2 fs-1 text-black mb-4"></div>
			</div>
		</div>
		<div class="container px-5">
			<div class="row gx-5 align-items-center">
				<div class="col-lg-8 order-lg-1 mb-5 mb-lg-0">
					<div class="container-fluid px-5">
						<div class="row gx-5">
							<div class="col-md-6 mb-5">
								<!-- Feature item-->
								<div class="text-center">
									<img src="webapp/resources/assets/img/new.png" alt="Your Image"
										style="max-width: 50px; height: 50px;" /><br> <br>
									<h3 class="font-alt">최신 기능</h3>
									<p class="text-muted mb-0">최신의 기능으로 간편하게 사용 가능합니다.</p>
								</div>
							</div>
							<div class="col-md-6 mb-5">
								<!-- Feature item-->
								<div class="text-center">
									<img src="webapp/resources/assets/img/alcohol.png"
										alt="Your Image" style="max-width: 50px; height: 50px;" /><br>
									<br>
									<h3 class="font-alt">음주 측정</h3>
									<p class="text-muted mb-0">탑승 전 음주 측정으로 일정 수치 이상이면 탑승
										불가입니다.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 order-lg-0">
					<!-- Features section device mockup-->
					<div class="features-device-mockup">
						<svg class="circle" viewBox="0 0 100 100"
							xmlns="http://www.w3.org/2000/svg">
	                                <defs>
	                                    <linearGradient id="circleGradient"
								gradientTransform="rotate(45)">
	                                        <stop
								class="gradient-start-color" offset="0%"></stop>
	                                        <stop
								class="gradient-end-color" offset="100%"></stop>
	                                    </linearGradient>
	                                </defs>
	                                <circle cx="50" cy="50" r="50"></circle></svg>
						<svg class="shape-1 d-none d-sm-block" viewBox="0 0 240.83 240.83"
							xmlns="http://www.w3.org/2000/svg">
	                                <rect x="-32.54" y="78.39"
								width="305.92" height="84.05" rx="42.03"
								transform="translate(120.42 -49.88) rotate(45)"></rect>
	                                <rect x="-32.54" y="78.39"
								width="305.92" height="84.05" rx="42.03"
								transform="translate(-49.88 120.42) rotate(-45)"></rect></svg>
						<svg class="shape-2 d-none d-sm-block" viewBox="0 0 100 100"
							xmlns="http://www.w3.org/2000/svg">
							<circle cx="50" cy="50" r="50"></circle></svg>

						<!-- PUT CONTENTS HERE:-->
						<!-- * * This can be a video, image, or just about anything else.-->
						<!-- * * Set the max width of your media to 100% and the height to-->
						<!-- * * 100% like the demo example below.-->
						<img src="webapp/resources/assets/img/appmap.png" alt="Your Image"
							width="247" height="529.2" style="z-index: 1;">
					</div>
				</div>
			</div>
	</section>

	<!-- 문의 
        <section class="cta">
            <div class="cta-content">
                <div class="container px-5">
                    <h2 class="text-white display-1 lh-1 mb-4">
                       Please Inquiry                        
                    </h2>
                    <a class="btn btn-outline-light py-3 px-4 rounded-pill" href="/support" target="_blank">Support</a>                    
                </div>
            </div>
        </section>-->

	<!-- 맨 밑 -->
	<section class="footer">
		<div class="footer-content">

			<div class="navbar_logo">
				<a href="/home">Kick Forward</a>
			</div>
			<p>혁신적인 모빌리티 솔루션, 킥포워드로 즐거운 이동을 경험하세요</p>

		</div>

		<div class="footer-content">
			<h4>킥포워드 소개</h4>
			<li><a href="#">킥포워드</a></li>
			<li><a href="#">킥포워드 팀</a></li>
		</div>

		<div class="footer-content">
			<h4>서비스 소개</h4>
			<li><a href="#">서비스</a></li>
			<li><a href="#">고객센터</a></li>
		</div>

		<div class="footer-content">
			<h4>문의하기</h4>
			<li><a href="#">kick@kickforward.com</a></li>
			<li><a href="#">카톡 @kickforward</a></li>
		</div>

	</section>

</body>
</html>

