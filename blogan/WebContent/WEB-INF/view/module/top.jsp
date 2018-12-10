<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
			
<div class="collapse" id="navbarSupportedContent">
  <div class="bg-dark p-4">
    <h5 class="text-white h5">Blog for 9an</h5>
    <span class="text-muted">生まれて、すみません。</span>
  </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <shiro:user>
  <div class="btn-group">
 	  <button class="btn btn-outline-light" type="button"><shiro:principal/></button>
    <button class="btn btn-outline-light dropdown-toggle dropdown-toggle-split" type="button" id="userMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<span class="sr-only">Toggle Dropdown</span>
  </button>
    <div class="dropdown-menu" aria-labelledby="userMenuButton">
      <a class="dropdown-item" href="${pageContext.request.contextPath}/user/detail">Profile</a>
      <a class="dropdown-item" href="${pageContext.request.contextPath}/user/logout">Sign out</a>
    </div>
  </div>
  </shiro:user>
  		
  <shiro:guest>
  <div class="btn-group">
    <button class="btn btn-outline-light dropdown-toggle" type="button" id="loginMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    	Sign in
    </button>
    <div class="dropdown-menu" aria-labelledby="loginMenuButton">
	    <form class="px-2 py-1" action="${pageContext.request.contextPath}/user/login" method="POST">
	      <div class="form-group">
	        <label for="name" hidden="true">Username:</label>
	        <input type="text" class="form-control" id="name" name="name"  placeholder="Username">
	      </div>
	      <div class="form-group">
	        <label for="password" hidden="true">Password:</label>
	        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
	      </div>
     		<button type="submit" class="btn btn-dark btn-block">Sign in</button>
	    </form>
	    <div class="dropdown-divider"></div>
	    <a class="dropdown-item" href="${pageContext.request.contextPath}/user/reset">Forgot password?</a>
	  </div>
	</div>
  </shiro:guest>
  
   <button class="btn btn-outline-dark navbar-brand">
     <i class="fas fa-star-of-david fa-2x"></i>
   </button>
  		
	 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation">
 	   <span class="navbar-toggler-icon"></span>
	 </button>
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav mr-auto">
       <li class="nav-item active">
	       <a class="nav-link" href="${pageContext.request.contextPath}/home">Home <span class="sr-only">(current)</span></a>
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
    <form class="my-2 my-lg-0">
      <input class="form-control" type="search" id="inlineFormSerach" placeholder="Search" aria-label="Search" aria-describedby="h">
    </form>
  </div>
</nav>