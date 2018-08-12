<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<style>
html{
position: relative;
min-height: 100%
}
</style>
</head>

<body>

<div>
<jsp:include page="header.jsp" />
</div>

<div align ="center">
<h2 style="color:red">Error! Username or password is incorrect</h2><!-- Error message -->
</div>

<div>
<jsp:include page="footer.jsp" />
</div>

</body>
</html>