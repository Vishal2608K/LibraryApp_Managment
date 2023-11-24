

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Student Library | Books</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
            <c:if test="${success == true}">
                <div class="alert alert-success">Book deleted successfully.</div>
            </c:if>

            <c:if test="${success ne null && success == false}">
                <div class="alert alert-danger">Book cannot be deleted.</div>
            </c:if>

    <h1 class="text-center">Books</h1>
    <a class="btn btn-success" href="${base_url}/book/create">Add New Book</a>

    <table class="table">
        <thead>
            <th scope="col">Name</th>
            <th scope="col">ISBN</th>
            <th scope="col">Subject</th>
            <th scope="col">Author</th>
            <th scope="col">Total Count</th>
            <th scope="col">Available Count</th>
        </thead>
        <tbody>
              <c:forEach items="${books}" var="item">
                <tr>
                    <td>${item.name}</td>
                    <td>${item.isbn}</td>
                    <td>${item.subject}</td>
                    <td>${item.author}</td>
                    <td>${item.totalCount}</td>
                    <td>${item.availableCount}</td>

                    <td>
                        <a class="btn btn-primary" href="${base_url}/book/search?isbn=${item.isbn}">Details</a>
                    </td>
                 <security:authorize access="hasRole('ADMIN')">
                    <td>
                        <form action="${base_url}/book/delete" method="post">
                            <input type="hidden" name="bookId" value="${item.id}">
                            <button type="submit" class="btn btn-primary">Remove</a>
                        </form>
                    </td>
                </security:authorize>

                </tr>
              </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

