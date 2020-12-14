<nav class="navbar navbar-default navbar-fixed-top">
	   <div class="container">
	     <!-- Brand and toggle get grouped for better mobile display -->
	     <div class="navbar-header">
	       <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topFixedNavbar1" aria-expanded="false"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
	       <a class="navbar-brand" href="#">ARTISANAT</a></div>
	     <!-- Collect the nav links, forms, and other content for toggling -->
	     <div class="collapse navbar-collapse" id="topFixedNavbar1">
	       <ul class="nav navbar-nav">
	         <li class=" li liactive"><a href="#"><i class="glyphicon glyphicon-home"></i><span class="sr-only">(current)</span></a></li>
	         <li class="li"><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
			 <li class="li"><a href="#"><i class="glyphicon glyphicon-comment"></i></a></li>
			  <li class="li"><a href="#"><i class="glyphicon glyphicon-bell"></i></a></li>
           </ul>
	       <form class="navbar-form navbar-left" role="search" method="post" action="product">
			   <div class="form-group">
	            <select name="selectCat" class="form-control">
					<option value="all">All</option>
					<option value="all">All</option>
				   </select>
             </div>
	         <div class="form-group">
	            <input type="hidden" name="pageName" value="search" />
	           <input type="text" class="form-control" placeholder="Search" name="valueSearch">
             </div>
	         <button type="submit" class="btn btn-default search"><i class="glyphicon glyphicon-search"></i></button>
           </form>
	       <ul class="nav navbar-nav navbar-right">
	         <li class="dropdown li"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Profile<span class="caret"></span></a>
	           <ul class="dropdown-menu">
	           <c:if test="${empty sessionScope.username }">
	             <li class="text-center"><a href="/Artisanat/login"><button class="btn Sign ">SIGN UP/SIGN IN</button></a></li>
	             </c:if>
	             <c:if test="${!empty sessionScope.username }">
	               <a href="/Artisanat/profile?log=login"><li class="pro">
					 <div class="row">
						 <div class="col-xs-12">
							 <img class="img-responsive test_img" src="F:/JAVA EE/fichiers/${sessionScope.photo}" alt="phto du profile">
						 </div>
						 <div class="col-xs-12">
							 <h4 class="h_4"><i class="glyphicon glyphicon-user"></i>:${sessionScope.username }</h4>
						 </div>
						 <div class="col-xs-12">
							 <h4 class="h_4"><i class="glyphicon glyphicon-envelope"></i>:${ sessionScope.email }</h4>
						 </div>
						 <div class="col-xs-12">
							 <h4 class="h_4"><i class="glyphicon glyphicon-phone"></i>:${sessionScope.tele }</h4>
						 </div>
					 </div>
				   </li></a>
	             </c:if>
	             
	             
               </ul>
             </li>
           </ul>
         </div>
	     <!-- /.navbar-collapse -->
      </div>
	   <!-- /.container-fluid -->
  </nav>