<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
<style>
.center {
	margin-left: auto;
	margin-right: auto;
	width: 70%;
	background-color: #C0C0C0;
}
</style>
</head>
<body>
	<!--<jsp:include page="...."></jsp:include>  Give a link?????-->
	<!--   <div class="center">
		<fieldset>
			<legend>Update User Data</legend>
			<center>
				<form:form method="POST" commandName="user" action="update">
					<table>
						<tr>
							<td><form:label path="userId">User Id:</form:label></td>
							<td><form:input path="userId" value="${user.userId}" /></td>
						</tr>
						<tr>
							<td><form:label path="firstName">First Name:</form:label></td>
							<td><form:input path="firstName" value="${user.firstName}" /></td>
						</tr>
						<tr>
							<td><form:label path="lastName">Last Name:</form:label></td>
							<td><form:input path="lastName" value="${user.lastName}" /></td>
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
							<td><form:label path="email">Email:</form:label></td>
							<td><form:input path="email" value="${user.email}" /></td>
						</tr>
						<tr>
							<td><form:label path="sex">Sex:</form:label></td>
							<td><form:radiobutton path="sex" value="Male" />Male <form:radiobutton
									path="sex" value="Female" />Female</td>
						</tr>
						<tr>
							<td><form:label path="userType">User Type:</form:label></td>
							<td><form:radiobutton path="userType" value="Writer" />Writer
								<form:radiobutton path="userType" value="Admin" />Admin
								</td>
						</tr>
						<tr>
							<td colspan="1"><input type="submit" value="Submit" /></td>
						</tr>
					</table>
				</form:form>
			</center>
		</fieldset>
	</div> -->
</body>
</html>

