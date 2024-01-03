<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

.container {
	width: 400px;
	margin: 0 auto;
	padding-top: 50px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-control {
	width: 100%;
	padding: 10px;
	font-size: 14px;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	border-radius: 4px;
	border: none;
	color: #fff;
	background-color: #4CAF50;
	cursor: pointer;
}

.btn-primary {
	background-color: #4CAF50;
}

.btn-primary:hover {
	background-color: #45a049;
}

.btn-danger {
	background-color: #f44336;
}

.btn-danger:hover {
	background-color: #e53935;
}

.alert-danger {
	color: #f44336;
	font-size: 12px;
	margin-top: 5px;
	display: block;
}

.alert-danger.show {
	display: block;
}

.alert-danger::before {
	content: "⚠ ";
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$("#btn_idcheck").click(function(){  //btn_idcheck를 클릭했을때 반응이 옴
	
	 //사용자가 입력한 값을 가져와야 함
	 var id = $.trim($("#id").val()); //val()함수를 이용시 ("#id")인 현재 입력된 값을 가져옴 id에 저장 trim으로 앞뒤 공백 제거
	 if (id == "") { //아이디가 공백일때
		 alert("아이디를 입력해주세요"); 
	 $("#id").focus(); //커서가 그쪽으로 이동함
	 return false;//오류이기 때문에 
	 }//데이터의 유효성 체크
	
	 
	 //다 됬으면 데이터를 (경로)로 보내야함
	 //데이터 전송 - 비동기 전송 방식(ajax)
	 $.ajax({
		 
		 type:"POST",
		 data:"id=" +id ,  //id값만 전송시킬려고 함 - json(전송)타입 형태로 전송  
		  //실제 데이터값 +id 가 "id="의 이름을 통해서 전송됨
		 async:false,               //false -> 비동기방식  true -> 동기방식
		 url: "idcheck.do", //어디로 전송할 것인가?
		 dataType:"text",
		 
		 //전송후 세팅  
		 success: function(result){ //중복체크 후 결과를 result라는 매개변수를 통해 success로 데이터 전달
			 if (result == "ok"){
				 idCheckSuccess=true;
				 alert("사용가능합니다.");
			 } else {
				 alert("이미 사용중입니다.");				 
			 }
		 },
		 error: function(){//장애발생
			 alert("오류발생");
		 }		 
	 });
	 
}); 

</script>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- <script>
	// findAddr() 함수 정의
	function findAddr() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 사용자 주소를 받아올 변수를 정의한다.
				var addr = '';

				// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우(R)
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 주소 입력창에 받아온 주소를 넣는다.
				$("input[name='addr1']").val(addr);
				$("input[name='zip']").val(data.zonecode);
				
			}
		}).open();
	}
</script> -->

<script>
		let idCheckSuccess = false;
		let idCheck =false;

		function getMail() {
			var userEmail1 = $("#userEmail1").val();
			
			var emailAddress = userEmail1;
			return {userEmail1, emailAddress};
		}


		$(document).ready(function () {
				$("#mail-sender").click(function () {
					var {userEmail1, emailAddress} = getMail();

					if (!userEmail1) {
						alert("이메일을 입력해주세요.");
						return;
					}
					$.ajax({
						url: "/email-sender?email="+emailAddress,
						method: "GET",
						success: function (response) {
							alert("이메일 전송이 성공하였습니다.");
						},
						error: function (request, status, error) {
							alert("이메일 전송에 실패하였습니다.");
						},
					});
				});

			$("#mail-Check-Btn").click(function () {
				var {userEmail1, emailAddress} = getMail();
				var certificationNumber = $("#certificationNumber").val();
				if (!userEmail1) {
					alert("이메일을 입력해주세요.");
					return;
				}
				$.ajax({
					url: "/email-check?email="+emailAddress+"&certificationNumber="+certificationNumber,
					method: "GET",
					success: function (response) {
						alert("인증성공");
						idCheckSuccess = true;
					},
					error: function (request, status, error) {
						alert("인증실패");
						idCheckSuccess = false;
					},
				});
			});

			$("#idCheck").click(function () {
			 	let id=$("#id").val();
				if (!id) {
					alert("아이디를 입력하지 않았습니다.");
					return false;
				}
				if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){
					alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
					return false;
				}
				if(id.length<=3){
					alert("아이디는 4글자 이상이어야 합니다.");
					return false;
				}

				$.ajax({
					url: "/idcheck.do?id="+id,
					method: "GET",
					success: function (response) {
						alert("사용 가능한 아이디입니다.");
						idCheck = true;
					},
					error: function (request, status, error) {
						alert("아이디가 중복됩니다.");
						idCheck = false;
					},
				});
			});


		});
	</script>

<!-- 회원가입 전처리 (유효성검사) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();		
		
		$("#writeForm").submit(function() {
			alert("회원등록 무시");
			// submit을 무시 시킨다.
			return false;
		});		
	});
</script>

<script>

//아이디 길이 변화에 따른 메세지 변화
  $(document).ready(function() {
	  
	  
    $("#id").keyup(function() {
      var id = $(this).val();
      // 4자 미만일때 처리
      if (id.length < 4) {
        $("#idCheckDiv").removeClass("alert-success");
        $("#idCheckDiv").addClass("alert-danger");
        $("#idCheckDiv").text("아이디는 4자 이상 입력.");
        return;
      }
	  // 20자 초과 시 처리
      if (id.length > 20) {
        $("#idCheckDiv").removeClass("alert-success");
        $("#idCheckDiv").addClass("alert-danger");
        $("#idCheckDiv").text("아이디는 20자 이내 입력.");
        return;
      }
    });
    
    
  });
</script>

<script>

  $(document).ready(function() { //$(document).ready(function() 처음	  
		  
	//비번유효성 검사	  
	var passCheck = false;
  
	//비밀번호 처리 이벤트	 
    $("#pass").keyup(function() {
    	
    	passCheck = false;
    	
    	
      var pass = $(this).val();
      // 4자 미만일때 처리	
      if (pass.length < 4) {
        $("#passCheckDiv").removeClass("alert-success");
        $("#passCheckDiv").addClass("alert-danger");
        $("#passCheckDiv").text("비밀번호 4자 이상 입력.");
        return;
      }   
      
      // 20자 초과 시 처리
      if (pass.length > 20) {
        $("#passCheckDiv").removeClass("alert-success");
        $("#passCheckDiv").addClass("alert-danger");
        $("#passCheckDiv").text("비밀번호는 20자 이내 입력.");
        return;
      }
     
      //4~20 사이 pw2와 같은지 체크
      var pass2 = $("#pass2").val();
      if(pass == pass2){
    	  //비밀번호와 비밀번호 확인이 같은 경우
    	  $("#passCheckDiv, #pass2CheckDiv").removeClass("alert-danger");
    	  $("#passCheckDiv, #pass2CheckDiv").addClass("alert-success");
    	  $("#passCheckDiv, #pass2CheckDiv").text("비밀번호가 서로 같습니다.");
    	  
    	  passCheck = true; //비번 유효성 검사
    	  
      } else {
    	  //비밀번호와 비밀번호 확인 값이 서로 같지 않은 경우
    	  $("#passCheckDiv, #pass2CheckDiv").removeClass("alert-danger");
    	  $("#passCheckDiv, #pass2CheckDiv").addClass("alert-success");
    	  $("#passCheckDiv").text("비밀번호와 비밀번호 확인은 같아야 합니다.");
    	  if (pass2.length < 4)
    		  $("#pass2CheckDiv").text("비밀번호 4자 이상 입력.");
    	  else if (pass2.length > 20)
    		  $("#pass2CheckDiv").text("비밀번호 20자 이내 입력.");
    	  else
    		  $("#pass2CheckDiv").text("비밀번호와 비밀번호 확인은 같아야 합니다.");
    	  
      }
      
    });
  
  
  //비밀번호 확인 처리 이벤트
    $("#pass2").keyup(function() {
    	
    	passCheck = false; // 비번유효성 검사 변수
    	
    	
        var pass2 = $(this).val();
        // 4자 초과	
        if (pass2.length < 4) {
          $("#pass2CheckDiv").removeClass("alert-success");
          $("#pass2CheckDiv").addClass("alert-danger");
          $("#pass2CheckDiv").text("비밀번호 4자 이상 입력.");
          return;
        }
        
        // 20자 초과 시 처리
        if (pass2.length > 20) {
          $("#pass2CheckDiv").removeClass("alert-success");
          $("#pass2CheckDiv").addClass("alert-danger");
          $("#pass2CheckDiv").text("비밀번호는 20자 이내 입력.");
          return;
        }  
        
      //4~20 사이 pw2와 같은지 체크
        var pass = $("#pass").val();
        if(pass == pass2){
      	  //비밀번호와 비밀번호 확인이 같은 경우
      	  $("#pass2CheckDiv, #passCheckDiv").removeClass("alert-danger");
      	  $("#pass2CheckDiv, #passCheckDiv").addClass("alert-success");
      	  $("#pass2CheckDiv, #passCheckDiv").text("비밀번호가 서로 같습니다.");
      	  
      	 passCheck = true; //비번 유효성 검사 변수
      	  
        } else {
      	  //비밀번호와 비밀번호 확인 값이 서로 같지 않은 경우
      	  $("#passCheckDiv, #pass2CheckDiv").removeClass("alert-danger");
      	  $("#passCheckDiv, #pass2CheckDiv").addClass("alert-success");
      	  $("#passCheckDiv").text("비밀번호와 비밀번호 확인은 같아야 합니다.");
      	  if (pass.length < 4)
      		  $("#passCheckDiv").text("비밀번호 4자 이상 입력.");
      	  else if (pass.length > 20)
      		  $("#passCheckDiv").text("비밀번호 20자 이내 입력.");
      	  else
      		  $("#passCheckDiv").text("비밀번호와 비밀번호 확인은 같아야 합니다.");     	  
        }
    });
  
    $("#writeForm").submit(function(){

    	// 비밀번호 유효성검사
    	if(!passCheck) {
    		alert("비밀번호와 비밀번호 확인의 길이가 4~20이여야 하고 같아야합니다.");
    		$("#pass").focus();
    		return false; //form 전송 무시시킴.
    	}
    	
		if (false/*!idCheckSuccess*/) {
			alert("이메일인증을 완료해주세요");
			$("#certificationNumber").focus();
			return false;
		}
		
		if (!idCheck) {
			alert("아이디 중복확인을 해주세요");
			$("#id").focus();
			return false;
		}

		alert("회원가입이 완료되었습니다.");      		
      		
      	});    
       
  });//$(document).ready(function() 끝
</script>

<script>
$(function() {

	$("#pass").keyup(function(){		
		
	});

	});
</script>

</head>
<body>

	<div class="container">

		<h2>회원 가입</h2>
		<form action="join" method="post" id="writeForm">

			<div class="form-group">
				<label for="id">아이디</label> <input id="id" name="id"
					required="required" pattern="[A-Za-z0-9]{4,20}"
					placeholder="아이디 입력" class="form-control" autocomplete="off">
				<input type="button" class="btn btn-primary" value="중복확인"
					id="idCheck">
				<div class="alert alert-danger" id="idCheckDiv">아이디는 4자 이상
					입력해야 합니다.</div>
			</div>
			<br>

			<div class="form-group">
				<label for="pass">비밀번호</label> <input id="pass" name="pass"
					required="required" pattern=".{4,20}" placeholder="비밀번호 입력"
					class="form-control" type="password">
				<div class="alert alert-danger" id="passCheckDiv">비밀번호는 4자 이상
					입력해야 합니다.</div>
			</div>
			<br>

			<div class="form-group">
				<label for="pass2">비밀번호 확인</label> <input id="pass2" name="pass2"
					required="required" pattern=".{4,20}" placeholder="비밀번호 확인 입력"
					class="form-control" type="password">
				<div class="alert alert-danger" id="pass2CheckDiv">비밀번호는 4자 이상
					입력해야 합니다.</div>
			</div>
			<br>

			<div class="form-group">
				<label for="name">이름</label> <input id="name" name="name"
					required="required" pattern="[가-힣]{2,10}" placeholder="이름 입력"
					class="form-control">
			</div>
			<br>

			<div class="form-group">
				<label for="phone">전화번호</label> <input id="phone" name="phone"
					required="required" placeholder="전화번호 입력" class="form-control">
			</div>
			<br>

			<!-- 이메일 -->
			<div class="form-group">
				<label for="email">이메일</label>

				<div class="input-group">
					<input type="text" class="form-control" name="email"
						id="userEmail1" placeholder="이메일" required="required"> 
					<div class="input-group-addon">
						<button type="button" class="btn btn-primary" id="mail-sender">인증번호
							전송</button>
					</div>
				</div>
			</div>

			<!-- 이메일 본인인증 -->
			<div class="mail-check-box">
				<input class="form-control mail-check-input"
					placeholder="인증번호 6자리를 입력해주세요!" maxlength="6"
					id="certificationNumber" required="required">
			</div>
			<span id="mail-check-warn"></span>

			<div class="input-group-addon">
				<button type="button" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
			</div>
			<br>


			<!-- 우편번호 -->
			<!-- <div class="form-group">
				<label for="zip">우편번호</label> <input id="zip" name="zip"
					required="required" placeholder="우편번호 입력" class="form-control">
					<button type="button" id="addressSearch" onclick="findAddr()">우편번호
					검색</button>
			</div>


			주소
			<div class="form-group">
				<label for="addr1">주소</label> <input type="text" id="addr1"
					name="addr1" required="required" placeholder="주소 입력"
					class="form-control">				
			</div>
			<br>


			상세 주소
			<div class="form-group">
				<label for="addr2">상세주소</label> <input id="addr2" name="addr2"
					required="required" placeholder="상세주소 입력" class="form-control">
			</div>
			<br> -->

			<p>
				<input type="submit" value="회원가입"> <input type="button"
					value="새로고침" onclick="location.reload()"> <input
					type="button" value="취소" onclick="history.back()">
			</p>
		</form>
	</div>

</body>
</html>