

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

        <h2>Update Student</h2>
        <form action="${base_url}/student/update" method="post" modelAttribute="student">
            <input type="hidden" name="id" value="${student.id}">
            <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" name="name" value="${student.name}" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" name="address" value="${student.address}" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="course">Course</label>
                <input type="text" name="course" value="${student.course}" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <label for="rollNo">Roll No:</label>
                <input type="text" name="rollNo" value="${student.rollNo}" class="form-control"/><br/>
            </div>

            <div class="form-group">
                <button class="btn btn-lg btn-primary btn-block" type="submit">Update</button>
            </div>

        </form>
    </div>
</body>
</html>
