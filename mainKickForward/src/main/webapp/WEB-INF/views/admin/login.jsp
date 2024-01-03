<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../resources/jsp_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../webapp/resources/css/style.css">
</head>
<body>
	
  <div style="height: 50px;"></div>
	<div style="text-align:center;">
  	<h2 style="font-size: 30px;"><a href="/admin/home" class="loginlogo" style="text-decoration: none; color: black;">Kick Forward(관리자)</a></h2>
  </div>

<div class="login-page">
<div class="form">
<form:form class="login-form" modelAttribute="admin" method="post" action="login">
<p align="left"><span class="fieldError"><form:errors path="id"></form:errors></span></p>
<form:input path='id' type="text" placeholder="ID"/>

<p align="left"><span class="fieldError"><form:errors path="pass"></form:errors></span></p>
<form:input path='pass' type="password" placeholder="Password"/>

<button type="submit">로그인</button>

<p class="message">

<ul id="ullog">
<li id="lilogb"><a href="join">회원가입</a></li>
<li id="lilog"><a href="findId">아이디 찾기</a></li>

<li id="lilog"><a href="findPass">비밀번호찾기</a></li>

</ul></p>

</form:form>
</div>
</div>

</body>
</html>