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
		<!--<link rel="stylesheet" href="css/bootstrap.css">
            <link href="css/home.css" rel="stylesheet" type="text/css">
	        <link rel="stylesheet"  href="css/footer.css">-->
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <style><%@include file="/Vue/css/home.css"%></style>
    <style><%@include file="/Vue/css/navabar.css"%></style>
    <style><%@include file="/Vue/css/footer.css"%></style>
  </head>
  <body style="padding-top: 70px">
    <%@include file="/Vue/navbar.jsp"%>
  <!-- start Carousel-->
	   <div id="Carousele" class="carousel slide" data-ride="carousel">
		   
	     <ol class="carousel-indicators">
	       <li data-target="#Carousele" data-slide-to="0" class="active"></li>
	       <li data-target="#Carousele" data-slide-to="1"></li>
	       <li data-target="#Carousele" data-slide-to="2"></li>
		   <li data-target="#Carousele" data-slide-to="3"></li>
	       <li data-target="#Carousele" data-slide-to="4"></li>
		   <li data-target="#Carousele" data-slide-to="5"></li>
         </ol>
		   
	     <div class="carousel-inner" role="listbox">
			 
	       <div class="item active"><img  class="img-responsive" src="F:/JAVA EE/Artisanat/WebContent/Vue/images/tool-1314070_1920.jpg" alt="First slide image" >
           </div>
			 
	       <div class="item"><img  class="img-responsive center-block" src="F:/JAVA EE/Artisanat/WebContent/Vue/images/blacksmith-2740128_1920.jpg" alt="Second slide image">
           </div>
			 
	       <div class="item"><img  class="img-responsive center-block" src="F:/JAVA EE/Artisanat/WebContent/Vue/images/old-town-3890202_1920.jpg" alt="Third slide image" >
           </div>
			 
			 <div class="item"><img  class="img-responsive center-block" src="F:/JAVA EE/Artisanat/WebContent/Vue/images/4k.jpg" alt="Third slide image">
           </div>
			 
			  <div class="item"><img  class="img-responsive center-block" src="F:/JAVA EE/Artisanat/WebContent/Vue/images/pottery-2784562_1920.jpg" alt="Third slide image">
			 </div>
				  
				   <div class="item"><img  class="img-responsive center-block" src="F:/JAVA EE/Artisanat/WebContent/Vue/images/sewing-machine-3728748_1920.jpg" alt="Third slide image" >
           </div>
        
			 
         </div>
		   
	     <a  class="left carousel-control" href="#Carousele" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" ></span></a>
		   
		   <a class="right carousel-control" href="#Carousele" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" ></span></a>
	  
	  </div>
<!-- End Carousel-->
	  <!------------------------------------------------------------------------------------------>
		  <div class="container">
			  <div class="row">
			  <div class="col-xs-12 categorie">
				  <h1 class="text-center">CATEGORIES</h1>
				  
				  <div class="col-xs-3 cat">
				  <a href="/Artisanat/product?cat=menuiserie&sousCat=table&pro=products">
					  <div class="row">
					  <div class="col-xs-12">
						  <img src="F:/JAVA EE/Artisanat/WebContent/Vue/images/logo.jpg" class="img-responsive img-circle" alt="menuisier">
 					  </div>
					  <div class="col-xs-12 text-center"><h4>MENUISIER</h4></div>
					</div></a>
				  </div>
					  
				    <div class="col-xs-3 cat">
					  <div class="row">
					  <div class="col-xs-12">
						  <img src="F:/JAVA EE/Artisanat/WebContent/Vue/images/cuir.jpg" class="img-responsive img-circle" alt="menuisier">
 					  </div>
					  <div class="col-xs-12 text-center"><h4>CUIR</h4></div>
					</div>
				  </div>
				   <div class="col-xs-3 cat">
					  <div class="row">
					  <div class="col-xs-12">
						  <img src="F:/JAVA EE/Artisanat/WebContent/Vue/images/tailleur.jpg" class="img-responsive img-circle" alt="menuisier">
 					  </div>
					  <div class="col-xs-12 text-center"><h4>TAILLEUR</h4></div>
					</div>
				  </div>
				   <div class="col-xs-3 cat">
					  <div class="row">
					  <div class="col-xs-12">
						  <img src="F:/JAVA EE/Artisanat/WebContent/Vue/images/forgeron_95.jpg" class="img-responsive img-circle" alt="menuisier">
 					  </div>
					  <div class="col-xs-12 text-center"><h4>FORGERON</h4></div>
					</div>
				  </div>
			  </div>
			  <div class="col-xs-12 product">
				  <h1 class="text-center">PRODUITS POPULAIRES</h1>
				  <c:set var="coun" value="${0 }" scope="request" />
				   <c:forEach items="${productsBureau}" var="bureau">
				      <c:if test="${coun<=3 }">
					   <a href="/Artisanat/product?idP=${bureau.idPubliaction}&pro=product" class="a"><div class="col-xs-3 productClass">
					  <div class="row">
					  <div class="col-xs-12">
					  <c:set var="count" value="${0 }" scope="request" />
					  <c:forEach items="${bureau.idImagesProducts }" var="imgs">
					   <c:if test="${count==0 }">
					   <img src="F:/JAVA EE/fichiers/${imgs }" class="img-responsive imgClass" alt="menuisier">
					   </c:if>
					    <c:set var="count" value="${count + 1}" scope="request"/>
		                </c:forEach>
 					  </div>
					  <div class="col-xs-12 text-center titleClass">${bureau.productTitle }</div>
					</div>
				  </div></a>
				    </c:if>
				    <c:set var="coun" value="${coun + 1}" scope="request"/>
				  </c:forEach>
				  
				  <c:set var="coun" value="${0 }" scope="request" />
				  <c:forEach items="${productsTable}" var="table">
				      <c:if test="${coun<=3 }">
					   <a href="/Artisanat/product?idP=${table.idPubliaction}&pro=product" class="a"><div class="col-xs-3 productClass">
					  <div class="row">
					  <div class="col-xs-12">
					  <c:set var="count" value="${0 }" scope="request" />
					  <c:forEach items="${table.idImagesProducts }" var="imgs">
					   <c:if test="${count==0 }">
					   <img src="F:/JAVA EE/fichiers/${imgs }" class="img-responsive imgClass" alt="menuisier">
					   </c:if>
					    <c:set var="count" value="${count + 1}" scope="request"/>
		                </c:forEach>
 					  </div>
					  <div class="col-xs-12 text-center titleClass">${table.productTitle }</div>
					</div>
				  </div></a>
				    </c:if>
				    <c:set var="coun" value="${coun + 1}" scope="request"/>
				  </c:forEach>
				  <c:set var="coun" value="${0 }" scope="request" />
				  <c:forEach items="${productsChaise}" var="chaise">
				      <c:if test="${coun<=3 }">
					   <a href="/Artisanat/product?idP=${chiase.idPubliaction}&pro=product" class="a"><div class="col-xs-3 productClass">
					  <div class="row">
					  <div class="col-xs-12">
					  <c:set var="count" value="${0 }" scope="request" />
					  <c:forEach items="${chaise.idImagesProducts }" var="imgs">
					   <c:if test="${count==0 }">
					   <img src="F:/JAVA EE/fichiers/${imgs }" class="img-responsive imgClass" alt="menuisier">
					   </c:if>
					    <c:set var="count" value="${count + 1}" scope="request"/>
		                </c:forEach>
 					  </div>
					  <div class="col-xs-12 text-center titleClass">${chaise.productTitle }</div>
					</div>
				  </div></a>
				    </c:if>
				    <c:set var="coun" value="${coun + 1}" scope="request"/>
				  </c:forEach>
			  </div>
		  </div>
		</div>
	    <%@include file="/Vue/footer.jsp"%>

        <!--  <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.js"></script>
	    <script src="js/home.js"></script>-->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script type="text/javascript"><%@include file="/Vue/js/profile.js"%></script>
   <script type="text/javascript"><%@include file="/Vue/js/navbar.js"%></script>
</body>
</html>