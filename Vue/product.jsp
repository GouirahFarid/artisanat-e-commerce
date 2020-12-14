<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Untitled Document</title>
    <!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	 <style><%@include file="/Vue/css/product.css"%></style>
    <style><%@include file="/Vue/css/navabar.css"%></style>
    <style><%@include file="/Vue/css/bootstrap-theme.min.css"%></style>
    <style><%@include file="/Vue/css/jquery.wm-zoom-1.0.min.css"%></style>
    <style><%@include file="/Vue/css/app.css"%></style>
  </head>
  <body>
      <%@include file="/Vue/navbar.jsp"%>
	  <div class="container-fluid product-description">
		  <div class="row">
			  <div class="col-xs-2 left">
				   <div class="col-xs-12"><h2>Categories</h2></div>
				   <div class="col-xs-12 cat1"><a href="#"><h3>Menuisier</h3></a></div>
				  <div class="col-xs-12 sous1">
					  <h4 class="h_1 hactive" ><a href="/Artisanat/product?cat=menuiserie&sousCat=table&pro=products"><i class="glyphicon glyphicon-menu-right"></i>Table</a></h4>
					  <h4 class="h_1"><a href="/Artisanat/product?cat=menuiserie&sousCat=bureau&pro=products"><i class="glyphicon glyphicon-menu-right"></i>Bureau</a></h4>
					  <h4 class="h_1"><a href="/Artisanat/product?cat=menuiserie&sousCat=chaise&pro=products"><i class="glyphicon glyphicon-menu-right "></i>Chaise</a></h4>
				  </div>
				  <div class="col-xs-12 cat2"><a href="#"><h3>Cuir</h3></a></div>
				  <div class="col-xs-12 sous2">
					  <h4 class="h_2 hactive" ><a href="#">Table</a></h4>
					  <h4 class="h_2"><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Bureau</a></h4>
					  <h4 class="h_2"><a href="#"><i class="glyphicon glyphicon-menu-right "></i>Chaise</a></h4>
				  </div>
				  <div class="col-xs-12 cat3"><a href="#"> <h3>Tailleur</h3></a></div>
				  <div class="col-xs-12 sous3">
					  <h4 class="h_3 hactive" ><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Table</a></h4>
					  <h4 class="h_3"><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Bureau</a></h4>
					  <h4 class="h_3"><a href="#"><i class="glyphicon glyphicon-menu-right "></i>Chaise</a></h4>
				  </div>
				  <div class="col-xs-12 cat4"><a href="#"><h3>Forgeron</h3></a></div>
				  <div class="col-xs-12 sous4">
					  <h4 class="h_4 hactive" ><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Table</a></h4>
					  <h4 class="h_4"><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Bureau</a></h4>
					  <h4 class="h_4"><a href="#"><i class="glyphicon glyphicon-menu-right "></i>Chaise</a></h4>
				  </div>
				   
			  </div>
			  <c:if test="${pro=='product'}">
			  <c:if test="${!empty publication }">
			  <div class="col-xs-10 right right1">
				  <div class="row">
					  <div class="col-xs-12">
						  <div class="row">
							  <div class="col-xs-1">
						      <div class="row">
						     
						  </div>
						  
					  </div>
					  <div class="col-xs-6">
						  <div class="row" >
							  <div class"col-xs-12" >
								  <img class="img-responsive choo" src="imgaes/12_2.jpg" alt="hello"/>
							  </div>
							  <div class="col-xs-12">
								  <div class="row">
							         <c:set var="comp" value="${0 }" scope="request" />
						      <c:forEach items="${publication.idImagesProducts}"  var="images" >
						      <c:if test="${comp==0 }">
							  <div class="col-xs-3 miniProduct">
								  <img src="F:/JAVA EE/fichiers/${images }" class="img-responsive im imactive" alt="product">
							  </div>
							  </c:if>
							  <c:if test="${comp>0 }">
							  <div class="col-xs-3 miniProduct">
								  <img src="F:/JAVA EE/fichiers/${images }" class="img-responsive im" alt="product">
							  </div>
							  </c:if>
							  <c:set var="comp" value="${comp + 1}" scope="request"/>
						  </c:forEach>
						  </div>
							  </div>
						  </div>
					  </div>
					   <div class="col-xs-4">
						<div class="row">
							   <div class="col-xs-12 title">
								   <p><h3>${publication.productTitle}</h3></p>
							   </div>
							   <div class="col-xs-12 Prix">
								   <p><h2>${publication.productPrice} DH</h2></p>
							   </div>
							   <div class="col-xs-12 description">
								   <p >${publication.productDescription}</p>
							   </div>
							  <div class="col-xs-12 username">
								   <a href="/Artisanat/user?user=${publication.userNameArtisan}"><h3>${publication.userNameArtisan}</h3></a>    
							   </div> 
						   </div>
					  </div>
						  </div>
					  </div>
					  <div class="col-xs-12 comentaires">
						  <div class="row">
							  <div class="col-xs-12 text-center"><h1>Commentaires</h1></div>
							  <c:if test="${!empty comments }">
							  <c:forEach items="${comments }" var="comment">
							  <div class="col-xs-12 commentaire">
							    <div class="row">
							        <div class="col-xs-2"></div>
							       <div class="col-xs-10"><i class="glyphicon glyphicon-user"></i>${comment.userName }</div>
							       <div class="col-xs-2"></div>
								  <div class="col-xs-10">
								    <div class="row">
								       <div class="col-xs-12">${comment.contentComment}</div>
								       <div class="col-xs-12 dateComment text-left">${comment.dateComment }</div>
								    </div>
								  </div>
							  </div>
							  </div>
							  </c:forEach>
							  </c:if>
							  <div class="col-xs-12 new_com">
								  <div class="col-xs-1">
									  <img class="img-circle img-responsive img_com" src="F:/JAVA EE/fichiers/${sessionScope.photo}" alt="comentaire">
								  </div>
								  <form method="post" action="product" >
								 
								  <div class="col-xs-10">
									  <input type="text" class="form-control" name="commentaire"/>
								  </div>
								  <div class="col-xs-1"><button type="submit" class="btn ok"><i class="glyphicon glyphicon-ok"></i></button></div>
								   <input type="hidden" name="pageName" value="comm"/>
								  <input type="hidden" name="username" value="${sessionScope.username}"/>
				                  <input type="hidden" name="id_pub" value="${publication.idPubliaction}"/>
								  </form>
							  </div>
						  </div>
					  </div>
					  
				  </div>
			  </div></c:if>
			  </c:if>
			  <c:if test="${pro=='products'}">
			  <div class="col-xs-10 right right2">
				  <div class="row">
				     <div class="col-xs-12 maxMin">
						  <div class="row">
							  <div class="col-xs-1 col-xs-offset-3">Prix:</div>
							   <form method="post" action="product" >
							       <input type="hidden" name="pageName" value="minMax"/>
							     <div class="col-xs-1"><input type="text" class="form-control " placeholder="min" name="min"></div>
							     <div class="col-xs-1"><input type="text" class="form-control" placeholder="max" name="max"></div>
							     <div class="col-xs-1"><button type="submit" class="btn" value="ok">ok</button></div>
							  </form>
						  </div>
					  </div>
				  <c:forEach items="${products }" var="product">
					   <a href="/Artisanat/product?idP=${product.idPubliaction}&pro=product"><div class="col-xs-3 productClass">
					  <div class="row">
					  <div class="col-xs-12">
					  <c:set var="count" value="${0 }" scope="request" />
					  <c:forEach items="${product.idImagesProducts }" var="imgs">
					   <c:if test="${count==0 }">
					   <img src="F:/JAVA EE/fichiers/${imgs }" class="img-responsive imgClass" alt="menuisier">
					   </c:if>
					    <c:set var="count" value="${count + 1}" scope="request"/>
		                </c:forEach>
 					  </div>
					  <div class="col-xs-12  titleClass">${product.productTitle }</div>
					</div>
				  </div></a>
				  </c:forEach>
				  </div>
			  </div>
			  </c:if>
			  
		  </div>  
	  </div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script type="text/javascript"><%@include file="/Vue/js/product.js" %></script>
   <script type="text/javascript"><%@include file="/Vue/js/navbar.js" %></script>
   <script type="text/javascript"><%@include file="/Vue/js/jquery.wm-zoom-1.0.min.js" %></script>
   
	  
  </body>
</html>