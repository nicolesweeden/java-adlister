<%--
  Created by IntelliJ IDEA.
  User: nicolesweeden
  Date: 2/11/23
  Time: 2:37 PM
  To change this template use File | Settings | File Templates.

  1. Build a login form
  -Create two files, login.jsp and profile.jsp
  -When a user visits /login.jsp, they should see a form for logging in. This form should have a 'username' and 'password' field.
  -This form should submit a POST request to /login.jsp
  -Inside of login.jsp write some code to check the submmitted values. If the username submitted is "admin", and the password is "password", redirect the user to the profile page; otherwise, redirect back to the login form.

  We will give our site's login page much more robust functionality in future lessons.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%--    <link rel="stylesheet" href="css/navBar.jsp">--%>
    <link rel="stylesheet" href="css/login.jsp">
    <style>
        body, html{
            padding: 0;
            margin: 0;
        }
    </style>
</head>
<body>

<center>
    <div class="overlay">
        <form action="login.jsp" method="post">
            <div class="con">
                <header class="head-form">
                    <h2>Log In</h2>
                    <p>login here using your username and password</p>
                </header>
                <br>
                <div class="field-set">

                    <%--                    <form action="login.jsp" method="post">--%>
                    <%--                        <br/>--%>
                    <%--                        <br/>Username<input type="text" name="username">--%>
                    <%--                        <br/>Password<input type="password" name="password">--%>
                    <%--                        <br/><input type="submit" value="Submit">--%>
                    <%--                    </form>--%>

                    <!--   user name Input-->
                    <input class="form-input" id="txt-input" type="text" placeholder="@UserName" name="username" required>
                    <br>
                    <!--   Password Input-->
                    <input class="form-input" type="password" placeholder="Password" id="pwd" name="password" required>
                    <br>
                    <br/><input type="submit" value="Submit">
                </div>

                <!--   other buttons -->
                <%--                <div class="other">--%>
                <%--                    <!--      Forgot Password button-->--%>
                <%--                    <button class="btn submits frgt-pass">Forgot Password</button>--%>
                <%--                    <!--     Sign Up button -->--%>
                <%--                    <button class="btn submits sign-up">Sign Up--%>
                <%--                        <!--         Sign Up font icon -->--%>
                <%--                        <i class="fa fa-user-plus" aria-hidden="true"></i>--%>
                <%--                    </button>--%>
                <%--                </div>--%>
            </div>
        </form>
    </div>
</center>

<% String username = request.getParameter("username");
    String password = request.getParameter("password");
    if ((username != null && password != null)) {
        if ((username.equals("admin") && password.equals("password"))) {
            session.setAttribute("username", username);
            response.sendRedirect("profile.jsp");
        } else response.sendRedirect("login.jsp");
    }
%>
<%--<script>--%>
<%--    // Show/hide password onClick of button using Javascript only--%>

<%--    // https://stackoverflow.com/questions/31224651/show-hide-password-onclick-of-button-using-javascript-only--%>

<%--    function show() {--%>
<%--        var p = document.getElementById('pwd');--%>
<%--        p.setAttribute('type', 'text');--%>
<%--    }--%>

<%--    function hide() {--%>
<%--        var p = document.getElementById('pwd');--%>
<%--        p.setAttribute('type', 'password');--%>
<%--    }--%>

<%--    var pwShown = 0;--%>

<%--    document.getElementById("eye").addEventListener("click", function () {--%>
<%--        if (pwShown == 0) {--%>
<%--            pwShown = 1;--%>
<%--            show();--%>
<%--        } else {--%>
<%--            pwShown = 0;--%>
<%--            hide();--%>
<%--        }--%>
<%--    }, false);--%>


<%--</script>--%>
</body>
</html>