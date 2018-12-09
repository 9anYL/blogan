<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog for 9an</title>
</head>
<body>
<h1>User--register</h1>
<form action="${pageContext.request.contextPath}/user/register" method="post">
  <p>Username：<input name="name" type="text"/></p>
  <p>Email：<input name="email" type="text"/></p>
  <p>Password：<input name="password" type="password"/></p>
  <input value="Submit" type="submit"/>
</form>
</body>
</html>