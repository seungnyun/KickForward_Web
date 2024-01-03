<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ArrayList<Map> gpsList = (ArrayList) request.getAttribute("gpsList");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../webapp/resources/css/styles.css">
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



h5 {
	padding: 60px 0 30px 0;;
	font-size: 32px;
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
	border-collapse: separate;
	border-spacing: 10px; /* 원하는 간격(px)으로 조절하세요 */
	text-align: center;
}

table th, table td {
	padding: 10px; /* 셀 내용과 셀 테두리 사이의 간격을 조절하세요 */
}

.table {
	border-collapse: collapse;
	border-top: 2px solid #202020;
}

.table th {
	color: #000000;
	background: #f3f3f3f3;
	text-align: center;
}

.table th, .table td {
	padding: 10px;
	border-bottom: 1px solid #ddd;
}

.table th:first-child, .table td:first-child, .table td:forth-child {
	border-left: 0;
	text-align: center;
}

.table th:last-child, .table td:last-child, .table td:forth-child {
	border-right: 0;
	text-align: center;
}

.table tr td:first-child {
	text-align: center;
}

.table caption {
	caption-side: bottom;
	display: none;
}


.addbutton {
  background-color: #000000;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 10px 20px;
  margin: 4px 2px;

}



.deletebutton {
	padding: 1px 8px;
    background: #f0f0f0;
    border: 1.8px solid;

}


</style>
<script type="text/javascript">	

	function fnCmdEdit(recordNo) {
		document.kickForm.no.value = recordNo;
		document.kickForm.action = 'kedit';
		document.kickForm.submit();
	}

	function fnCmdDelete(recordNo) {
		document.kickForm.no.value = recordNo;
		document.kickForm.action = 'kdelete';
		document.kickForm.submit();
	}
	
	<!-- 페이징 구현 스크립트 -->
		$(document).ready(function() {
			var moveForm = $("movedForm");

			$(".move").on("click", function(e) {
				e.preventDefault();
				var noValue = $(this).attr("href");
				moveForm.find("input[name='no']").val(noValue);
				moveForm.attr("action", "/kgps");
				moveForm.submit();
			});

			$(".pageInfo a").on("click", function(e) {
				e.preventDefault();
				moveForm.find("input[name='pageNum']").val($(this).attr("href"));
				moveForm.attr("action", "/kgps");
				moveForm.submit();
			});			
		});	
</script>
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
						<a class="navbar-brand fw-bold" href="/admin/home">Kick
							Forward</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
							aria-controls="navbarResponsive" aria-expanded="false"
							aria-label="Toggle navigation">
							Menu <i class="bi-list"></i>
						</button>
						<div class="collapse navbar-collapse" id="navbarResponsive">
							<ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
								<li><a class="nav-link me-lg-3" href="/admin/service">서비스</a></li>
								<li><a class="nav-link me-lg-3" href="/admin/team">킥포워드
										팀</a></li>
								<li><a class="nav-link me-lg-3" href="/admin/support">고객센터</a></li>
								<%-- 로그인 상태에 따라 다른 버튼 표시 --%>
								<c:choose>
									<c:when test="${empty loginAdmin}">
										<li><a class="nav-link me-lg-3" href="/admin/login">로그인</a></li>
									</c:when>
									<c:otherwise>
										<li><a class="nav-link me-lg-3" href="/admin/ulist">회원
												목록</a></li>
										<li><a class="nav-link me-lg-3" href="/admin/kgps">킥보드
												목록</a></li>
										<li><a class="nav-link me-lg-3" href="/admin/logout">로그아웃</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	

	<div id="map" style="width: 50%; height: 700px; float: right;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=81bffb9da404a0600e9de00d3dfce37a"></script>
	<script>
    
        var mapContainer = document.getElementById('map');

        var mapOption = {
            center: new kakao.maps.LatLng(37.212350, 126.946834), // 초기 지도 중심 좌표(학교)
            level: 3
        };

        var map = new kakao.maps.Map(mapContainer, mapOption);
        
        
        var imageSrc = "../webapp/resources/assets/img/kicon1.png" // 마커이미지의 주소입니다    
        imageSize = new kakao.maps.Size(40, 50), // 마커이미지의 크기입니다
        imageOption = {offset: new kakao.maps.Point(28, 43)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
        
     // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
			imageOption), markerPosition = new kakao.maps.LatLng(37.212350,	126.946834); // 마커가 표시될 위치입니다

        // Java 코드로 데이터베이스에서 모든 위치 정보를 가져와서 마커를 표시

        //
        var gpsList = <%=gpsList%>;
        console.log(gpsList);

        
        for (var i in gpsList) {
        	
        	var gps = gpsList[i];
        
     // 마커를 생성하고 지도에 표시
        var markerPosition = new kakao.maps.LatLng(gps.latitude, gps.longitude);
        var serialnumber = gps.serialnumber;
        var marker = new kakao.maps.Marker({
            position: markerPosition,
            image: markerImage // 마커이미지 설정 
        });
        marker.setMap(map);

        // 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
        function createInfoWindow(marker, serialnumber) {
            var iwContent = '<div style="padding:5px;">' + serialnumber + '</div>';
            var iwRemoveable = true;
            var infowindow = new kakao.maps.InfoWindow({
                content: iwContent,
                removable: iwRemoveable
            });

            // 인포윈도우를 생성합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: iwContent,
                removable: iwRemoveable
            });

            // 마커에 클릭 이벤트를 등록합니다
            kakao.maps.event.addListener(marker, 'click', function () {
                // 마커 위에 인포윈도우를 표시합니다
                infowindow.open(map, marker);
            });
        }

        // createInfoWindow 함수를 호출하여 인포윈도우를 생성하고 이벤트 핸들러와 연결
        createInfoWindow(marker, serialnumber);

     }   
        
    </script>

	<div class="container" style="width: 50%; height: 700px; float: left;">
		

		<h5>킥보드 목록</h5>
		
		<form:form id="kickForm" name="kickForm" method="post">
			<input type="hidden" name="no" />

			<table class="table table-sm">
				<thead>
					<tr>
						<th>번호</th>
						<th>시리얼 넘버</th>
						<th>사용 중</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="result" items="${gpsList}" varStatus="status">
						<tr>
							<td>${result.no}</td>
							<td><a href="#" style= "text-decoration-line: none" onclick="fnCmdEdit('${result.no}')">${result.serialnumber}</a></td>
							<td>${result.in_use}</td>
							<!-- <td><a href="#" onclick="fnCmdEdit('${result.no}')">수정</a></td> -->
							<td><button class="deletebutton"><a href="#"  style= "text-decoration: none; color: black;" onclick="fnCmdDelete('${result.no}')">삭제</a></button></td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- <td><a href="kgps">위치</a></td> -->
		</form:form>

		
		
		<button class="addbutton"><a href="kadd" style="text-decoration: none; color: white;">등록</a><br></button>

	</div>

	<!-- 번호페이지구현 -->
	<%-- <div class="pageInfo_wrap">
			<div class="pageInfo_area">

				<ul id="pageInfo" class="pageInfo">


					<!--이전 페이지 이동 버튼 -->
					<c:if test="${pageMaker.prev}">
						<li class="pageInfo_btn previous"><a
							href="/admin/kgps?pageNum=${pageMaker.startPage - 1}&amount=${pageMaker.cri.amount}">Previous</a>
						</li>
					</c:if>

					<!-- 각 번호 페이지 버튼 -->
					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li class="pageInfo_btn"><a
							href="/admin/kgps?pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a></li>
					</c:forEach>

					<!--다음 페이지 이동 버튼 -->
					<c:if test="${pageMaker.next}">
						<li class="pageInfo_btn next"><a
							href="/admin/kgps?pageNum=${pageMaker.endPage + 1}&amount=${pageMaker.cri.amount}">Next</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div> --%>

	<form id="moveForm" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	</form>



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
			<li><a href="#" style="text-decoration-line: none">킥포워드</a></li>
			<li><a href="#" style="text-decoration-line: none">킥포워드 팀</a></li>
		</div>

		<div class="footer-content">
			<h4>서비스 소개</h4>
			<li><a href="#" style="text-decoration-line: none">서비스</a></li>
			<li><a href="#" style="text-decoration-line: none">고객센터</a></li>
		</div>

		<div class="footer-content">
			<h4>문의하기</h4>
			<li><a href="#" style="text-decoration-line: none">kick@kickforward.com</a></li>
			<li><a href="#" style="text-decoration-line: none">카톡
					@kickforward</a></li>
		</div>

	</section>

</body>
</html>
