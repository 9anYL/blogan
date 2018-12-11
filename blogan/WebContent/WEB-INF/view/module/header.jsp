<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
<div class="collapse" id="navbarSupportedContent">
  <div class="bg-dark p-4">
    <h5 class="text-white h5">Blog for 9an</h5>
    <span class="text-muted">生まれて、すみません。</span>
  </div>
</div>
<div class="collapse text-center" id="loginMenu">
 <form class="bg-light p-3" action="${pageContext.request.contextPath}/user/login" method="POST">
    <h3 class="text-dark h5">Blog for 9an</h3>
    <div class="from-group row justify-content-center my-2">
      <label for="name"><i class="fas fa-user mt-2"></i> :</label>
      <div class="col-auto">
      <input type="text" class="form-control" id="name" name="name"  placeholder="Username" required>
      </div>
    </div>
    <div class="from-group row justify-content-center my-2">
      <label for="password"><i class="fas fa-key mt-2"></i> :</label>
      <div class="col-auto">
      <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
      </div>
    </div>
    <div class="form-group row justify-content-center my-2">
      <div class="form-check">
         <input class="form-check-input" type="checkbox" id="gridCheck1">
         <label class="form-check-label" for="gridCheck1">
           Remember me ?
         </label>
       </div>
    </div>	   
    <div class="form-group row justify-content-center my-2">
	    <button type="submit" class="btn btn-outline-dark">Sign in</button>
    </div>   
  </form>
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
    <button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#loginMenu" aria-controls="loginMenu" aria-expanded="true" aria-label="Toggle navigation">
 	  	<i class="fas fa-sign-in-alt"></i>
	  </button>
	</div>
  </shiro:guest>
  
	 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation">
 	   <span class="navbar-toggler-icon"></span>
	 </button>
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav m-auto">
       <li class="nav-item active">
	       <a class="nav-link" href="${pageContext.request.contextPath}/home"><i class="fas fa-home"></i>Home <span class="sr-only">(current)</span></a>
	     </li>
	     <li class="nav-item dropdown">
         <a class="nav-link dropdown-toggle" href="#" id="programingDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           Programing
	       </a>
         <div class="dropdown-menu" aria-labelledby="programingDropdown">
           <a class="dropdown-item" href="#">Python</a>
           <a class="dropdown-item" href="#">Java</a>
           <div class="dropdown-divider"></div>
           <a class="dropdown-item" href="#">Another</a>
         </div>
       </li>
       <li class="nav-item dropdown">
         <a class="nav-link dropdown-toggle" href="#" id="lifeDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           Life
	       </a>
         <div class="dropdown-menu" aria-labelledby="lifeDropdown">
           <a class="dropdown-item" href="#">Picture</a>
           <a class="dropdown-item" href="#">Video</a>
           <a class="dropdown-item" href="#">Music</a>
           <div class="dropdown-divider"></div>
           <a class="dropdown-item" href="#">Game</a>
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
</header>
