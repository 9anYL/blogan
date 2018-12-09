<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset=UTF-8>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="static/css/bootstrap.css"rel="stylesheet">
    <link href="static/css/all.css" rel="stylesheet">
  	<script defer src="static/js/all.js"></script>
  	<script type="text/javascript">
  	  $( document ).ready(function() {
  		$( #login ).click(function( event ) {
    		  
    	  });
  	  });
  	  
  	</script>
    <title>[Blog for 9an]-home</title>
  </head>
  
  <body>
    <div class="container">
      <div class="collapse" id="navbarSupportedContent">
        <div class="bg-dark p-4">
          <h5 class="text-white h4">Blog for 9an</h5>
          <span class="text-muted">生まれて、すみません。</span>
        </div>
      </div>
  	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  		<a class="navbar-brand" href="#">
  			<span class="fas fa-star-of-david fa-2x mb-0"></span>
  		</a>
        <span class="navbar-brand mb-0 h1">Blogan</span>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation">
    	  <span class="navbar-toggler-icon"></span>
  		</button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav mr-auto">
	        <li class="nav-item active">
	          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            Programing
	          </a>
	          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	            <a class="dropdown-item" href="#">Python</a>
	            <a class="dropdown-item" href="#">Java</a>
	            <div class="dropdown-divider"></div>
	            <a class="dropdown-item" href="#">Another</a>
	          </div>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">About</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Leave a message</a>
	        </li>
	      </ul>
	      <form class="form-inline my-2 my-lg-0">
	        <div class="form-row">
	          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" aria-describedby="basic-addon1">
	          <button id="login" class="btn btn-outline-success my-2 my-sm-0" type="button">Sign in</button>
	          <button id="register" class="btn btn-outline-success my-2 my-sm-0" type="button">Sign up</button>
	        </div>
	      </form>
	    </div>
      </nav>
    </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
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
	
	<script src="static/js/jquery-3.3.1.js"></script>
    <script src="static/js/bootstrap.bundle.js"></script>
  </body>
</html>