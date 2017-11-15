<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Account Page</title>
	<link rel="stylesheet" type="text/css" href="./styles/styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<style>

  		.btn-danger {
    	color: white !important;
    	text-align: center;
    	padding: 10px;
		}

		.btn {
    	color: black;
    	text-align: center;
    	padding: 10px;
		}

 		.gradient {
     	background: linear-gradient(#8c1aff, #ffffff);
     	border-color: #26004d;
  		}
  
  		.header-text {
  		font-family: "Magneto";
		font-size: 4em;
		font-weight: normal;
  		}
  				
	</style>
</head>
<body>
  <div class="gradient">
  	<!-- div class="header-text">
  	Claim Academy Bank
  	</div-->
  <img src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Claim Academy Bank logo 3.jpg" width="100%" height="170">
  <nav>
    <div class="container-fluid">
      <div class="navbar-header">
        <h1><font color=#f2e6ff><strong>Your Accounts</strong></font></h1>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li><h3><font color=#f2e6ff><em><strong>Welcome ${firstName}        <font color="f2e6ff">    </font></strong></em></font></h3></li>
      </ul>
    </div>
  </nav>
	<center><h2>Click on the name of the account you would like to view</h2></center>
	<br>
    <table class="table table-hover">
	  <tr>
        <th><h4><strong>Account Number</strong></h4></th>
        <th><h4><strong>Account Name</strong></h4></th>
        <th><h4><strong>Available Balance</strong></h4></th>
      </tr>
    <c:if test="${sAcctNum != null}">
      <tr>
          <td><h3>${sAcctNum}</h3></td>
          <td><h3><a href="accountscreen.jsp?show=Advantage Savings">${sAcctName}</a></h3></td>
          <td><h3>${sBalance}</h3></td>
          	<c:if test="${cAcctNum == null}">
			  <br><br><br><br>
			</c:if>
      </tr>
	</c:if>
    <c:if test="${cAcctNum != null}">
      <tr>
          <td><h3>${cAcctNum}</h3></td>
          <td><a href="accountscreen.jsp?show=Checking Plus"><h3>${cAcctName}</h3></a></td>
          <td><h3>${cBalance}</h3></td>
          <c:if test="${sAcctNum == null}">
			<br><br><br><br>
		  </c:if>
      </tr>
	</c:if>
	</table>
	</div>
	<br><br>
	<br><br>
</body>
</html>