<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>

    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">

    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script defer src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script defer src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script defer src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>

    <script defer src="/js/app.js"></script>
</head>
<body style="background-image: linear-gradient(rgb(2, 41, 60), rgb(158, 203, 230)); background-repeat: no-repeat; background-size:contain;">
        
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
    <div class="container min-vh-100 p-4 text-white">
        <table id="department" class="table table-striped" style="width:100%">
            <thead>
                <tr>
                    <th>Department</th>
                    <th>Supervisor</th>
                    <th># of Employees</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="department" items="${departments}">
                    <tr>
                        <td><c:out value="${department.name}"/></td>
                        <td><c:out value="${department.supervisor}"/></td>
                        <td><c:out value="${fn:length(department.users)}"/></td>
                    </tr>
                </c:forEach>
            </tbody>
            <tfoot>
                <tr>
                    <th>Department</th>
                    <th>Supervisor</th>
                    <th># of Employees</th>
                </tr>
            </tfoot>
        </table>
    </div>

</body>
</html>