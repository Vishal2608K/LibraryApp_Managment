

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Student Library | Students</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">

    <c:if test="${success == true}">
          <div class="alert alert-success" role="alert" >Student deleted successfully.</div>
    </c:if>

    <c:if test="${success ne null && success == false}">
         <div class="alert alert-danger" role="alert" >Student cannot be deleted.</div>
    </c:if>
    <h1 class="text-center">Students</h1>

    <a class="btn btn-success" href="${base_url}/student/create">Add New Student</a>

    <table class="table">
        <thead>
            <th scope="col">Name</th>
            <th scope="col">Address</th>
            <th scope="col">Course</th>
            <th scope="col">Roll No</th>
        </thead>
        <tbody>
              <c:forEach items="${students}" var="item">
                <tr>
                    <td>${item.name}</td>
                    <td>${item.address}</td>
                    <td>${item.course}</td>
                    <td>${item.rollNo}</td>

                    <td>
                        <a class="btn btn-primary" href="${base_url}/student/search?rollNo=${item.rollNo}">Details</a>
                    </td>

                    <td>
                        <form action="${base_url}/student/delete" method="post">
                            <input type="hidden" name="studentId" value="${item.id}">
                            <button type="submit" class="btn btn-primary">Remove</a>
                        </form>
                    </td>
                </tr>
              </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

