<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form methode="post" action="login" commandName="user">
		<center>
			<table border="1" width="30%" cellpadding="3">
				<thead>
					<tr>
						<th colspan="2">Login Here</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><form:label path="userName">User Name:</form:label></td>
						<td><form:input path="userName" value="${user.userName}" /></td>
					</tr>
					<tr>
						<td><form:label path="password">Password:</form:label></td>
						<td><form:input path="password" value="${user.password}" /></td>
					</tr>
					
					<tr>
						<td><input type="submit" value="Login" /></td>
						<td><input type="reset" value="Reset" /></td>
					</tr>
					<tr>
						<td colspan="2">Yet Not Registered!! <a href="getform">Register
								Here</a></td>
					</tr>
				</tbody>
			</table>
		</center>
	</form:form>
</body>
</html>