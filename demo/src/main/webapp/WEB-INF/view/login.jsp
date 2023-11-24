
<!DOCTYPE html>
<head>
    <title>National Library | Home</title>
</head>
<body>

    <%@ include file="header.jsp" %>

    <div class="container">


        <c:if test="${param.error}">
            <div class="alert alert-danger">Invalid username and password.</div>
        </c:if>

        <c:if test="${param.logout}">
            <div class="alert alert-success">You have been logged out.</div>
        </c:if>


       <form class="form-signin" method="post" action="${base_url}/login" style="max-width:330px;margin:0 auto">
       			<h3 class="form-signin-heading">
       				<i class="fa fa-sign-in" aria-hidden="true"></i>
       				Login
       			</h3>
               <p>
                 <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
               </p>
               <p>
                 <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
               </p>
                 <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
       </form>
    </div>
</body>
</html>