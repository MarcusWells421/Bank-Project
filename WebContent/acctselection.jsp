<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select an Account</title>
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
  <div>
  <h1 align="center">Choose A New Account</h1>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-6">
		<form action="SetUpNewAcct" method="post">
          <br>
          <!-- button type="submit" class="btn btn-light" style="border:none;" name="savings" value="savings">
		  <img src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Savings Button.jpg" height="550" width="550"/>
		  </button-->
		  <a href="http://localhost:8080/bank-project/SetUpNewAcct?acctSelected=Advantage Savings">
		  <img src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Savings Button.jpg" height="570" width="570"/>
		  </a>
		</form>
	  </div>
	  <div class="col-md-6">
	    <form  action="SetUpNewAcct" method="post">
		  <!-- button type="submit" class="btn btn-light" style="border:none;" name="checking" value="checking">
		  <img src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Checking Button.jpg" height="570" width="570"/>
		  </button-->
		  <a href="http://localhost:8080/bank-project/SetUpNewAcct?acctSelected=Checking Plus">
		  <img src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Checking Button.jpg" height="600" width="570"/>
		  </a>
	    </form>
	  </div>
  	</div>
	<!-- footer><p>© 2017 Wells Financial Holdings, Inc., a subsidiary of MarcusCorp</p></footer-->
  </div><!-- /container -->
  <img src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Family silhouette.jpg" style="position: absolute; left: 660px; top: 500px;">
  <br><br><br><br><br><br><br><br><br>
</body>
</html>