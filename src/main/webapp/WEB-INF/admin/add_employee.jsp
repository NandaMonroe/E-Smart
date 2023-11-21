<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body class="main">
    <div class="container mt-4 p-4 text-white rounded-4" style="background-image: linear-gradient(rgb(2, 41, 60), rgb(158, 203, 230));">

        <div class="d-flex justify-content-between align-items-center">
            <h2>Add Employee</h2>
            <a class="btn btn-dark" href="/dashboard">HOME</a>
        </div>
        
        <hr>

        <form:form class="row g-3" action="/add/employee" method="POST" modelAttribute="user">

            <div class="col-md-6">
                <form:label path="profilePic" class="form-label">Profile Picture</form:label>
                <form:input path="profilePic" class="form-control" type="text" placeholder="Link to profile picture..."/>
                <form:errors class="text-warning fst-italic" path="profilePic" />
            </div>

            <div class="col-md-3">
                <form:label path="firstName" class="form-label">First Name</form:label>
                <form:input path="firstName" type="text" class="form-control" placeholder="John"/>
                <form:errors class="text-warning fst-italic" path="firstName" />
            </div>

            <div class="col-md-3">
                <form:label path="lastName" class="form-label">Last Name</form:label>
                <form:input path="lastName" type="text" class="form-control" placeholder="Walker"/>
                <form:errors class="text-warning fst-italic" path="lastName" />
            </div>
            
            <div class="col-md-3">
                <form:label path="pronouns" class="form-label">Pronouns</form:label>
                <form:select path="pronouns" class="form-select">
                    <option value="">Select</option>
                    <option value="He/Him">He/Him</option>
                    <option value="She/Her">She/Her</option>
                    <option value="They/Them">They/Them</option>
                </form:select>
                <form:errors class="text-warning fst-italic" path="pronouns" />
            </div>

            <div class="col-md-3">
                <form:label path="dateOfBirth" class="form-label">Date of Birth</form:label>
                <form:input path="dateOfBirth" type="date" class="form-control"/>
                <form:errors class="text-warning fst-italic" path="dateOfBirth" />
            </div>
            
            <div class="col-md-3">
                <form:label path="phone" class="form-label">Contact Phone</form:label>
                <form:input path="phone" type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" class="form-control" placeholder="000-000-0000"/>
                <form:errors class="text-warning fst-italic" path="phone" />
            </div>
            
            <div class="col-md-3">
                <form:label path="emergency" class="form-label">Emergency Contact</form:label>
                <form:input path="emergency" type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" class="form-control" placeholder="000-000-0000"/>
                <form:errors class="text-warning fst-italic" path="emergency" />
            </div>

            <div class="col-md-6">
                <form:label path="email" class="form-label">Email</form:label>
                <form:input path="email" type="email" class="form-control" placeholder="john@email.com"/>
                <form:errors class="text-warning fst-italic" path="email" />
            </div>

            <div class="col-md-3">
                <form:label path="password" class="form-label">Password</form:label>
                <form:password path="password" class="form-control" placeholder="minimum 6 characters"/>
                <form:errors class="text-warning fst-italic" path="password" />
            </div>

            <div class="col-md-3">
                <form:label path="confirm" class="form-label">Confirm Password</form:label>
                <form:password path="confirm" class="form-control" placeholder="passwords must match"/>
                <form:errors class="text-warning fst-italic" path="confirm" />
            </div>

            <div class="col-md-3">
                <form:label path="street" class="form-label">Address</form:label>
                <form:input path="street" type="text" class="form-control" placeholder="Apartment, studio, or floor"/>
                <form:errors class="text-warning fst-italic" path="street" />
            </div>

            <div class="col-md-3">
                <form:label path="city" class="form-label">City</form:label>
                <form:input path="city" type="text" class="form-control" name="city"/>
                <form:errors class="text-warning fst-italic" path="city" />
            </div>

            <div class="col-md-3">
                <form:label path="state" class="form-label">State</form:label>
                <form:select path="state" class="form-select">
                    <option value="">Select...</option>
                    <option value="Alabama">Alabama</option>
                    <option value="Alaska">Alaska</option>
                    <option value="Arizona">Arizona</option>
                    <option value="Arkansas">Arkansas</option>
                    <option value="California">California</option>
                    <option value="Colorado">Colorado</option>
                    <option value="Connecticut">Connecticut</option>
                    <option value="Delaware">Delaware</option>
                    <option value="Florida">Florida</option>
                    <option value="Georgia">Georgia</option>
                    <option value="Hawaii">Hawaii</option>
                    <option value="Idaho">Idaho</option>
                    <option value="Illinois">Illinois</option>
                    <option value="Indiana">Indiana</option>
                    <option value="Iowa">Iowa</option>
                    <option value="Kansas">Kansas</option>
                    <option value="Kentucky">Kentucky</option>
                    <option value="Louisiana">Louisiana</option>
                    <option value="Maine">Maine</option>
                    <option value="Maryland">Maryland</option>
                    <option value="Massachusetts">Massachusetts</option>
                    <option value="Michigan">Michigan</option>
                    <option value="Minnesota">Minnesota</option>
                    <option value="Mississippi">Mississippi</option>
                    <option value="Missouri">Missouri</option>
                    <option value="Montana">Montana</option>
                    <option value="Nebraska">Nebraska</option>
                    <option value="Nevada">Nevada</option>
                    <option value="New Hampshire">New Hampshire</option>
                    <option value="New Jersey">New Jersey</option>
                    <option value="New Mexico">New Mexico</option>
                    <option value="New York">New York</option>
                    <option value="North Carolina">North Carolina</option>
                    <option value="North Dakota">North Dakota</option>
                    <option value="Ohio">Ohio</option>
                    <option value="Oklahoma">Oklahoma</option>
                    <option value="Oregon">Oregon</option>
                    <option value="Pennsylvania">Pennsylvania</option>
                    <option value="Rhode Island">Rhode Island</option>
                    <option value="South Carolina">South Carolina</option>
                    <option value="South Dakota">South Dakota</option>
                    <option value="Tennessee">Tennessee</option>
                    <option value="Texas">Texas</option>
                    <option value="Utah">Utah</option>
                    <option value="Vermont">Vermont</option>
                    <option value="Virginia">Virginia</option>
                    <option value="Washington">Washington</option>
                    <option value="West Virginia">West Virginia</option>
                    <option value="Wisconsin">Wisconsin</option>
                    <option value="Wyoming">Wyoming</option>
                </form:select>
                <form:errors class="text-warning fst-italic" path="state" />
            </div>

            <div class="col-md-3">
                <form:label path="zip" class="form-label">Zip</form:label>
                <form:input path="zip" type="text" class="form-control" name="zip"/>
                <form:errors class="text-warning fst-italic" path="zip" />
            </div>

            <hr>

            <div class="col-md-3">
                <form:label path="jobTitle" class="form-label">Job Title</form:label>
                <form:input path="jobTitle" type="text" class="form-control" placeholder="Marketing Assistant"/>
                <form:errors class="text-warning fst-italic" path="jobTitle" />
            </div>

            <div class="col-md-3">
                <form:label path="department" class="form-label">Department</form:label>
                <form:select path="department" class="form-select">
                    <option value="">Select</option>
                    <c:forEach var="department" items="${departments}">
                        <option value="${department.id}">${department.name}</option>
                    </c:forEach>
                </form:select>
                <form:errors class="text-warning fst-italic" path="department" />
            </div>

            <div class="col-md-3">
                <form:label path="shift" class="form-label">Work Shift</form:label>
                <form:select path="shift" class="form-select">
                    <option value="">Select</option>
                    <option value="Full-Time">Full Time</option>
                    <option value="Part-Time(Day)">Part Time (Day)</option>
                    <option value="Part-Time(Night)">Part Time (Night)</option>
                </form:select>
                <form:errors class="text-warning fst-italic" path="shift" />
            </div>

            <div class="col-md-3">
                <form:label path="hireDate" class="form-label">Hire Date</form:label>
                <form:input path="hireDate" type="date" class="form-control"/>
                <form:errors class="text-warning fst-italic" path="hireDate" />
            </div>

            <div class="col-6">
                <button type="submit" class="btn btn-outline-dark">Submit</button>
            </div>
        </form:form>
        
    </div>
</body>
</html>