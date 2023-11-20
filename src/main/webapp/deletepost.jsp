<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.crud4.dao.BabgoDAO, com.example.crud4.bean.BabgoVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		BabgoVO u = new BabgoVO();
		u.setBabgoID(id);
		BabgoDAO babgoDAO = new BabgoDAO();
		babgoDAO.deleteBabgo(u);
	}
	response.sendRedirect("posts.jsp");
%>