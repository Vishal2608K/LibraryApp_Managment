


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Create Student</title>

<style type="text/css">
    label {
        display: inline-block;
        width: 200px;
        margin: 5px;
        text-align: left;
    }
    input[type=text],input[type=number], select {
        width: 200px;
    }

    button {
        padding: 10px;
        margin: 10px;
    }
</style>
</head>
<body>

<%@ include file="header.jsp" %>

    <div align="center" style="width:30rem; margin-left:40rem;" >
            <c:if test="${success == true}">
                <div class="alert alert-success">Student created successfully.</div>
            </c:if>

            <c:if test="${success ne null && success == false}">
                <div class="alert alert-danger">Student could not be created.</div>
            </c:if>
        <h2>Add Student</h2>
        <form action="${base_url}/student/save" method="post" modelAttribute="student">
            <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" name="name" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" name="address" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="course">Course</label>
                <input type="text" name="course" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="rollNo">Roll No:</label>
                <input type="text" name="rollNo" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
            </div>

        </form>
    </div>
</body>
</html>
