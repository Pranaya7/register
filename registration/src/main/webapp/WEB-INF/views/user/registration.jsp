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
	<form:form methode="post" action="save_user" commandName="user">
		<center>
			<table border="1" width="30%" cellpadding="5">
				<thead>
					<tr>
						<th colspan="2">Enter Information Here</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><form:label path="firstName"> First Name:</form:label></td>
						<td><form:input path="firstName" value="${user.firstName }" /></td>
					</tr>
					<tr>
						<td><form:label path="lastName">Last Name:</form:label></td>
						<td><form:input path="lastName" value="${user.lastName}" /></td>
					</tr>
					<tr>
						<td><form:label path="email">Email:</form:label></td>
						<td><form:input path="email" value="${user.email}" /></td>
					</tr>
					<tr>
						<td><form:label path="userName">User Name:</form:label></td>
						<td><form:input path="userName" value="${user.userName}" /></td>
					</tr>
					<tr>
						<td><form:label path="password">Password:</form:label></td>
						<td><form:input path="password" value="${user.password}" /></td>
					</tr>
					<tr>
						<td><form:label path="sex">Sex:</form:label></td>
						<td><form:radiobutton path="sex" value="Male" />Male <form:radiobutton
								path="sex" value="Female" />Female</td>
					</tr>
					 <tr>
						<td><form:label path="userType">User Type:</form:label></td>
						<td><form:radiobutton path="userType" value="Writer" />Writer
							
					</tr> 
					<tr>
						<td colspan="1"><input type="submit" value="Submit" />
							
					</tr>
					<tr>
						<td colspan="2">Already registered!! <a href="getlogin">Login
								Here</a></td>
					</tr>
				</tbody>
			</table>
		</center>
	</form:form>
</body>
</html>