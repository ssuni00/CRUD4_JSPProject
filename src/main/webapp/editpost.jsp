<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.crud4.dao.BabgoDAO" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.jspcrud.bean.BabgoVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BabgoDAO babgoDAO = new BabgoDAO();
	int i=babgoDAO.updateBabgo(u);
	response.sendRedirect("posts.jsp");
%>