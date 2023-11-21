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
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body class="min-vh-100" style="background-image: linear-gradient(rgb(2, 41, 60), rgb(158, 203, 230)); background-repeat: no-repeat; background-size:cover;">

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

    <div class="container mt-5 h-100 d-flex w-50">
        <div class="col-5 profile-bar rounded-4 p-4 bg-white d-flex flex-column justify-content-between align-items-center me-5 h-100">
            <img src="<c:out value="${user.profilePic}"/>" alt="profile-pic" style="width: 200px; height: 300px; border-radius: 50%;">
            <h4><c:out value="${user.firstName}"/> <c:out value="${user.lastName}"/></h4>
            <h6><c:out value="${user.pronouns}"/></h6>

            <div class="d-flex justify-content-between mb-3">

                <h6 class="me-5">🎂 <fmt:formatDate value="${user.dateOfBirth}" pattern="MM/dd" var="formattedDate"/>${formattedDate}</h6>
                <h6>🧑‍💼 <fmt:formatDate value="${user.hireDate}" pattern="MM/dd/yyyy" var="formattedDate"/>${formattedDate}</h6>
            </div>

            <div>
                <h6>Fun Fact</h6>
                <p><c:out value="${user.funFact}"/></p>
            </div>

        </div>

        <div class="col-7 content h-100">
            <div class="job rounded-4 p-4 bg-white mb-5">
                <h5>Job Information</h5>

                <div class="d-flex justify-content-between align-items-center">
                    <h6>Company ID:  </h6>
                    <p><c:out value="${user.username}"/></p>
                </div>

                <div class="d-flex justify-content-between align-items-center">
                    <h6>Job Title:  </h6>
                    <p><c:out value="${user.jobTitle}"/></p>
                </div>
                
                <div class="d-flex justify-content-between align-items-center">
                    <h6>Department:  </h6>
                    <p><c:out value="${user.department.name}"/></p>
                </div>
                                
                <div class="d-flex justify-content-between align-items-center">
                    <h6>Supervisor:  </h6>
                    <p><c:out value="${user.department.supervisor}"/></p>
                </div>

                <div class="d-flex justify-content-between align-items-center">
                    <h6>Shift:  </h6>
                    <p><c:out value="${user.shift}"/></p>
                </div>

            </div>

            <div class="contact rounded-4 p-4 bg-white">
                <h5>Contact Information</h5>

                <div class="d-flex justify-content-between align-items-center">
                    <h6>Email</h6>
                    <p><c:out value="${user.email}"/></p>
                </div>

                <div class="d-flex justify-content-between align-items-center">
                    <h6>Phone</h6>
                    <p><c:out value="${user.phone}"/></p>
                </div>

                <div class="d-flex justify-content-between align-items-center">
                    <h6>Emergency Contact</h6>
                    <p><c:out value="${user.emergency}"/></p>
                </div>

            </div>

        </div>
    </div>
</body>
</html>