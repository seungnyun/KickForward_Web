<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>운전면허 검증</title>
<link rel="stylesheet" type="text/css" href="webapp/resources/css/style.css">
<link href="webapp/resources/css/styles.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="stylesheet" type="text/css"
	href="../webapp/resources/css/style.css">
<link href="../webapp/resources/css/styles.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="webapp/resources/css/style.css">
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
	padding-top: 20px;
	padding-bottom: 30px;
}

h5 {
	text-align: center;
	padding: 50px 0 30px 0;
	font-size: 32px;
}

}
.contents1 {
	font-size: 20px;
	font-weight: lighter;
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
	top: -66px;
	display: flex;
	width: 1280px;
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
	text-align: center;
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
	background: #f1f2f3;
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

.more {
	width: 100px;
	height: 30px;
	background: #2F7AF4;
	color: #fff;
	font-size: 12px;
	line-height: 30px;
	margin: 25px auto;
}

/* main_text1*/
.main_text1 {
	width: 100%;
	height: 659px;
	/* margin-top:-132px; */
	/* background: #2F7AF4 */
}

.main_text1>h1 {
	padding-top: 50px;
	text-align: center;
}

.main_text1>.contents1 {
	text-align: center;
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

table {
	width: 532px;
	border-collapse: collapse;
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	margin: 0 auto;
}

th, td {
	padding: 10px;
	text-align: left;
	border: 1px solid darkgray;
}

th {
	background-color: #f2f2f2;
	font-weight: bold;
	color: #333;
}

input[type="submit"] {
	display: block;
	margin: 20px auto;
	padding: 10px 20px;
	font-size: 16px;
	font-weight: bold;
	color: #fff;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.fieldError {
	color: red;
}



#content {

height: 250px;
}

.form button {
    font-family: "Roboto", sans-serif;
    text-transform: uppercase;
    outline: 0;
    background: #000000;
    width: 100%;
    border: 0;
    padding: 15px;
    color: #FFFFFF;
    font-size: 14px;
    -webkit-transition: all 0.3 ease;
    transition: all 0.3 ease;
    cursor: pointer;
}

.form button:hover,.form button:active,.form button:focus {
  background: #000000;
}
</style>
</head>
<body id="page-top">
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">
				

	</div></div></div><br>
	<h2 align="center">운전면허 검증</h2>
	<br>
	<h3 align="center" ><font color="red">${message}</font></h3>
	<br>
	<div class="form">
		<form:form class="login-form" modelAttribute="license" method="post"
			action="Certification">
			<p align="left">
				<span class="fieldError"><form:errors path="userName" /></span>
			</p>
			<form:input path="userName" type="text" placeholder="이름" />
						<p align="left">
				<span class="fieldError"><form:errors path="birthDate" /></span>
			</p>
			<form:input path="birthDate" type="text" placeholder="생년월일 EX(19980827)" />
						
			<p align="left">
				<span class="fieldError"><form:errors path="licenseNo01" /></span>
			</p>
			<form:input path="licenseNo01" type="text" placeholder="지역코드" />
						
			<p align="left">
				<span class="fieldError"><form:errors path="licenseNo02" /></span>
			</p>
			<form:input path="licenseNo02" type="text" placeholder="년도" />
						
			<p align="left">
				<span class="fieldError"><form:errors path="licenseNo03" /></span>
			</p>
			<form:input path="licenseNo03" type="text" placeholder="6자리 숫자" />
						
			<p align="left">
				<span class="fieldError"><form:errors path="licenseNo04" /></span>
			</p>
			<form:input path="licenseNo04" type="text" placeholder="2자리 숫자" />
			<p align="left">
				<span class="fieldError"><form:errors path="serialNo" /></span>
			</p>
			<form:input path="serialNo" type="text" placeholder="암호일련번호 (조그마한 증명사진 밑 6자리)" />
			<button type="submit" value = "Submit">운전면허 검증</button>
		</form:form>
	</div>
</body>
</html>