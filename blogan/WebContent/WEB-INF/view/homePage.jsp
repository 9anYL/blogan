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
  	<script src="static/js/jquery-3.3.1.js"></script>
    <script src="static/js/bootstrap.bundle.js"></script>
    <title>[Blog for 9an]-home</title>
  </head>
  
  <body>
		<%@ include file="module/header.jsp"%>
  
  <main>
			<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
			  <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
  			<div class="carousel-inner">
    			<div class="carousel-item active">
      			<img class="d-block w-100" src="./static/img/1.JPG" alt="First slide" height="500">
      			<div class="container">
              <div class="carousel-caption text-left">
                <h1>人間失格</h1>
                <p>生まれて、すみません。</p>
                <button class="btn btn-outline-light" type="button">
                	<i class="fas fa-angle-double-right fa-2x"></i>
                </button>
              </div>
            </div>
    			</div>
    			<div class="carousel-item">
      			<img class="d-block w-100" src="static/img/2.JPG" alt="Second slide" height="500">
      			<div class="container">
              <div class="carousel-caption text-middle">
                <h1>Seven deadly sins</h1>
                <p>Pride, Greed, Lust, Envy, Gluttony, Wrath and Sloth</p>
                <button class="btn btn-outline-light">
                	<i class="fas fa-angle-double-right fa-2x"></i>
                </button>
              </div>
            </div>
    			</div>
    			<div class="carousel-item">
      			<img class="d-block w-100" src="static/img/3.JPG" alt="Third slide" height="500">
      			<div class="container">
              <div class="carousel-caption text-right">
                <h1>上善若水</h1>
                <p>水善利万物而不争</p>
                <button class="btn btn-outline-light">
                	<i class="fas fa-angle-double-right fa-2x"></i>
                </button>
              </div>
            </div>
    			</div>
  			</div>
  			<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
			</div>
			
			<div class="container my-2">
      <div class="row">
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-black">World</strong>
              <h3 class="mb-0">
                <a class="text-dark" href="#">Featured post</a>
              </h3>
              <div class="mb-1 text-muted">Nov 12</div>
              <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
              <a href="#">Continue reading</a>
            </div>
            <img class="card-img-right flex-auto d-none d-lg-block" data-src="static/js/holder.min.js/200x250?theme=thumb" alt="Card image cap">
          </div>
        </div>
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-black">Design</strong>
              <h3 class="mb-0">
                <a class="text-dark" href="#">Post title</a>
              </h3>
              <div class="mb-1 text-muted">Nov 11</div>
              <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
              <a href="#">Continue reading</a>
            </div>
            <img class="card-img-right flex-auto d-none d-lg-block" data-src="static/js/holder.mim.js/200x250?theme=thumb" alt="Card image cap">
          </div>
        </div>
      </div>
      
      <%@ include file="module/main.jsp" %>
      </div>
      
  </main>
			
	<%@ include file="module/footer.jsp" %>
  </body>
</html>