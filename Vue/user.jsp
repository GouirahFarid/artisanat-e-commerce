<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Untitled Document</title>
    <!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <style><%@include file="/Vue/css/user.css"%></style>
    
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
  </head>
  <body>
	  <div class="container userProfile">
		  <div class="row">
			  <div class="col-xs-12"><img class="img-circle userPhoto" src="F:/JAVA EE/fichiers/${account.idPhotoAccount}" alt="hello"></div>
			  <div class="col-xs-12 one"><i class="glyphicon glyphicon-user">:</i>${account.firstName} ${account.secondName}</div>
			  <div class="col-xs-12 one"><i class="glyphicon glyphicon-envelope">:</i>${account.mail}</div>
			  <div class="col-xs-12 one"><i class="glyphicon glyphicon-phone">:</i>${account.numTelephone}</div>
			  <div class="col-xs-12 one"><i class="glyphicon glyphicon-user">:</i>${account.adresseArtisan}</div>
			  <div class="col-xs-12 text-right"><a href="/Artisanat/"><button class="btn btn-primary">Retour</button></a></div>
		  </div>
	  </div>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  </body>
</html>