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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
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
.result1 {
	font-size: 24px;
	font-weight: bold;
	padding: 0 0 0 340px;
	color: gray;
	font-size:21px;
}

.result2 {
	font-size: 24px;
	font-weight: bold;
	padding: 0 340px 0 0;
	color: gray;
	font-size:21px;
}


.result1 p{

	color: #495664;
	font-size:27px;
}

.result2 p{

	color: #495664;
	font-size:27px;
}


.intro_bg {
	background: white;
	width: 100%;
	height: 500px;
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
	margin: 0px;
	text-align: center;
	font-weight: bold;
	padding-top: 150px;
	padding-left: 50px
}

.intro_text>h1, .intro_text>h4 {
	color: #fff;
}

/* main_text0 */
.main_text0 {
	width: 100%;
	height: 600px;
	margin-top: -132px;
	background-color: #ffffff;
}

.main_text0>h1 {
	padding-top: 116px;
	padding-bottom: 70px;
	text-align: center;
}

.main_text0>.contents1 {
	text-align: center;
}

.more {
	width: 100px;
	height: 30px;
	background: #2F7AF4;
	color: #fff;
	font-size: 12px;
	line-height: 30px;
	margin: 25px auto;
}

.main_text0_image {
	color: green;
	padding: 0 870px 0 870px;
}

.amount {
	position: relative;
	top: -66px;
	display: flex;
	width: 1280px;
	background: #fff;
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



/*버튼*/
.servicebutton {
	width: 100%;
	padding:10px;
	display:flex;
	justify-content: center;
}

.servicebutton_button1 {
	padding-right:15px;
	padding-left: 35px;
}

.servicebutton_button2 {
	padding-left:15px;
}





.button1 {
	border-radius: 10px;
    background-color: #000000;
    color: #ffffff;
    width: 155px;
    height: 50px;
    border: none;
    outline: none;
    
    font-size:20px;
	font-weight: bold;
	
}



.button2 {
	border-radius: 10px;
    background-color:#ffffff;
    color:#000000;
    width: 155px;
    height: 50px;
    border: 2px solid;
    outline: none;
    
    font-size:20px;
	font-weight: bold;
	
}






.bi-chat-left-text {
	color:#ffffff;
	font-size:20px;
	
}

.bi-clipboard-check {
	color:#000000;
	font-size:20px;
	
	
}



/* 푸터 */
section {
	padding: 80px 21% 70px;
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
}
</style>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
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
			</div>
			</nav>

		
				<div class="intro_text">
					<img src="/webapp/resources/image/logo.png" class="logo">  
				</div>

		</div>
	</div>
	
	<br>
	



	<div class="main_text0">
		<h1>킥포워드 고객센터를 이용해 보세요!</h1>

		<ul class="amount">
			<li>
				<div>
					<div class="contents1"></div>
					<div class="result1">
						일반 상담
						<p>010-????-????<p>
					</div>
				</div>
			</li>
			<li>
				<div>
					<div class="contents1"></div>
					<div class="result2">
						카카오톡
						<p>@kickforward</p>
					</div>

				</div>
			</li>



		</ul>


		<div class="servicebutton">
			<div class="servicebutton_button1">
				
					
					
					<button type="button" class="button1" onclick="location.href='/list'">
						<i class="bi bi-chat-left-text"></i> 공지사항
					</button>
					
				</div> 
				 
				<div class="servicebutton_button2">
					
					
					<button type="button" class="button2" onclick="location.href='/Breakdownlist'">
						<i class="bi bi-clipboard-check"></i> 고장신고
					</button>
				
			</div>
		</div>
		
		


		<!--  <div class="main_text0_image">
					<img id="image" src="webapp/resources/assets/img/inquiry.png" width = 200px; height = 200px; onclick="openImg1()"><br><br><br>		
					
					<script>
						function openImg1() {			   
						    window.location.href = "list";
						}
					</script>
				    
				    
					<img id="image" src="webapp/resources/assets/img/fix.png" width = 200px; height = 200px; onclick="openImg()"><br>					
					
					<script>
						function openImg() {			   
						    window.location.href = "Breakdownlist";
						}
					</script>
				
	
	 			</div>-->

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
