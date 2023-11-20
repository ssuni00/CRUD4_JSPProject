<%@ page import="com.example.crud4.dao.BabgoDAO" %>
<%@ page import="com.example.crud4.bean.BabgoVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>add babgo</title>

	<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous"
	/>

	<style>
		h2 {
			margin-right: 700px;
		}
		button {
			border-radius: 15px;
			border-width: 1px;
			border-color: rgb(73, 73, 73);
			background-color: white;
		}
		.babgoName {
			margin-bottom: 20px;
		}
		.addLayout {
			margin-left: 32vw;
			margin-top: 5vh;
		}
		h3 {
			text-align: center;
			margin-top: 50px;
		}
		.addButton {
			margin-top: 40px;
		//margin-left: 13vw;
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
</head>
<body>

<%
	BabgoDAO babgoDAO = new BabgoDAO();
	String id=request.getParameter("id");
	BabgoVO u=babgoDAO.getBabgo(Integer.parseInt(id));
%>


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
		<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start" >
			<a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
				<use xlink:href="#bootstrap" />
			</a>
			<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0" >
				<li onclick="location.href='posts.jsp'">
					<a href="#" class="nav-link px-2 text-white">Go Back to Babgo List</a>
				</li>
			</ul>
		</div>
	</div>
</header>
<main>
	<div>
		<h3>Edit Your Bab-Go</h3>

		<div class="addLayout">
			<form action="editpost.jsp" method="post">
				<input type="hidden" name="babgoID" value="<%=u.getBabgoID() %>"/>
				<div class="babgoName">
					<div class="col-sm-6">
						<label for="firstName" class="form-label" >밥고이름</label>
						<input
								type="text"
								class="form-control"
								id="firstName"
								name="babgoName"
								value="<%= u.getBabgoName()%>"
						/>
					</div>
				</div>

				<div class="babgoName">
					<div class="col-md-4">
						<label for="state" class="form-label">요일</label>
						<select class="form-select" id="state" name="babgoDate" value="<%= u.getBabgoDate()%>" >
							<option value="<%= u.getBabgoDate()%>"><%= u.getBabgoDate()%></option>
							<option value="월요일">월요일</option>
							<option value="화요일">화요일</option>
							<option value="수요일">수요일</option>
							<option value="목요일">목요일</option>
							<option value="금요일">금요일</option>
							<option value="토요일">토요일</option>
							<option value="일요일">일요일</option>
						</select>
					</div>
				</div>

				<div class="babgoName">
					<div class="col-md-4">
						<label for="state" class="form-label">시간</label>
						<select class="form-select" name="babgoTime">
							<option value="<%= u.getBabgoTime()%>" ><%= u.getBabgoTime()%></option>
							<option value="1끝">1끝</option>
							<option value="2끝">2끝</option>
							<option value="3끝">3끝</option>
							<option value="4끝">4끝</option>
							<option value="5끝">5끝</option>
							<option value="6끝">6끝</option>
							<option value="7끝">7끝</option>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<label for="firstName" class="form-label">밥고설명</label>
					<input
							type="text"
							class="form-control"
							placeholder=""
							required
							name="babgoDescription"
							value="<%= u.getBabgoDescription()%>"
					/>
				</div>
				<button onclick="validationCheck();location.href='posts.jsp'" class="addButton">
					취소 하기
				</button>
				<button type="submit" onclick="validationCheck();location.href='posts.jsp'" class="addButton">
					밥고 수정하기
				</button>
			</form>
		</div>
	</div>
</main>
</body>
</html>