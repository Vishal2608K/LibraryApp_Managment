


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Create Book</title>

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
                <div class="alert alert-success">Book added successfully.</div>
            </c:if>

            <c:if test="${success ne null && success == false}">
                <div class="alert alert-danger">Book cannot be created.</div>
            </c:if>
        <h2>Add Book</h2>
        <form action="${base_url}/book/save" method="post" modelAttribute="book">
            <div class="form-group">
                        <label for="name">Book:</label>
                        <input type="text" name="name" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="isbn">ISBN</label>
                <input type="text" name="isbn" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" name="subject" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="author">Author:</label>
                <input type="text" name="author" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="totalCount">TotalCount:</label>
                <input type="number" name="totalCount" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="availableCount">AvailableCount:</label>
                <input type="number" name="availableCount" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
            </div>

        </form>
    </div>
</body>
</html>
