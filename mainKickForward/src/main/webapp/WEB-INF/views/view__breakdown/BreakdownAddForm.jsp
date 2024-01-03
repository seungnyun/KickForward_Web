<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../resources/jsp_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="webapp/resources/css/style.css">
<link href="webapp/resources/css/styles.css" rel="stylesheet" />

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"	rel="stylesheet">

<style>
    caption {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
        color: #333;
    }

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        background-color: #f7f7f7;
    }

    table {
        width: 500px;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin: 0 auto;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
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

table {
    width: 50%; /* 원하는 크기로 조정하세요. */
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin: 0 auto;
}
.center-heading {
    text-align: center;
}
section {
	padding: 80px 13% 70px;
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

.footer-content li a{
	display: block;
	color: #d6d6d6;
	font-size:14px;
	font-weight:400;
	transition: all .40s ease;
}

.footer-content li a:hover{
	transform: transLateY(-3px) transLateX(-5px);
	color: #fff;
	}

.footer-content p {
	color:#d6d6d6;
	font-size: 16px;
	line-height: 30px;
	margin: 20px 0;
	
}
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
	</nav></div></div></div>
	
	<div class="container">		
		<form:form modelAttribute="board" name="boardAdd" method="post" action="BreakdownaddSave" enctype="multipart/form-data"><br><br><br><br><br><br>
        <h3 class="center-heading">고장 신고</h3><br>
        <table border="1">

        <tr>
             <th>글제목</th>
             <td>
                 <form:input path="title" size="50" />
                 <span class="fieldError"><form:errors path="title" /></span>
             </td>                
        </tr>
            
        <tr>
            <th>작성자</th>
            <td>
                <form:input path="writerId" size="50" value="${loginUser.name}" readonly="true"/>
                <span class="fieldError"><form:errors path="writerId" /></span>
            </td>
        </tr>            
            
         <tr>
            <th>킥보드 일련번호</th>
            <td>
                <form:input path="kbnumber" size="50" />
                <span class="fieldError"><form:errors path="kbnumber" /></span>
            </td>
        </tr>            
            
        <tr>
            <th>킥보드 위치</th>
            <td>
                <form:input path="location" size="50" />
                <span class="fieldError"><form:errors path="location" /></span>
            </td>
        </tr>
        
        <tr>
            <th>고장사유</th>
            <td>
                <form:input path="content" size="50" />
                <span class="fieldError"><form:errors path="content" /></span>
            </td>
        </tr>
        
        <tr>
			<td bgcolor="orange" width="70">첨부파일</td><td align="left">
			<input type="file" name="uploadFile"/></td>
		</tr>
			
    </table>
        
        <input type="submit" value="등록" />
        
    </form:form>

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
			<li><a href="#" style = "text-decoration-line: none">킥포워드</a></li>
			<li><a href="#" style = "text-decoration-line: none">킥포워드 팀</a></li>			
		</div>

		<div class="footer-content">
			<h4>서비스 소개</h4>
			<li><a href="#" style = "text-decoration-line: none">서비스</a></li>
			<li><a href="#" style = "text-decoration-line: none">고객센터</a></li>	
		</div>

		<div class="footer-content">
			<h4>문의하기</h4>
			<li><a href="#" style = "text-decoration-line: none">kick@kickforward.com</a></li>
			<li><a href="#" style = "text-decoration-line: none">카톡 @kickforward</a></li>
		</div>
		
	</section>


</body>
</html>

