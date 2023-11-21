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
<body class="bg min-vh-100">
    
    <!-- NAV BAR -->
    <nav class="navbar navbar-expand-lg bg-dark px-5 d-flex justify-content-between align-items-center">
        <div class="d-flex align-items-center">
            <a class="navbar-brand text-light" href="/admin/dashboard">Dashboard</a>
            <c:if test="${pageContext.request.isUserInRole('ADMIN')}">
                <a href="/admin/dashboard" class="btn btn-outline-danger">ADMIN</a>
            </c:if>
        </div>


        <form id="logoutForm" method="POST" action="/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input class="btn btn-outline-light" type="submit" value="Logout!" />
        </form>
    </nav>

    <!-- MAIN PAGE -->
    <div class="center">
        
        <!-- Bottom link boxes -->
        <div class="d-flex">

            <div class="box-link card cursor">
                <a href="/view/department" class="text-white"><h4>View Department</h4></a>
            </div>

            <div class="box-link card cursor">
                <a href="/view/employee" class="text-white"><h4>View Employees</h4></a>
            </div>

            <div class="box-link card cursor">
                <a href="#" class="text-white"><h4>View Schedule</h4></a>
            </div>

        </div>

    </div>
</body>
</html>