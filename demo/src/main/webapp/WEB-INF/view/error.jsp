<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<head>
    <title>National Library | Error</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="px-4 py-5 my-5 text-center">
    <h1 class="display-5 fw-bold">Oops</h1>
    <div class="col-lg-6 mx-auto">
        <h3 class="display-5 text-center">${errorCode}</h3>
        <p class="lead mb-4">${errorText}</p>
    </div>
</div>
</body>
</html>