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
        <tr><td>밥고이름:</td><td><input  name="title" value="<%= u.getBabgoName()%>"/></td></tr>
        <tr><td>밥고요일:</td><td><input name="writer" value="<%= u.getBabgoDate()%>" /></td></tr>
        <tr><td>밥고시간:</td><td><textarea cols="50" rows="5" name="content"><%= u.getBabgoTime()%></textarea></td></tr>
        <tr><td>추가설명:</td><td><textarea cols="50" rows="5" name="content"><%= u.getDescription()%></textarea></td></tr>

        <tr><td>
            <input type="button" value="Back to List" onclick="history.back()"/>

        </td>
        </tr>
    </table>
</form>

</body>
</html>