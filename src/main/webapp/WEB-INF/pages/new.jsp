<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create new user</title>
</head>
<body>


<div style="color: black; font-size: 30px">Add new User</div>
<div style="width: 450px; border: groove ">
    <form:form modelAttribute="user" method="post"
               action="register">
        <table width="450px" height="160px">
            <tr>
                <td><form:label path="name">Name</form:label></td>
                <td><form:input path="name"/>
                </td>
            </tr>
            <tr>
                <td><form:label path="age">Age</form:label></td>
                <td><form:input type="number" path="age"/></td>
            </tr>
            <tr>
                <td><form:checkbox path="admin" value="false" label="is Admin"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Register"/>
                </td>
            </tr>
        </table>
    </form:form>
</div>
<br>
<br>
<a href="list"><input type="button" value="User list"></a><a href="search"><input type="button" value="Search User"></a>
</body>
</html>
