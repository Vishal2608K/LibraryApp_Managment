<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Student Library | Books</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
            <c:if test="${success == true}">
                <div class="alert alert-success">Book updated successfully.</div>
            </c:if>

            <c:if test="${success ne null && success == false}">
                <div class="alert alert-danger">Book cannot be updated.</div>
            </c:if>

    <div class="card">
        <div class="card-body">
            <h3 class="card-title">${book.name}</h3>
            <p>ISBN : ${book.isbn}</p>
            <p>Author : ${book.author}</p>
            <p>Subject : ${book.subject}</p>
            <p>Total Count : ${book.totalCount}</p>
            <p>Available Count : ${book.availableCount}</p>

            <a class="btn btn-primary btn-sm" href="${base_url}/book/edit?isbn=${book.isbn}">Edit</a>
            <a class="btn btn-danger btn-sm" href="${base_url}/books">Back</a>
        </div>
    </div>

</div>
</body>
</html>