<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Untitled Document</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <style><%@include file="/Vue/css/inscription.css"%></style>
  </head>
  <body>
	  <div class="container one">
		  <div class="row">
			  <div class="col-xs-12 choose">
				  <div class="row">
					  <div class="col-md-6 col-xs-12 text-center">
						  <button class="btn client active">Client</button>
					  </div>
					  <div class="col-md-6 col-xs-12 text-center">
						  <button class="btn artisan noactive">Artisan</button>
					  </div>
				  </div>
			  </div>
			  <div class="col-xs-12 gouirah">
				  <h1 class="text-center">Client</h1>
				   <form method="post" action="signup" >
				   <input type="hidden" name="pageName" value="client"/>
					  <div class="row ">
						  <div class="col-xs-12">
							   <label>Prenom<span class="Ob">(*)</span>:</label>
							  <div class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                             <input type="text" class="form-control" name="prenom" placeholder="Prenom"  required>
                             </div>
						  </div>
						  
						  <div class="col-xs-12">
							  <label>Nom<span class="Ob">(*)</span>:</label>
						      <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i>    </span>
                               <input type="text" class="form-control" name="nom" placeholder="Nom" required>
                              </div>
						  </div>
						  <div class="col-xs-12">
							  <label>Username<span class="Ob">(*)</span>:</label>
						     <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-user" ></i>   </span>
                              <input type="text" class="form-control" name="username" placeholder="sername" required>
                             </div> 
						  </div>
						  <div class="col-xs-12">
							 <label>E-mail<span class="Ob">(*)</span>:</label>
						    <div class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i>  </span>
                             <input type="email" class="form-control" name="email" placeholder="E-mail(Exemple@exemple)" required>
                            </div>
						  </div>
						  <div class="col-xs-12">
							 <label>Mot de passe<span class="Ob">(*)</span>:</label>
						     <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i>   </span>
                              <input type="password" class="form-control" name="pass" placeholder="Mot de pass" required>
                             </div>
						  </div>
						  <div class="col-xs-12">
							  <label>Mot de passe<span class="Ob">(*)</span>:</label>
						       <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i>     </span>
                                <input type="password" class="form-control" name="pass2" placeholder="Confirm Password" required>
                               </div>
						  </div>
					  </div>
					  <div class="col-xs-12 text-center">
                           <input type="submit" class="btn btn-primary" name="save" value="Save">
					  </div>
					  <div class="col-xs-12 text-right text-warning">
						  <label><span class="Ob">(*)</span>:Obligatoire</label>
					  </div>
				  </form>
			  </div>
			  <div class="col-xs-12 elkhaldi">
				  <h1 class="text-center">Artisan</h1>
				  <form method="post" action="signup" enctype="multipart/form-data">
				  <input type="hidden" name="pageName" value="artisan"/>
					  <div class="row">
						  <!---------------------------------------->
						  <div class="col-xs-12">
							  <div class="row">
								  <div class="col-md-6 col-xs-12">
									  <label>Prenom<span class="Ob">(*)</span>:</label>
									   <div class="input-group">
                                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                  <input type="text" class="form-control" name="prenom" placeholder="Pr�nom">
                               </div>
								  </div>
								  
								  <div class="col-md-6 col-xs-12">
									  <label>Nom<span class="Ob">(*)</span>:</label>
									  <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" class="form-control" name="nom" placeholder="Nom">
                               </div>
								  </div>
						     </div>
						  </div>
						  						  <!---------------------------------------->
						   <div class="col-xs-12">
							  <div class="row">
								  <div class="col-md-6 col-xs-12">
									  <label>CIN<span class="Ob">(*)</span>:</label>
									<div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                      <input type="text" class="form-control" name="cin" placeholder="CIN">
                                    </div>
								  </div>
								 <div class="col-md-6 col-xs-12">
									 <label>Adresse<span class="Ob">(*)</span>:</label>
									<div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-"></i></span>
                                      <input type="text" class="form-control" name="adresse" placeholder="Adresse">
                                    </div>
								  </div>
						     </div>
						  </div>
						  						  <!---------------------------------------->
						   <div class="col-xs-12">
							  <div class="row">
								   <div class="col-md-6 col-xs-12">
									   <label>E-mail<span class="Ob">(*)</span>:</label>
									  <div class="input-group">
                                         <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input type="email" class="form-control" name="email" placeholder="E-mail(Exemple@exemple)">
                                      </div>
								  </div>
								  <div class="col-md-6 col-xs-12">
									  <label>Date de Naissance<span class="Ob">(*)</span>:</label>
									  <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="date" class="form-control" name="date">
                                   </div>
								  </div>
                               </div>
								 
						     </div>

						  						  <!---------------------------------------->
						   <div class="col-xs-12">
							  <div class="row">
								  <div class="col-md-6 col-xs-12">
									  <label>Numero du telephone<span class="Ob">(*)</span>:</label>
									   <div class="input-group">
                                         <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                         <input type="text" class="form-control" name="numTele" placeholder="Numero de telephone">
                                       </div>
								  </div>
								  <div class="col-md-6 col-xs-12">
									  <label>Image du profile<span class="Ob">(*)</span>:</label>
									  <div class="input-group">
                                         <input class="form-control" type="file"  name="fichier" />
                                      </div>
								  </div>
						     </div>
						  </div>

						  						  <!---------------------------------------->
						  <div class="col-xs-12">
							  <div class="row">
								   <div class="col-md-6 col-xs-12">
									   <label>Mot de pass<span class="Ob">(*)</span>:</label>
									  <div class="input-group">
                                         <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input type="password" class="form-control" name="pass" placeholder="Mot de passe">
                                      </div>
								  </div>
								  <div class="col-md-6 col-xs-12">
									  <label>Mot de pass<span class="Ob">(*)</span>:</label>
									  <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input type="password" class="form-control" name="pass2" placeholder="Mot de pass">
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
		  </div>
	  </div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script type="text/javascript"><%@include file="/Vue/js/inscription.js"%></script>
  </body>
</html>