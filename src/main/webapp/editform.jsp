<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.crud4.dao.BabgoDAO, com.example.crud4.bean.BabgoVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	BabgoDAO babgoDAO = new BabgoDAO();
	String id=request.getParameter("id");
	BabgoVO u=babgoDAO.getBabgo(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getBabgoID() %>"/>
<table>
	<tr><td>밥고이름:</td><td><input type="text" name="babgoName" value="<%=u.getBabgoName()%>"/></td></tr>
	<tr><td>요일:</td><td><input type="text" name="babgoDate" value="<%=u.getBabgoDate()%>" /></td></tr>
	<tr><td>시간:</td><td><input type="text" name="babgoTime" value="<%=u.getBabgoDate()%>" /></td></tr>
	<tr><td>추가설명:</td><td><textarea cols="50" rows="5" name="babgoDescription"><%=u.getBabgoDescription()%></textarea></td></tr>

	<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>