<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	min-height: 100vh;
	background: #ffffff;
	
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	 box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
}
</style>
</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h3 class="mb-3 text-center">킥보드 수정</h3>
				<form:form modelAttribute="kick" name="kickEdit" method="post"
					action="keditSave">
					<input type="hidden" id="no" name="no" value="${kick.no}" />

					<div class="row justify-content-center">
						<div class="col-md-4">
							<div class="mb-3">
								시리얼
								<form:input path="serialnumber" class="form-control"
									value="${kick.serialnumber}" />
							</div>

							<div class="mb-3">
								위도
								<form:input path="latitude" class="form-control"
									value="${kick.latitude}" />
							</div>

							<div class="mb-3">
								경도
								<form:input path="longitude" class="form-control"
									value="${kick.longitude}" />
							</div>

							<div class="mb-3">
								상태
								<form:input path="in_use" class="form-control"
									value="${kick.in_use}" />
							</div>
							<br>




							<button type="submit" class="btn btn-dark btn-lg btn-block">수정</button>
							
						</div>
					</div>
				</div>
			</div>
		</div>


	<!-- <table border = "1">						
			<tr>
				<th>시리얼 번호</th>
				<td><form:input path = "serialnumber" size = "50" value = "${kick.serialnumber}"/>
				<span class = "fieldError"><form:errors path = "serialnumber"/></span></td>
			</tr>
			
			<tr>
				<th>위도</th>
				<td><form:input path = "latitude" size = "50" value = "${kick.latitude}"/>
				<span class = "fieldError"><form:errors path = "latitude"/></span></td>
			</tr>
			
			<tr>
				<th>경도</th>
				<td><form:input path = "longitude" size = "50" value = "${kick.longitude}"/>
				<span class = "fieldError"><form:errors path = "longitude"/></span></td>
			</tr>
			
			<tr>
				<th>상태</th>
				<td><form:input path = "in_use" size = "50" value = "${kick.in_use}"/>
				<span class = "fieldError"><form:errors path = "in_use"/></span></td>
			</tr>			
		</table>-->
	</form:form>
</body>
</html>