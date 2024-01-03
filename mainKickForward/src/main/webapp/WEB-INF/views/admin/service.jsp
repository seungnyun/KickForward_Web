<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../resources/jsp_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../webapp/resources/css/styles.css" rel="stylesheet" />
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
	background-color: #ffffff;
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
/* --- */
.result {
	font-size: 24px;
	font-weight: bold;
}

.intro_bg {
	background-image: url("/../webapp/resources/assets/img/main.jpg");
	width: 100%;
	height: 774px;
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

.intro_text {
	width: 100%;
	margin: 231px auto 231px auto;
	text-align: center;
	font-weight: bold;
}

.intro_text>h1, .intro_text>h4 {
	color: #fff;
}

/*푸터*/
section {
	padding: 80px 21% 70px;
}

.footer {
	display: grid;
	grid-tempLate-coLumns: repeat(auto-fit, minmax(200px, auto));
	gap: 3.5rem;
	background: #1a242f;
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






.main_text1 {
	width: 100%;
	text-align: center;
	font-family: Pretendard-EB;
}

.main_text1>h1 {
	padding-top: 50px;
	text-align: center;
	font-family: Pretendard-EB;
}

.main_text1>h3 {
	padding-top: 30px;
	text-align: center;
	font-family: Pretendard-EB;
	font-size: 20px;
	color: #6A6D73;
}

.main_text1>.contents1 {
	text-align: center;
}

.service {
	width: 1280px;
	display: flex;
	margin: 49px auto;
	height: 427px;
	background: white;
	padding: 0 100px 0 100px;
	justify-content: center;
}

.service>.contents2 {
	padding: 20px 20px; /* 오른쪽 패딩만 남깁니다 */
	
	max-width: 800px; /* 최대 가로 넓이를 지정합니다 */
	margin: 0 34px; /* 중앙 정렬을 위해 margin을 사용합니다 */
	text-align: left;
}

.service>.contents2>h2 {
	margin-bottom: 27px;
	font-family: Pretendard-EB;
}

.contents2 {
  padding: 20px 20px; /* 오른쪽 패딩만 남깁니다 */
  max-width: 800px; /* 최대 가로 넓이를 지정합니다 */
  margin: 0 auto; /* 중앙 정렬을 위해 margin을 사용합니다 */
  text-align: left;
}




.main_text2 {
  width: 100%;
  text-align: center;
  font-family: Pretendard-EB;
}

.main_text2 > h1 {
  padding-top: 50px;
}

.main_text2 > .contents1 {
  text-align: center;
}

.service2 {
  width: 1280px;
  display: flex;
  margin: 49px auto;
  height: 427px;
  background: white;
  padding: 0 100px;
  justify-content: center;
}

.service2 > .contents2 {
  padding: 20px 20px; /* 오른쪽 패딩만 남깁니다 */
  max-width: 800px; /* 최대 가로 넓이를 지정합니다 */
  margin: 0 34px; /* 좌우 중앙 정렬을 위해 margin을 사용합니다 */
  text-align: left;
}

.service2 > .contents2 > h2 {
  margin-bottom: 27px;
  font-family: Pretendard-EB;
}

.contents2 {
  padding: 20px 20px; /* 오른쪽 패딩만 남깁니다 */
  max-width: 800px; /* 최대 가로 넓이를 지정합니다 */
  margin: 0 auto; /* 중앙 정렬을 위해 margin을 사용합니다 */
  text-align: left;
}


.service_contain {	
	background-color: #ffffff;
}


 img {
    border-radius: 25px; /* 50%를 사용하여 모든 모서리를 둥글게 만듭니다. */
  }


</style>
</head>

<body id="page-top">
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">


				<!-- 위 메뉴 -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
		<div class="container px-5">
			<a class="navbar-brand fw-bold" href="/admin/home">Kick Forward</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="bi-list"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
					<li><a class="nav-link me-lg-3" href="/admin/service">서비스</a></li>
					<li><a class="nav-link me-lg-3" href="/admin/team">킥포워드 팀</a></li>
					<li><a class="nav-link me-lg-3" href="/admin/support">고객센터</a></li>
					<%-- 로그인 상태에 따라 다른 버튼 표시 --%>
					<c:choose>
						<c:when test="${empty loginAdmin}">
							<li><a class="nav-link me-lg-3" href="/admin/login">로그인</a></li>
						</c:when>
						<c:otherwise>							
							<li><a class="nav-link me-lg-3" href="/admin/ulist">회원 목록</a></li>
							<li><a class="nav-link me-lg-3" href="/admin/kgps">킥보드 목록</a></li>
							<li><a class="nav-link me-lg-3" href="/admin/logout">로그아웃</a></li>							
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
		</div>
	</div>
	<br>
	<br>
	<br>

	<div class="service_contain">


		<div class="main_text1">
			<h1>How to ride our Kick Forward</h1>
			<h3>간편하게 즐기는 Kick Forward 모빌리티</h3>
			<br>
			<br>
			<br>
			<div class="contents1"></div>
			<div class="service">
				<div class="food_photo">
					<img src="../webapp/resources/image/step/step1.jpg">
				</div>
				<div class="contents2">
					<br> <br> <br>

					<h2>STEP 1</h2>
					킥보드를 이용하기전 음주측정을 해주세요<br>
				</div>
			</div>
		</div>




		<div class="main_text2">

			<div class="contents1"></div>
			<div class="service2">

				<div class="contents2">
					<br> <br> <br>

					<h2>STEP 2</h2>
					출발 전 브레이크와 스로틀을 확인해주세요<br>
				</div>


				<div class="food_photo">
					<img src="../webapp/resources/image/step/step2.jpg">
				</div>

			</div>
		</div>

		<div class="main_text1">

			<div class="contents1"></div>
			<div class="service">
				<div class="food_photo">
					<img src="../webapp/resources/image/step/step3.jpg">
				</div>
				<div class="contents2">
					<br> <br> <br>

					<h2>STEP 3</h2>
					사고방지를 위해 헬멧을 착용해주세요<br>
				</div>
			</div>
		</div>
		
		<div class="main_text2">

			<div class="contents1"></div>
			<div class="service2">

				<div class="contents2">
					<br> <br> <br>

					<h2>STEP 4</h2>
					한발로 킥보드를 밀면서 출발해주세요<br>
				</div>


				<div class="food_photo">
					<img src="../webapp/resources/image/step/step4.jpg">
				</div>
			</div>
		</div>
		
		
		
		<div class="main_text1">

			<div class="contents1"></div>
			<div class="service">
				<div class="food_photo">
					<img src="../webapp/resources/image/step/step5.jpg">
				</div>
				<div class="contents2">
					<br> <br> <br>

					<h2>STEP 5</h2>
					킥보드 사용 후 안전한 곳에 주차해주세요<br>
				</div>
			</div>
		</div>


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