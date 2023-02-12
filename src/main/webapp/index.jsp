<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "Adlister" %></title>

<%--    <%@ include file="/partials/head.jsp" %>--%>
    <style>
        body{
            padding: 0;
            margin: 0;
        }
    </style>

</head>
<body>

<%--<%@ include file="/partials/navBar.jsp" %>--%>

<c:if test="true">
    <h1>AdLister</h1>
</c:if>

<c:if test="false">
    <h1>Something went wrong!</h1>
</c:if>

</body>
</html>
