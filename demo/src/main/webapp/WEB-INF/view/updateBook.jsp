

<!DOCTYPE html>
<html>
<head>
<title>Update Book</title>

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

        <h2>Update Book</h2>

        <form action="${base_url}/book/update" method="post" modelAttribute="book">
            <input type="hidden" name="id" value="${book.id}">
            <div class="form-group">
                        <label for="name">Book:</label>
                        <input type="text" name="name"  value="${book.name}"class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="isbn">ISBN</label>
                <input type="text" name="isbn" value="${book.isbn}"  class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" name="subject" value="${book.subject}" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="author">Author:</label>
                <input type="text" name="author" value="${book.author}" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="totalCount">TotalCount:</label>
                <input type="number" name="totalCount" value="${book.totalCount}" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="availableCount">AvailableCount:</label>
                <input type="number" name="availableCount" value="${book.availableCount}" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <button class="btn btn-lg btn-primary btn-block" type="submit">Update</button>
            </div>

        </form>
    </div>
</body>
</html>
