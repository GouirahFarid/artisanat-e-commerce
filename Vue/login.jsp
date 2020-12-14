<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <style><%@include file="/Vue/css/login.css"%></style>
  </head>
  <body>
	<div class="container login">
		  <div class="row">
		  <form method="post" action="login" >
				  <input type="hidden" name="pageName" value="login"/>
			     <div class="col-xs-12 login2">
					 <label>E-mail<span class="Ob">(*)</span>:</label>
				  <div class="input-group">
                         <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i>  </span>
                         <input type="email" class="form-control" name="email" placeholder="E-mail(Exemple@exemple)" required>
                        </div>
				</div>
		       <div class="col-xs-12 login2">
		         <label>Mot de passe<span class="Ob">(*)</span>:</label>
			     <div class="input-group">
					 <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i>  </span>
                     <input type="password" class="form-control" name="pass" placeholder="Mot de pass" required>
                 </div>
			  </div>
			  <div class="col-xs-12 text-center login2">
				  <button type="submit" class="btn btn-group-lg btn-primary">SIGN IN</button>
			  </div>
			  <div class="col-xs-12 login2 text-center">
				  <p >Not registered? <a href="/Artisanat/signup">Create an account</a></p>
			  </div>
			</form>
		</div>
	  </div>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <script type="text/javascript"><%@include file="/Vue/js/login.js"%></script>
</body>
</html>