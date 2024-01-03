<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>댓글 수정</title>
</head>
<body>
    <h2>댓글 수정</h2>
    <form action="updateComment" method="post">
        <input type="hidden" name="cno" value="${comment.cno}" />
        <input type="hidden" name="bno" value="${comment.bno}" />
        <textarea name="content" rows="4" cols="50">${comment.content}</textarea><br>
        <input type="submit" value="수정" />
    </form>
</body>
</html>
