
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../resources/jsp_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	color: #999;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
}

.form-control {
	box-shadow: none;
	border-color: #ddd;
}

.form-control:focus {
	border-color: #4aba70;
}

.login-form {
	width: 400px;
	min-height: 500px;
	margin: 0 auto;
	padding: 30px 0;
	text-align: center; /* 로고 가운데 정렬 */
}

.login-form form {
	color: #434343;
	border-radius: 1px;
	margin-bottom: 15px;
	background: #fff;
	border: 1px solid #f3f3f3;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.login-form h4 {
	text-align: center;
	font-size: 22px;
	margin-bottom: 20px;
}

.login-form .avatar {
	color: #fff;
	margin: 0 auto 30px;
	text-align: center;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	z-index: 9;
	background: #000000;
	padding: 15px;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
}

.login-form .avatar i {
	font-size: 62px;
}

.login-form .form-group {
	margin-bottom: 20px;
}

.login-form .form-control, .login-form .btn {
	min-height: 40px;
	border-radius: 2px;
	transition: all 0.5s;
}

.login-form .close {
	position: absolute;
	top: 15px;
	right: 15px;
}

.login-form .btn {
	background: #000000;
	border: none;
	line-height: normal;
}

.login-form .btn:hover, .login-form .btn:focus {
	background: #a5a4a4;
}

.login-form .checkbox-inline {
	float: left;
}

.login-form input[type="checkbox"] {
	margin-top: 2px;
}

.login-form .forgot-link {
	float: right;
}

.login-form .small {
	font-size: 13px;
}

.login-form a {
	color: dimgray;
}



.fieldError {
            color: red;
            font-size: 12px;
            margin-top: 5px;
            display: block;
        }



.text-center  {
	text-align: end;

}

.login-form .logo {
color: #fff;
    margin: 0 auto 30px;
    text-align: center;
    width: 100px;
    height: 100px;
    border-radius: 50%;
    z-index: 9;
    background: #000000;
    padding: 15px;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);


}



</style>
</head>
<body>

	<!--  Request me for a signup form or any type of help  -->
	<div class="login-form">

		<form:form modelAttribute="user" name='findIdForm' method='post'
			action='findId'>
			<img src="/webapp/resources/image/logo.png" class="logo">
			<h4 class="modal-title">아이디 찾기</h4>

			<span class="fieldError" align='center'>${errMsg}</span>
			<div class="form-group">
				<form:input path="name" maxlength="20" class="form-control" placeholder="Name" />
				<span class="fieldError"> <form:errors path="name" />
				</span>

			</div>



			<div class="form-group">
				<form:input type="text" maxlength="50" size="80" path="email"
					 class="form-control" placeholder="E-mail"/>
				<span class="fieldError"> <form:errors path="email" />
				</span>

			</div>



			<div class="form-group small clearfix">



				<input type='submit' value='찾기'
					class="btn btn-primary btn-block btn-lg"> <input
					type="button" value="취소" class="btn btn-primary btn-block btn-lg"
					onclick="history.back()">

			</div>
			
			<div class="text-center small">
			<a href="findPass">비밀번호 찾기 |</a> <a href="join">회원가입</a>
			</div>

			</div>
			

		</form:form>




		


	</div>



</body>
</html>
