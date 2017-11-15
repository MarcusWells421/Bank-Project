<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		ul {text-align: center;}
		
		.gradient {
     	background: linear-gradient(#8c1aff, #ffffff);
     	border-color: #26004d;
  		}

	</style>
	
</head>
<body>
  <div class="gradient">
  <img src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Claim Academy Bank logo 3.jpg" width="100%" height="170">
  <nav>
  <div class="container-fluid">
    <div class="navbar-header">
      <h1><font color=#f2e6ff><em><strong>
        <c:if test="${param.show == 'Advantage Savings'}">	
      		${sAcctName}
      	</c:if>
		<c:if test="${param.show == 'Checking Plus'}">
			${cAcctName}
		</c:if>
      	</strong></em></font></h1>
    </div>
    <br>
    <ul class="nav navbar-nav navbar-right">
	  <li><h4><font color=#f2e6ff><em><strong>Open since 
	  <c:if test="${param.show == 'Advantage Savings'}">
	    ${sOpenSince}    
	  </c:if>
      <c:if test="${param.show == 'Checking Plus'}">
        ${cOpenSince}    
      </c:if>
      </strong></em></font></h4></li>
    </ul>
  </div>
  </nav>
  <nav>
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
      <h3><font color=#26004d><strong>Account Number  </strong><em>
      <c:if test="${param.show == 'Advantage Savings'}">
        ${sAcctNum}
      </c:if>
      <c:if test="${param.show == 'Checking Plus'}">
        ${cAcctNum}
      </c:if>
      </em></font></h3>
    <br>
      <center><h2><font color=#26004d><strong>Balance </strong>
      <c:if test="${param.show == 'Advantage Savings'}">
      	${sBalance}
      </c:if>
      <c:if test="${param.show == 'Checking Plus'}">
        ${cBalance}
      </c:if>
      </font></h2></center>
    </div>
  </nav>
  <div class="container container-center">
	<center><h2>What would you like to do?</h2></center>
	<br>
	<ul class="list-inline">
		<c:if test="${param.show == 'Advantage Savings'}">
	  		<li><a href="transaction.jsp?show=sd" class="btn btn-info btn-lg" role="submit">Make A Deposit</a></li>
	  	</c:if>
		<c:if test="${param.show == 'Checking Plus'}">
	  		<li><a href="transaction.jsp?show=cd" class="btn btn-info btn-lg" role="submit">Make A Deposit</a></li>
	  	</c:if>
  				<li></li>
  				<li></li>
	  	<c:if test="${param.show == 'Advantage Savings'}">
	  		<li><a href="transaction.jsp?show=sw" class="btn btn-success btn-lg" role="submit" >Make A Withdrawal</a></li>
 		</c:if>
	  	<c:if test="${param.show == 'Checking Plus'}">
	  		<li><a href="transaction.jsp?show=cw" class="btn btn-success btn-lg" role="submit" >Make A Withdrawal</a></li>
 		</c:if>
 		 		<li></li>
 		 		<li></li>
 	 		<li><a href="#" class="btn btn-warning btn-lg" role="button" >See Recent Activity</a></li>
  				<li></li>
  				<li></li>
  			<li><a href="#" class="btn btn-danger btn-lg" role="button" >Logout</a></li>
	</ul>  
  </div>
  </div>
</body>
</html>