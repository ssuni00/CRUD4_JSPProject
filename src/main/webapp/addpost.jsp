<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.crud4.dao.BabgoDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.crud4.bean.BabgoVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BabgoDAO babgoDAO = new BabgoDAO();
	int i = babgoDAO.insertBabgo(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>