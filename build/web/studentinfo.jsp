<%-- 
    Document   : studentinfo.jsp
    Created on : 01.03.2018, 15:02:26
    Author     : haroon.ghawsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Information</title>
    </head>
    <body>
        <h1>Student Information</h1>
        <form action="./StudentServlet" method="POST">
            <table>
                <tr>
                    <td>Student ID</td>
                    <td><input type="text" name="studentId" value="${student.studentId}" /></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstname" value="${student.firstname}" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastname" value="${student.lastname}" /></td>
                </tr>
                <tr>
                    <td>Year Level</td>
                    <td><input type="text" name="yearLevel" value="${student.yearLevel}" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="action" value="Add" /> 
                        <input type="submit" name="action" value="Edit" /> 
                        <input type="submit" name="action" value="Delete" /> 
                        <input type="submit" name="action" value="Search" /> 
                    </td>
                </tr>
            </table>
        </form>
        <br>
        <table border="1">
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Year Level</th>

            <c:forEach items="${allStudents}" var="stud">
                <tr>
                    <td>${student.studentId}</td>
                    <td>${student.firstname}</td>
                    <td>${student.lastname}</td>
                    <td>${student.yearLevel}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
