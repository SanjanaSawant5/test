<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
<body>
<font color=red size=18>Login Failed!<br>
<a href=login.jsp>Try again!</a>
</body>
<style>
.error {
	color: #ff0000;
	font-size: 20px;
	text-align: center;
}
</style>
</head>
<body>
	<h1 class="error">Invalid Id & Password</h1>
	<p>${errorMessage}</p>
</body>
</html>