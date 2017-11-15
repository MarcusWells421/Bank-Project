<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="./styles/styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <title>Claim Academy Bank</title>
</head>
<body>
  <nav class="navbar navbar-primary navbar-fixed-top">
    <div class="container">
    <div class="navbar-header">
  <button type ="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr only">Toggle navigation</span>
    <span class="icon bar"></span>
    <span class="icon bar"></span>
    <span class="icon bar"></span>
  </button>
  <h2 style="text-align:right">Welcome to Claim Academy Bank</h2>
    </div>
      <div id="navbar" class="navbar-collapse collapse">
      </div><!--/navbar-collapse-->
    </div>
  </nav>
  <div class="jumbotron">
    <div class="container">
  	<video id="video" autoplay loop width="1100" height="275">
        <source src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Claim_Academy_Bank_Banner.mp4"> </source>
    </video>
    </div>
  </div>
  <div class="container">
<!-- Example rows of columns -->
    <div class="row">
      <div class="col-md-6">
      <h2>New to Claim Academy Bank?</h2>
        <div style="border-left:medium #7B68EE solid; position: absolute; left: 500px; height:240px;" /></div>
      <h4>  Open A New Account!</h4><br>
      <a class="btn btn-primary btn-lg" href="newaccount.jsp" role="button"><em>Let's Get Started!</em></a>
      </div>  
	  <div class="col-md-6">
  		<h2>Returning customer?</h2>
		<form action="LoginServlet" method="post">
  			<div class="form-group">
    			<label for="userId">Please Enter Your User ID</label>
    			<div class="input-group">
  					<input type="email" class="form-control" placeholder="Your e-mail address is your User ID" aria-describedby="basic-addon2">
  					<span class="input-group-addon" id="userId">username@example.com</span>
				</div>
	  			<!-- input type="text" class="form-control" name="userId" id="userId" placeholder="Enter Your E-mail address"-->
  			</div>
  			<div class="form-group">
    			<label for="password">Please Enter Your Password (case sensitive)</label>
	  			<input type="password" class="form-control" name="password" id="password" placeholder="Password">
  			</div>
  			<br>
  		<button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
  		<!--button type="submit" class="btn btn-default">Submit</button-->
  		</form>
  	  </div>
	<footer>
  	<p>©2017 Wells Financial Holdings, Inc., a subsidiary of MarcusCorp</p>
	</footer>
	</div>
  </div><!-- /container -->
</body>
</html>