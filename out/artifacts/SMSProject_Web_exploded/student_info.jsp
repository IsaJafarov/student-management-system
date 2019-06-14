<%--
  Created by IntelliJ IDEA.
  User: elnurquluzade
  Date: 2019-04-15
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student's Informations</title>
</head>
<body>

<div>
    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Father name </th>
            <th>Faculty</th>
            <th>Gender</th>
            <th>Section</th>
            <th>Profession</th>
            <th>Group</th>
            <th>Education Year</th>
            <th>Birth Date</th>
            <th>Birth Place</th>
            <th>Educatuion Type</th>
        </tr>

        <c:forEach items="${studentList}" var="student">
            <tr>
                <td>${student.name}</td>
                <td>${student.surname}</td>
                <td>${student.fatherName}</td>
                <td>${student.faculty}</td>
                <td>${student.gender}</td>
                <td>${student.section}</td>
                <td>${student.profession}</td>
                <td>${student.group}</td>
                <td>${student.entryYear}</td>
                <td>${student.birthDate}</td>
                <td>${student.birthPlace}</td>
                <td>${student.educationType}</td>
            </tr>
        </c:forEach>
    </table>
</div>


</body>
</html>
