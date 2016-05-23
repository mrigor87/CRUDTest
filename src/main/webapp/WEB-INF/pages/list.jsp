<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Users List</title>
</head>
<body>

		<div style="color: black; font-size: 30px">User List</div>



		<c:if test="${!empty userList}">
			<table border="1" bgcolor="gray" width="620px">
				<tr
					style="background-color: rgba(2, 2, 2, 0.22); color: white; text-align: center;"
					height="40px">

					<td>ID</td>
					<td>Name</td>
					<td>Age</td>
					<td>Is Admin</td>
					<td>Created Date</td>
					<td>Edit</td>
					<td>Delete</td>
				</tr>
				<c:forEach items="${userList}" var="user">
					<tr
						style="background-color: white; color: black; text-align: center;"
						height="30px">
						<td><c:out value="${user.id}" /></td>
						<td><c:out value="${user.name}" /></td>
						<td><c:out value="${user.age}" /></td>
                        <td><c:out value="${user.admin}" /></td>
                        <td><c:out value="${user.createdDate}" /></td>
                        <td><a href="/edit?id=${user.id}">Edit</a></td>
						<td><a href="delete?id=${user.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>

		<div id="pagination">
			<c:url value="/list?userlist" var="prev">
				<c:param name="page" value="${page -1}"/>
			</c:url>
			<c:if test="${page > 1}">
				<a href="<c:out value="${prev}"/>" class="pn prev">Prev</a>
			</c:if>
			<c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
				<c:choose>
					<c:when test="${page == i.index}">
						<span>${i.index}</span>
					</c:when>
					<c:otherwise>
						<c:url value="/list?userlist" var="url">
							<c:param name="page" value="${i.index}"/>
						</c:url>
						<a href='<c:out value="${url}" />'>${i.index}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:url value="/list?userlist" var="next">
				<c:param name="page" value="${page + 1}"/>
			</c:url>
			<c:if test="${page + 1 <=maxPages}">
				<a href="<c:out value="${next}" />" class="pn next">Next</a>
			</c:if>
		</div>


        <br>
        <br>
		<a href="form"><input type="button" value="Add new User" /></a>
		<a href="search"><input type="button" value="Search User"></a>

</body>
</html>
