addTutor.jsp

registerTutor

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Registration Student</title>


    <style>
        .error {
            color: red;
        }
    </style>

</head>
<body>




<form:form id="tutorRegister-form" action="/tutor/registerTutor" method="post" >

    <form:input path="name" placeholder="Name"/><br>
    <form:errors path="name" cssClass="error"/>

    <form:input path="surname" placeholder="Surname"/><br>
    <form:errors path="surname" cssClass="error"/>

    <form:input path="email" autocomplete="false" placeholder="Email"/><br>
    <form:errors path="email" cssClass="error"/>

    <form:input path="password" placeholder="Password"/><br>
    <form:errors path="password" cssClass="error"/>

    <form:input path="phoneNumber" placeholder="Mobile Number"/><br>
    <form:errors path="phoneNumber" cssClass="error"/>

    <form:input path="faculty" placeholder="Faculty"/><br>
    <form:errors path="faculty" cssClass="error"/>

    <form:radiobuttons path="gender" placeholder="Gender"/><br>
    <form:errors path="gender" cssClass="error"/>

    <form:input path="orderNumber" placeholder="Order Number"/><br>
    <form:errors path="orderNumber" cssClass="error"/>
    <input type="submit" name="Add">
</form:form>


</body>
</html>

