<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bootpay 정기결제 예제</title>
    <!-- Bootpay 라이브러리 파일 불러오기 -->
    <script src="https://js.bootpay.co.kr/bootpay-4.3.1.min.js" type="application/javascript"></script>
</head>
<body>

<!-- 정기결제 요청 스크립트 실행 -->
<script>
    // JSP 페이지 로드 시 정기결제 요청 코드 실행
    window.addEventListener("load", function() {
        // 정기결제 요청 코드
        Bootpay.requestSubscription({
            application_id: '645f193b3049c8001a96868f',
            pg: '웰컴',
            price: 1000,
            tax_free: 0,
            order_name: '정기결제 입니다',
            subscription_id: (new Date()).getTime(),
            user: {
                username: '홍길동',
                phone: '01000000000'
            },
            extra: {
                subscription_comment: '매월 1,000원이 결제됩니다',
                subscribe_test_payment: true
            }
        }).then(
            function (response) {
                if (response.event === 'done') {
                    console.log(response.data.receipt_id); // 확인용
                    alert('카드등록이 완료되었습니다.');

                    // receipt_id를 form으로 POST 방식으로 보내기
                    var form = document.createElement("form");
                    form.setAttribute("method", "post");
                    form.setAttribute("action", "/Pay");

                    var input = document.createElement("input");
                    input.setAttribute("type", "hidden");
                    input.setAttribute("name", "receipt_id");
                    input.setAttribute("value", response.data.receipt_id);

                    form.appendChild(input);
                    document.body.appendChild(form);
                    form.submit();
                }
            }
        ).catch(function (error) {
            console.log(error.message);
        });
    });
</script>

</body>
</html>
