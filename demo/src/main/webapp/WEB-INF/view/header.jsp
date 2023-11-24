<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<spring:url value="/" var="base_url"></spring:url>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet" crossorigin="anonymous">

</head>

<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
        <div class="container-fluid">
            <a class="navbar-brand" href="${base_url}/dashboard">National Library</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link" href="${base_url}/students">Students</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${base_url}/books">Books</a>
                    </li>
                </ul>
            </div>

            <div class="d-flex flex-row-reverse">
                <security:authorize access="isAuthenticated()">
                     <div>
                                        <form action="${base_url}/logout" >
                                            <button type="submit" class="btn btn-primary">Logout</button>>
                                        </form>
                                    </div>
                </security:authorize>

                <security:authorize access="isAnonymous()">
                    <div>
                          <a class="btn btn-primary" href="${base_url}/login">Login</a>
                    </div>
                </security:authorize>

            </div>
        </div>
</nav>