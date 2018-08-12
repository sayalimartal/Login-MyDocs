<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
html{
position: relative;
min-height: 100%
}
.login{
position:absolute;
transform:translate(-50%,-50%);
width:300px;
height:300px;
box-sizing:border-box;
background:rgba(0,0,0,0.5);
color:#fff;
}
form
{
width:260px;
margin:60px;
align-items:center;
text-align:center;
background:white;
border:2px solid transparent;
border-radius:3px;
font-size:16px;
font-weight:200;
padding:10px 0;
transition:border .5s;
}
p{
font-family: sans-serif;
}
</style>
</head>
<!-- Input login credentials using a form -->
<body>

<div>
<jsp:include page="header.jsp" />
</div>

<div class=”login” align="center">
<form action="login.app" method="post">
	
	<img src="logo.jpg" width="165px" height="150px">  <!-- Logo image -->
	
    <p><b>USERNAME</b></p><!-- To input username -->
    <input type="text" name="userName" placeholder="Enter valid username" required /><br><br>

    <p><b>PASSWORD</b></p><!-- To input password -->
    <input type="password" name="password" placeholder="Enter valid password" required /><br><br>

    <button type="submit" style="color:white;background-color:green">Login</button><br><br>
   
</form>
</div>

<div>
<jsp:include page="footer.jsp" />
</div>

</body>
</html>