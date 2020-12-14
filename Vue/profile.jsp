<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <style><%@include file="/Vue/css/profile.css"%></style>
    <style><%@include file="/Vue/css/navabar.css"%></style>
  </head>
  <body>
  <%@include file="/Vue/navbar.jsp"%>
	 <div class="container-fluid profile">
		  <div class="row">
			  <div class="col-xs-2 left">
				  <div class="row">
					  <div class="col-xs-12 image_profile"> <img class="img-circle img-responsive" src="F:/JAVA EE/fichiers/${sessionScope.photo}" alt="photo de profile"/>  
					  </div>
					   <div class="col-xs-12">
						  <h3 class="text-center">${sessionScope.username }</h3>
					  </div>
					  <div class="col-xs-12 show3_3  info active">
						   <a href="#">Mes publications</a>
					  </div>
					   <div class="col-xs-12 show2_2  info">
						   <a href="#">Ajouter Publication</a>
					  </div>
					   <div class="col-xs-12 show4_4 info">
						  <a href="#">Photos</a>
					  </div>
					  <div class="col-xs-12 show1_1 info">
						  <a href="#">Mes Paramètres</a>
					  </div>
					 
					  <div class="col-xs-12 info">
						  <a href="/Artisanat/profile?log=logout">Déconnexion</a>
					  </div>
				  </div>
			  </div>
			  <div class="col-xs-10 right">
				  <div class="row">
					  <div class="col-xs-12 show1 parametre">
						  <form method="post" action="profile" enctype="multipart/form-data">
				            <input type="hidden" name="pageName" value="parametre"/>
						  <div class="row">
							  <div class="col-xs-12 two">
								  <div class="row">
									   <div class="col-xs-6">
										  <label>Adresse e-mail actuelle:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="email" class="form-control hi" name="old_email" value="${sessionScope.email }" >
                                        </div>
									  </div>
									   <div class="col-xs-6">
										  <label>Nouvel e-mail:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="email" class="form-control" name="new_email" placeholder="Neveau E-mail" >
                                        </div>
									  </div>
								  </div>
							  </div>
							   <div class="col-xs-12 two">
								  <div class="row">
									   <div class="col-xs-6">
										  <label>CIN actuel:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="text" class="form-control hi" name="old_cin" value="${sessionScope.cin }" >
                                        </div>
									  </div>
									   <div class="col-xs-6">
										  <label>Nouveau CIN:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="text" class="form-control" name="new_cin">
                                        </div>
									  </div>
								  </div>
							  </div>
							  <div class="col-xs-12 two">
								  <div class="row">
									  <div class="col-xs-6">
										  <label>Adresse actuelle:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="text" class="form-control hi" name="old_adresse" value="${sessionScope.adresse }" >
                                        </div>
									  </div>
									   <div class="col-xs-6">
										  <label>Nouvel Adresse:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="text" class="form-control" name="new_adresse" >
                                        </div>
									  </div>
								  </div>
							  </div>
							   <div class="col-xs-12 two">
								  <div class="row">
									  <div class="col-xs-6">
										  <label>Tele  actuel:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                                           <input type="tel" class="form-control hi" name="old_tele" value="${sessionScope.tele }" >
                                        </div>
									  </div>
									  <div class="col-xs-6">
										  <label>Nouveau Tele:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                                           <input type="tel" class="form-control" name="new_tele">
                                        </div>
									  </div>
								  </div>
							  </div>
							  <div class="col-xs-12 two">
								  <div class="row">
									  <div class="col-xs-4">
										    <label>Ancien mot de passe:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="text" class="form-control" name="prenom" >
                                        </div>
									  </div>
									  <div class="col-xs-4">
										   <label>Nouveau mot de passe:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="text" class="form-control" name="prenom" >
                                        </div>
									  </div>
									  <div class="col-xs-4">
										    <label>Réécrire nouveau mot de passe:</label>
							              <div class="input-group">
                                           <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                           <input type="text" class="form-control" name="prenom" >
                                        </div>
									  </div>
								  </div>
							  </div>
							  <div class="col-xs-12 two">
								  <div class="row">
									  <div class="col-xs-6">
										  <label>Modifier image du profile:</label>
										  <div class="input-group">
                                             <input class="form-control" type="file" placeholder="Add profile picture"/>
                                          </div>
									  </div>
									  <div class="col-xs-6">
										  <input type="submit" class="btn btn-primary"   value="Enregestire"/>
									  </div>
								  </div>
							  </div>
						  </div>
						</form>
					  </div>
					  <div class="col-xs-12 show2 ajouter_publication sh">
						  <form method="post" action="profile" enctype="multipart/form-data">
				            <input type="hidden" name="pageName" value="ajouter_publication"/>
				            <input type="hidden" name="user" value="${sessionScope.username}"/>
						  <div class="row">
							  <div class="col-xs-12">
								  <div class="row">
									  <div class="col-xs-4">
										  <label for="title">Nom du Produit<span class="span">(*)</span>:</label>
										  <input type="text" class="form-control input" name="title">
									  </div>
									  <div class="col-xs-4">
										  <label for="categorie">Categorie<span class="span">(*)</span>:</label>
										  <select name="categorie" class="form-control input">
											  <option value="bureau">Bureau</option>
											  <option value="chaise">Chaise</option>
											  <option value="table">Table</option>
										  </select>
									  </div>
									  <div class="col-xs-4">
										  <label for="prix">Prix du Produit(DH)<span class="span">(*)</span>:</label>
										  <input type="text" class="form-control input" name="prix">
									  </div> 
								  </div>
							  </div>
								  <div class="col-xs-12">
										  <label for="description">Description du propuit<span class="span">(*)</span>:</label>
										  <textarea name="description" style="height:200px;" class="form-control input"  placeholder="Description de votre produit"></textarea>
								  </div>
								 
								  <div class="col-xs-12">
										 <label>Images <span class="span">(*)</span>:</label>
									  <div class="row">
										  <div class="col-xs-3 images image1">
											  <div class="input-group">
                                              <input class="form-control" type="file" name="image1"/>
                                          </div>
										  </div>
										  <div class="col-xs-3 omg1">
											  <i  class="glyphicon glyphicon-remove sup1"></i>
											  <img class="img-responsive img-rounded omg1-1"  alt="test">
                                          </div>
										 
										  <div class="col-xs-3 images image2">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="image2"/>
                                          </div>
										  </div>
										   <div class="col-xs-3 omg2">
											   <i  class="glyphicon glyphicon-remove sup2"></i>
											  <img class="img-responsive img-rounded omg2-2"  alt="test">
                                          </div>
										  
										  <div class="col-xs-3 images image3">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="image3"/>
                                          </div>
										   </div>
										   <div class="col-xs-3 omg3">
											   <i  class="glyphicon glyphicon-remove sup3"></i>
											  <img class="img-responsive img-rounded omg3-3"  alt="test">
                                          </div>
										  
										  <div class="col-xs-3 images image4">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="image4"/>
                                          </div>
										  </div>
										   <div class="col-xs-3 omg4">
											   <i  class="glyphicon glyphicon-remove sup4"></i>
											  <img class="img-responsive img-rounded omg4-4"  alt="test">
                                          </div>
										  
										  <div class="col-xs-3 images image5">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="image5"/>
                                          </div>
										  </div>
									      <div class="col-xs-3 omg5">
											  <i  class="glyphicon glyphicon-remove sup5"></i>
											  <img class="img-responsive img-rounded omg5-5"  alt="test">
                                          </div>
										  <div class="col-xs-3 images image6">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="image6"/>
                                          </div>
										  </div>
										  <div class="col-xs-3 omg6">
											  <i  class="glyphicon glyphicon-remove sup6"></i>
											  <img class="img-responsive img-rounded omg6-6"  alt="test">
                                          </div>
										  <div class="col-xs-3 images image7">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="image7"/>
                                          </div>
											  </div>
											  <div class="col-xs-3 omg7">
												  <i  class="glyphicon glyphicon-remove sup7"></i>
											  <img class="img-responsive img-rounded omg7-7"  alt="test">
                                          </div>
										  
										  <div class="col-xs-3 images image8">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="image8"/>
                                          </div>
										  </div>
										  <div class="col-xs-3 omg8">
											  <i  class="glyphicon glyphicon-remove sup8"></i>
											  <img class="img-responsive img-rounded omg8-8"  alt="test">
                                          </div>
									  </div>
									      
										   
									  </div>
							  <div class="col-xs-12">
										 <label>Videos<span class="span">(*)</span>:</label>
									  <div class="row">
										  <div class="col-xs-3 images video1">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="video1"/>
                                          </div>
										  </div>
										  <div class="col-xs-3 images video2">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="video2"/>
                                          </div>
										  </div>
										  <div class="col-xs-3 images video3">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="video3"/>
                                          </div>
										  </div>
										  <div class="col-xs-3 images video4">
											  <div class="input-group">
                                              <input class="form-control " type="file" name="video4"/>
                                          </div>
										  </div>
										 
									  </div>
                                   </div>
							      <div class="col-xs-12 text-center">
                                    <input type="submit" class="btn btn-primary" name="save" value="Save">
						          </div>
							     </div>
						
							  </form>
					  </div>
					  <div class="col-xs-12 show3 publications sh">
						  <div class="row">
				         <c:forEach items="${products }" var="product">
					   <a href="/Artisanat/product?idP=${product.idPubliaction}&pro=product" class="a"><div class="col-xs-3 productClass">
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
					  <div class="col-xs-12 text-center titleClass">${product.productTitle }</div>
					</div>
				  </div></a>
				  </c:forEach>
				  </div>
				</div>
					  <div class="col-xs-12 show4 photos sh">
					     <div class="row">
					     <c:forEach items="${images}" var="image">
							 <div class="col-xs-3 photG">
								 <img class="img-responsive tof" src="F:/JAVA EE/fichiers/${image}" alt="tof">
							 </div>
						</c:forEach>
						  </div>
					  </div>
				  </div>
			  </div>
			  <div class="col-xs-12 popup">
				  <i class="glyphicon glyphicon-remove sup"></i>
				   <img class="img-responsive tof2" alt="tof2">
			  </div>
		  </div>
	  </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script type="text/javascript"><%@include file="/Vue/js/profile.js"%></script>
   <script type="text/javascript"><%@include file="/Vue/js/navbar.js"%></script>
  </body>
</html>