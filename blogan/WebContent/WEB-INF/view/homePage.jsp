  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[Blog for 9an]-home</title>
</head>
<body>
	<shiro:guest>
		<a href="${pageContext.request.contextPath}/user/login">sign in</a>
		<a href="${pageContext.request.contextPath}/user/register">sign up</a>
	</shiro:guest>
	
	<shiro:user>
		<h6>[<shiro:principal/>]</h6>
		<p><a href="${pageContext.request.contextPath}/user/modify/">modify</a></p>
		<p><a href="${pageContext.request.contextPath}/user/logout">logout</a></p>
	</shiro:user>
	
	<shiro:hasPermission name="listUser">
	<a href="${pageContext.request.contextPath}/list">UserList</a>
	</shiro:hasPermission>
</body>
</html>