<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../resources/jsp_header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	margin-top: 10%; /* Set margin to 0 auto for centering */
	
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
	background-color: #000000;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.fieldError {
	color: red;
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
}
</style>

</head>

<body id="page-top">
	<form:form modelAttribute="board" name="boardEdit" method="post"
		action="BreakeditSave">
		<input type="hidden" name="bno" value="${board.bno}" />
		<table>
			<caption>신고글 수정</caption>

			<tr>
				<th>작성자</th>
				<td><form:input path="writerId" size="50"
						value="${board.writerId}" /> <span class="fieldError"><form:errors
							path="writerId" /></span></td>
			</tr>

			<tr>
				<th>제목</th>
				<td><form:input path="title" size="50" value="${board.title}" />
					<span class="fieldError"><form:errors path="title" /></span></td>
			</tr>

			<tr>
				<th>킥보드 일련번호</th>
				<td><form:input path="kbnumber" size="50"
						value="${board.kbnumber}" /> <span class="fieldError"><form:errors
							path="kbnumber" /></span></td>
			</tr>

			<tr>
				<th>킥보드 위치</th>
				<td><form:input path="location" size="50"
						value="${board.location}" /> <span class="fieldError"><form:errors
							path="location" /></span></td>
			</tr>

			<tr>
				<th>고장사유</th>
				<td><form:input path="content" size="50"
						value="${board.content}" /> <span class="fieldError"><form:errors
							path="content" /></span></td>
			</tr>

		</table>
		<input type="submit" value="수정" />
	</form:form>
</body>
</html>
