<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<style>
html{
position: relative;
min-height: 100%;
}
</style>
</head>

<body>
<!-- Display success page only for valid user -->
<jstl:if test='${sessionScope.username != null }'>
<div>
<jsp:include page="header.jsp" />
</div>

<h2 align="right"><a href="logout.app">Logout</a></h2>

<div align ="center">
<h2 style="color:green">Hello ${sessionScope.username}</h2>
<h2 style="color:green">You have successfully logged in...</h2>
</div>

<div>
<jsp:include page="footer.jsp" />
</div>
</jstl:if>

</body>
</html>