<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User-modify</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/modify" method="post">
  <p>Id：<input name="id" type="text" value="${user.id}"/></p>
  <p>Username：<input name="name" type="text" value="${user.name}"/></p>
  <p>Email：<input name="email" type="text" value="${user.email}"/></p>
  <p>Password：<input name="password" type="text" value="${user.password}"/></p>
  <p>Bio：<input name="bio" type="text" value="${user.bio}"/></p>
  <p>Favorite Section：<input name="favoriteSection" type="text" value="${user.favoriteSection}"/></p>
  <p><input value="Submit" type="submit"/></p>
  <p>${error}</p>
</form>
</body>
</html>