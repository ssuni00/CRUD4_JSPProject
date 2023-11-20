<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="com.example.crud4.dao.BabgoDAO" %>
<%@ page import="com.example.crud4.bean.BabgoVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>free board</title>
	<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous"
	/>
<style>

#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
h2 {
	margin-right: 700px;
}
.title {
	margin-top: 20px;
	margin-left: 30px;
	font-size: 25px;
	color: rgb(73, 73, 73);
	font-weight: bold;
}
.list {
	padding: 25px;
}
button {
	border-radius: 15px;
	border-width: 1px;
	border-color: rgb(73, 73, 73);
	background-color: white;
}
h3 {
	text-align: center;
	margin-top: 50px;
}
a,
ul {
	cursor: pointer;
}
strong {
	color: white;
	font-size: 37px;
	margin-left: 5px;
	font-weight: bold;
}
.info {
	color: white;
	font-size: 23px;
	margin-left: 5px;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>
<header class="p-3 bg-dark text-white">
	<div class="container">
		<a href="#" class="navbar-brand d-flex align-items-center">
			<div>
				<strong onclick="location.href='index.jsp'">My BabGo List</strong>
				<div onclick="location.href='index.jsp'" class="info">
					22200809 황수현
				</div>
			</div>
		</a>
		<button
				class="navbar-toggler"
				type="button"
				data-bs-toggle="collapse"
				data-bs-target="#navbarHeader"
				aria-controls="navbarHeader"
				aria-expanded="false"
				aria-label="Toggle navigation"
		></button>
	</div>
	<div class="container">
		<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start"
		>
			<a
					href="/"
					class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none"
			>
				<use xlink:href="#bootstrap" />
			</a>
			<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0"
			>
				<li onclick="location.href='addpost.jsp'">
					<a href="addpostform.jsp" class="nav-link px-2 text-white">Add New Post</a>
				</li>
			</ul>
		</div>
	</div>
</header>
<%
	BabgoDAO babgoDAO = new BabgoDAO();
	List<BabgoVO> list = babgoDAO.getBabgoList();
	request.setAttribute("list",list);
%>
<main>
	<div class="title">Bab-Go List</div>
	<div class="list">
		<div class="table-responsive small">
			<table class="table table-striped table-sm">

				<tr>
					<th scope="col">#</th>
					<th scope="col">밥고이름</th>
					<th scope="col">요일</th>
					<th scope="col">시간</th>
					<th scope="col">추가설명</th>
					<th scope="col">수정</th>
					<th scope="col">삭제</th>
				</tr>
				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.getBabgoID()}</td>
						<td><a href="view.jsp?id=${u.getBabgoID()}">${u.getBabgoName()}</a></td>
						<td>${u.getBabgoDate()}</td>
						<td>${u.getBabgoTime()}</td>
						<td>${u.getBabgoDescription()}</td>
						<td><a href="editform.jsp?id=${u.getBabgoID()}">Edit</a></td>
						<td><a href="javascript:delete_ok('${u.getBabgoID()}')">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</main>
</body>
</html>