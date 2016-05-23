<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit</title>
</head>


    <div style="color: black; font-size: 30px">Edit User</div>
    <div  style="width: 450px; border: groove ">
        <form:form modelAttribute="user" method="post"
                   action="update">
            <table width="450px" height="160px">
                <tr>
                    <td><form:label  path="id">ID</form:label></td>
                    <td> <form:input cssStyle="background: whitesmoke" readonly="true" path="id" value="${user.id}"/></td>


                </tr>
                <tr>
                    <td><form:label path="name">Name</form:label></td>
                    <td><form:input path="name" value="${user.name}"/></td>

                </tr>
                <tr>
                    <td><form:label path="age">Age</form:label></td>
                    <td><form:input type="number" path="age" value="${user.age}"/></td>
                </tr>
                <tr>
                    <td><form:checkbox path="admin" value="${user.admin}" label="Is Admin"/></td>
                </tr>
                <tr>
                    <td><form:input type="hidden" path="createdDate" value="${user.createdDate}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update"/>
                    </td>
                </tr>
            </table>

        </form:form>
    </div>
    <br>
    <a href="form"><input type="button" value="Add new User"/></a>
    <a href="list"><input type="button" value="User list"/></a>
    <a href="search"><input type="button" value="Search User"></a>


    </body>
</html>
