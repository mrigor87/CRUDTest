<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User search</title>
</head>
<body>

		<div style="color: black; font-size: 30px">User search</div>

		<form:form id="SearchForm" modelAttribute="user" method="post"
			action="searchUser">
			<table width="250px" height="50px">
				<tr>
					<td><form:label path="name">Name</form:label></td>
					<td><form:input autofocus = "true" path="name"/></td>
					<td><input type="submit" value="Search" />
				</tr>
			</table>
		</form:form>
		<br>
        <a href="list"><input type="button" value="User list" /></a>
        <a href="form"><input type="button" value="Add new User" /></a>

</body>
</html>
