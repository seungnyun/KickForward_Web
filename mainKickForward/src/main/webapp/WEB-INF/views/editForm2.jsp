<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
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

.container {
    display: flex;    
  }

  .container a,
  .container form {
    margin-right: 10px;
  }
}


</style>
</head>
<body>

<script> 

function Delete() {
	if (confirm("탈퇴하시겠습니까?")) {
		var editForm = document.getElementById('editForm')
		editForm.action = 'deleteU';
		editForm.method = 'post';
		editForm.submit();
	}
	
}

</script>
<body id="page-top">
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">
				

	</div></div></div>
	
		<div class="container">		
			<form:form id="editForm" modelAttribute="user" method="post" action="editU">
			<h4 class="mb-3 text-center">회원정보 수정</h4>
			<table border="1" class="mx-auto">
			
			<tr>
	             <th>아이디</th>
	             <td>
	                 <form:input path="id" size="50" type="text" readonly="true" placeholder="아이디"/>
	                 <span class="fieldError"><form:errors path="id" /></span>
	             </td>                
        	</tr>
        	
        	<tr>
	             <th>비밀번호</th>
	             <td>
	                 <form:input path="pass" size="50" type="password" placeholder="비밀번호"/>
	                 <span class="fieldError"><form:errors path="pass" /></span>
	             </td>                
        	</tr>
        	
        	<tr>
	             <th>비밀번호 확인</th>
	             <td>
	                 <form:input path="pass2" size="50" type="password" placeholder="비밀번호 확인"/>
	                 <span class="fieldError"><form:errors path="pass2" /></span>
	             </td>                
        	</tr>
        	
        	<tr>
	             <th>이름</th>
	             <td>
	                 <form:input path="name" size="50" type="text" placeholder="이름"/>
	                 <span class="fieldError"><form:errors path="name" /></span>
	             </td>                
        	</tr>
        	
        	<tr>
	             <th>전화번호</th>
	             <td>
	                 <form:input path="phone" size="50" type="text" placeholder="전화번호"/>
	                 <span class="fieldError"><form:errors path="phone" /></span>
	             </td>                
        	</tr>
        	
        	<tr>
	             <th>이메일</th>
	             <td>
	                 <form:input path="email" size="50" type="text" placeholder="이메일"/>
	                 <span class="fieldError"><form:errors path="email" /></span>
	             </td>                
        	</tr>
        	</table>
        	
        	<!-- <input type="submit" value="수정" /> -->
        	<div class="container">
        	<button type="submit" value="수정" class="btn btn-outline-dark">수정</button>
        	
			<button type="button" class="btn btn-outline-dark" onclick='Delete()'>탈퇴</button><br><br>			
					
			<button type="reset" class="btn btn-outline-dark" onclick="history.back()">취소</button>
			</div>
			</form:form>
			
			 <%-- 로그인 상태에 따라 다른 버튼 표시(로그인 한 상태+ 세션아이디와 글쓴 아이디가 같으면 버튼이 보임 --%>
				<%-- <div class="container">
					<c:choose>
						<c:when test="${loginUser.name eq Breakdownview.writerId}">			
						<a href="Breakdownedit?bno=${Breakdownview.bno}" class="btn btn-outline-dark">수정</a>
						
							<form id="deleteForm" action="Breakdowndelete" method="post">
								<input type="hidden" name="bno" value="${Breakdownview.bno}" /> 
								<button type="submit" class="btn btn-outline-dark">삭제</button>
							</form>				
						</c:when>			
					</c:choose>
				</div>
							
			</div></div>
			</form:form>
			</div>
		</div></div> --%>
        	
									
				
				<%-- <div class="row justify-content-center">
					<div class="col-md-4">
						<div class="mb-3">
							아이디
							<form:input path="id" type="text" readonly="true" placeholder="아이디"/>
						</div>
						
						<div class="mb-3">
							비밀번호
							<form:input path="pass" type="password" placeholder="비밀번호"/>
						</div>
						
						<div class="mb-3">
							비밀번호 재확인
							<form:input path="pass2" type="password" placeholder="비밀번호 재확인"/>
						</div>
						
						<div class="mb-3">
							이름
							<form:input path="name" type="text" placeholder="이름"/>
						</div>
						
						<div class="mb-3">
							전화번호
							<form:input path="phone" type="text" placeholder="전화번호"/>
						</div>
						
						<div class="mb-3">
							이메일
							<form:input path="email" type="text" placeholder="이메일"/>
						</div> --%>
							
				<%-- <p align="left">
					<label for="id">아이디</label>
					<span class="fieldError"><form:errors path="id" /></span>
				</p>
				<form:input path="id" type="text" readonly="true" placeholder="아이디" />
				
				<p align="left">
					<label for="pass">비밀번호</label>
					<span class="fieldError"><form:errors path="pass" /></span>
				</p>
				<form:input path="pass" type="password" placeholder="비밀번호" />
				
				<p align="left">
					<span class="fieldError"><form:errors path="pass2" /></span>
				</p>
				<form:input path="pass2" type="password" placeholder="비밀번호 확인" />
				
				<p align="left">
					<label for="name">이름</label>
					<span class="fieldError"><form:errors path="name" /></span>
				</p>
				<form:input path="name" type="text" placeholder="이름" />			
				
				<p align="left">
					<label for="phone">전화번호</label>
					<span class="fieldError"><form:errors path="phone" /></span>
				</p>
				<form:input path="phone" type="text" placeholder="전화번호" />
				
				<p align="left">
					<label for="email">이메일</label>
					<span class="fieldError"><form:errors path="email" /></span>
				</p>
				<form:input path="email" type="text" placeholder="이메일" />	 --%>		
			</div>
			<br>			
			
			
		
		
</body>
</html>