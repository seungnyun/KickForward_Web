<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<link rel="stylesheet" type="text/css" href="../webapp/resources/css/style.css">
<style>
p {
	display: flex; /* 유연한 박스 레이아웃 사용 */
	align-items: center; /* 수직 가운데 정렬 */
}

label {
	min-width: 100px; /* 레이블의 최소 너비 설정 */
	padding-right: 10px; /* 레이블과 입력 필드 사이 간격 설정 */
}

button {
background-color: #000;
    color: #fff;
}



.black-button {
    background-color: #000;
    color: #fff;
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
.black-button {
    background-color: #000;
    color: #fff;
}
button {
    background-color: #000;
    color: #fff;
}
.form button:hover,.form button:active,.form button:focus {
  background: #000000;
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
	<div class="form">
		<div align="center" class="body">
			<h2>회원정보 수정</h2>
			<form:form id="editForm" modelAttribute="user" method="post"
				action="editU">

				<p align="left">
					<label for="id">아이디</label> <span class="fieldError"><form:errors
							path="id" /></span>
				</p>
				<form:input path="id" type="text" readonly="true" placeholder="아이디" />

				<p align="left">
					<label for="pass">비밀번호</label> <span class="fieldError"><form:errors
							path="pass" /></span>
				</p>
				<form:input path="pass" type="password" placeholder="비밀번호" />

				<p align="left">
					<span class="fieldError"><form:errors path="pass2" /></span>
				</p>
				<form:input path="pass2" type="password" placeholder="비밀번호 확인" />

				<p align="left">
					<label for="name">이름</label> <span class="fieldError"><form:errors
							path="name" /></span>
				</p>
				<form:input path="name" type="text" placeholder="이름" />

				<p align="left">
					<label for="phone">전화번호</label> <span class="fieldError"><form:errors
							path="phone" /></span>
				</p>
				<form:input path="phone" type="text" placeholder="전화번호" />

				<p align="left">
					<label for="email">이메일</label> <span class="fieldError"><form:errors
							path="email" /></span>
				</p>
				<form:input path="email" type="text" placeholder="이메일" />

				<br>

				<button type="submit" class="black-button">수정</button>
				<br>
				<br>
				<button type="button" class="black-button" onclick='Delete()'>탈퇴</button>
				<br>
				<br>
				<button type="reset" class="black-button" onclick="history.back()">취소</button>


			</form:form>
		</div>
	</div>
</body>
</html>