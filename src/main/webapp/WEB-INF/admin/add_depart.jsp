<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body class="bg">
    
    <!-- NAV BAR -->
    <nav class="navbar navbar-expand-lg bg-dark px-5">
        <div class="container-fluid">
            <a class="navbar-brand text-light" href="/dashboard">Dashboard</a>
        </div>
        <form id="logoutForm" method="POST" action="/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input class="btn btn-outline-light" type="submit" value="Logout!" />
        </form>
    </nav>

    
    <!-- MAIN PAGE -->
    <div class="container mt-5 banner p-5 text-white" style="background-image: linear-gradient(rgb(2, 41, 60), rgb(158, 203, 230));">

        <h2>Add Department</h2>

        <form:form action="/adding/department" method="post" modelAttribute="department">

            <div class="form-group mt-5">
                <form:label path="name">Department Name:</form:label>
                <form:input path="name" class="form-control" type="text"/>
                <form:errors path="name" class="errors"></form:errors>
            </div>

            <div class="form-group mt-5">
                <form:label path="supervisor">Supervisor:</form:label>
                <form:input path="supervisor" class="form-control" type="text"/>
                <form:errors path="supervisor" class="errors"></form:errors>
            </div>

            <button class="btn btn-outline-dark mt-3" type="submit">Submit</button>
        </form:form>

    </div>


</body>
</html>