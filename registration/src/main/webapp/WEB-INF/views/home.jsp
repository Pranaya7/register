<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="resources/bootstrap/js/jquery.min.js"
	type="text/javascript"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<title>Home Page</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Blog</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">

			<ul class="nav navbar-nav">
				<c:if test="${userType== 'Writer'}">
					<li class="active"><a href="--------link??">Home</a></li>

					
				</c:if>
				
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">${username}</a></li>
				<li><a href="getlogin"> Login</a></li>
				<li><a href="logout"> Logout</a></li>
			</ul>
		</nav>
			<c:if test="${!empty blogList}">
				<table align="center" border="1">
					<tr style="background-color: gray;">
						<th>Blog ID</th>
						<th>Title</th>
						<th>Contents</th>
					</tr>
					<c:forEach items="${blogList}" var="blog">
						<tr style="background-color: silver;">
							<td><c:out value="${blog.id}" /></td>
							<td><c:out value="${blog.title}" /></td>
							<td><c:out value="${blog.contents}" /></td>
							<a href=".....">..</a>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>
	
</body>
</html>