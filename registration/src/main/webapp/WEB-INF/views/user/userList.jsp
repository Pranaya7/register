<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Users</title>
</head>
<body>
<!--  	<jsp:include page="....."></jsp:include>  give a link ????-->
	<center>
		<h1>Users List</h1>
		<h3>
			<a href="getform">Add More User</a>
		</h3>
	</center>
	<c:if test="${!empty userList}">
		<table align="center" border="1">
			<tr style="background-color: gray;">
				<th>User ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>User Name</th>
				<th>Email</th>
				<th>Sex</th>
				<th>User Type</th>
				<th>Actions on Row</th>
			</tr>
			<c:forEach items="${userList}" var="user">
				<tr style="background-color: silver;">
					<td><c:out value="${user.userId}" /></td>
					<td><c:out value="${user.firstName}" /></td>
					<td><c:out value="${user.lastName}" /></td>
					<td><c:out value="${user.userName}" /></td>
					<td><c:out value="${user.email}" /></td>
					<td><c:out value="${user.sex}" /></td>
					<td><c:out value="${user.userType}" /></td>
					<td align="center">| <a href="edit?userId=${user.userId}">Edit</a>
						| <a href="delete?userId=${user.userId}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>