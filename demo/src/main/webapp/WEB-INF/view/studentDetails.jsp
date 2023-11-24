<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Student Library | Students</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">

            <c:if test="${success == true}">
                <div class="alert alert-success">Student updated successfully.</div>
            </c:if>

            <c:if test="${success ne null && success == false}">
                <div class="alert alert-danger">Student could not be updated.</div>
            </c:if>

    <div class="card">
        <div class="card-body">
            <h3 class="card-title">${student.name}</h3>
            <p>Course : ${student.course}</p>
            <p>Roll No : ${student.rollNo}</p>
            <p>Address : ${student.address}</p>
            <a class="btn btn-primary btn-sm" href="${base_url}/student/edit?rollNo=${student.rollNo}">Edit</a>
            <a class="btn btn-danger btn-sm" href="${base_url}/students">Back</a>
        </div>
    </div>

</div>
</body>
</html>