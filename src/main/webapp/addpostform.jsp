<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addpost.jsp" method="post">
<table>
    <tr><td>밥고이름:</td><td><input type="text" name="babgoName"/></td></tr>
    <tr><td>요일:</td><td><input type="text" name="babgoDate"/></td></tr>
    <tr><td>시간:</td><td><input type="text" name="babgoTime"/></td></tr>
    <tr><td>추가설명:</td><td><textarea cols="50" rows="5" name="babgoDescription"></textarea></td></tr>

    <tr><td><a href="posts.jsp">Back to List</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>