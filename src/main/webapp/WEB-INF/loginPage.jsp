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
<body class="main">

    <!----------------------- Main Container -------------------------->
    <div class="container d-flex justify-content-center align-items-center min-vh-100">

        <!----------------------- Login Container -------------------------->
           <div class="row border rounded-5 p-3 bg-white shadow box-area">

        <!--------------------------- Left Box ----------------------------->
           <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box" style="background-image: linear-gradient(rgb(2, 41, 60), rgb(158, 203, 230));">
               <!-- <div class="featured-image mb-3">
                <img src="../resources/images/1.jpg" class="img-fluid" style="width: 250px;">
               </div> -->
               <p class="text-white fs-2" style="font-family: 'Courier New', Courier, monospace; font-weight: 600;">E-Smart</p>
               <small class="text-white text-wrap text-center" style="width: 17rem;font-family: 'Courier New', Courier, monospace;">A place to get to know your collegues.</small>
           </div> 

        <!-------------------- ------ Right Box ---------------------------->
           <div class="col-md-6 right-box">
                <div class="row align-items-center">
                    
                    <div class="header-text mb-4 text-danger">
                        <c:if test="${logoutMessage != null}">
                            <c:out value="${logoutMessage}"></c:out>
                        </c:if>
                    </div>

                    <div class="header-text mb-4">
                        <h2>Welcome Back!</h2>
                        <p>We are happy to have you here.</p>
                    </div>

                    <div class="header-text mb-4 fst-italic">
                        <c:if test="${errorMessage != null}">
                            <c:out value="${errorMessage}"></c:out>
                        </c:if>
                    </div>

                    
                    <form action="/login" method="POST">
                        
                        <div class="input-group mb-3">
                            <input type="text" name="username" class="form-control form-control-lg bg-light fs-6" placeholder="Company ID">
                        </div>

                        <div class="input-group mb-3">
                            <input type="text" name="password" class="form-control form-control-lg bg-light fs-6" placeholder="Password">
                        </div>

                        <div class="input-group mb-3">
                            <input class="btn btn-lg btn-dark w-100 fs-6" type="submit" value="Login!"/>
                        </div>
                    
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
           </div> 
        </div>
        </div>
</body>
</html>