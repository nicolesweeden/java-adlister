<%--
  Created by IntelliJ IDEA.
  User: nicolesweeden
  Date: 2/11/23
  Time: 9:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>nav</title>
    <%@ include file="/partials/head.jsp" %>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: 'Playfair Display', serif;
        }
        /*form{*/
        /*    padding-top: 4em;*/
        /*}*/
    </style>
</head>
<body>
<div class="font">

    <header class="header">
        <a href="" class="logo" >Logo</a>
        <input class="menu-btn" type="checkbox" id="menu-btn"/>
        <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
        <ul class="menu">
<%--            <li><a href="index.jsp">Home</a></li>--%>
<%--            <li><a href="login.jsp">Login</a></li>--%>
            <li><a href="">Contact</a></li>
        </ul>
    </header>
</div>
</body>
</html>