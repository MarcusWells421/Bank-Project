<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Transaction</title>
	<link rel="stylesheet" type="text/css" href="./styles/styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<style>

		.btn btn-lg {
    	background-color: black;
    	text-align: center;
    	padding: 7px;
		}
		
		.btn {
    	background-color: #8c1aff;
		}
		
		ul { text-align: center; }
		
		.gradient {
     	background: linear-gradient(#8c1aff, #ffffff);
     	border-color: #26004d;
  		}  		
  		
  		input[type="radio"] {
 		 margin-left: 30px;
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
    	<c:if test="${param.show == 'sd' || param.show == 'sw' || param.show == 'csd' || param.show == 'esd' || param.show == 'esw'}">
      	${sAcctName}
      	</c:if>
      	<c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'ccd' || param.show == 'ecd' || param.show == 'ccw' || param.show == 'ecw'}">
      	${cAcctName}
      	</c:if>
      </strong></em></font></h1>
    </div>
    <br>
    <ul class="nav navbar-nav navbar-right">
		<li><h4><font color=#f2e6ff><em><strong>Open since 
		  <c:if test="${param.show == 'sd' || param.show == 'sw' || param.show == 'csd' || param.show == 'esd' || param.show == 'esw'}">
		    ${sOpenSince}    
		  </c:if>
		  <c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'ccd' || param.show == 'ecd' || param.show == 'ccw' || param.show == 'ecw'}">
		    ${cOpenSince}    
		  </c:if>
		</strong></em></font></h4></li>
    </ul>
  </div>
  </nav>
  <nav class="navbar navbar-primary">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
      <h3><font color=#26004d><strong>Account Number  </strong><em>
      <c:if test="${param.show == 'sd' || param.show == 'sw' || param.show == 'csd' || param.show == 'esd' || param.show == 'esw'}">
      	${sAcctNum}
      </c:if>
      <c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'ccd' || param.show == 'ecd' || param.show == 'ccw' || param.show == 'ecw'}">
      	${cAcctNum}
      </c:if>
      </em></font></h3>

	  <center><h2><font color=#26004d><strong>Balance </strong>
	  	<c:if test="${param.show == 'sd' || param.show == 'sw' || param.show == 'csd' || param.show == 'esd' || param.show == 'esw'}">
	  	${sBalance}
	    </c:if>	
	  	<c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'ccd' || param.show == 'ecd' || param.show == 'ccw' || param.show == 'ecw'}">
	  	${cBalance}
	    </c:if>
	  </font></h2></center>
    </div>
  </nav>

<!-- Transaction Type Radio Buttons >
	<c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'sd' || param.show == 'sw'}">
	<center>
	  <form name="transType">
  		<input type="radio" name="transType" value="CASH" class="transType" checked><font size="5px"> Cash</font>
  		<c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'sd'}">
  		  <input type="radio" name="transType" value="CHECK" class="transType"><font size="5px"> Check</font>
  		  
  		</c:if>
  		<input type="radio" name="transType" value="ELECTRONIC FUNDS TRANSFER" class="transType"><font size="5px"> Electronic Funds Transfer</font>
	  </form>
	</center>
  	<br>
	</c:if>
<End of Transaction Type Radio Buttons -->
  	
    <div class="row">
      <div class="col-lg-4">
      </div>
      <div class="col-lg-4">
      	<c:if test="${param.show == 'sd' || param.show == 'sw' || param.show == 'cd' || param.show == 'cw'}">
  	  	  <label for="amount">Please enter the amount you are 
  	  	    <c:if test="${param.show == 'sd' || param.show == 'cd' || param.show == 'ccd' || param.show == 'ecd' || param.show == 'csd' || param.show == 'esd'}">
  	  	    depositing.
  	  	    </c:if>
  	  	    <c:if test="${param.show == 'sw' || param.show == 'cw' || param.show == 'ccw' || param.show == 'ecw' || param.show == 'esw'}">
  	  	    withdrawing / transferring.
  	  	    </c:if>
  	  	  </label>
		</c:if>
      		<c:if test="${param.show == 'sd'}">
      		  <form action="TransactionServlet?trans=sd" method="post">
      			<div class="input-group input-group-lg">
      			  <span class="input-group-addon" id="sizing add-on1">$</span>
      				<input type="number" class="form-control" placeholder="0.00" aria-label="amount" aria-describedby="amount" min="0.01" step="0.01" max="2500" name="amount">
      				<input type="hidden" name="show" value="sd">
      			  <span class="input-group-btn">
      				<button class="btn btn-lg" type="submit"><font color="white">Confirm</font></button>
      			  </span>
      			</div>
			      <span class="input-group-addon"><b>Maximum amount for online transactions: $2500.00</b><br></span>
	<center>
		<br>
  		<input type="radio" name="transType" value="CASH" class="transType" checked><font size="5px"> Cash</font>
  		<c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'sd'}">
  		  <input type="radio" name="transType" value="CHECK" class="transType"><font size="5px"> Check</font>
  		</c:if>
  		<input type="radio" name="transType" value="ELECTRONIC FUNDS TRANSFER" class="transType"><font size="5px"> Electronic Funds Transfer</font>
	</center>
      		  </form>
      		</c:if>

      		<c:if test="${param.show == 'cd'}">
      		  <form action="TransactionServlet?trans=cd" method="post">
      			<div class="input-group input-group-lg">
      			  <span class="input-group-addon" id="sizing add-on1">$</span>
      				<input type="number" class="form-control" placeholder="0.00" aria-label="amount" aria-describedby="amount" min="0.01" step="0.01" max="2500" name="amount">
      				<input type="hidden" name="show" value="cd">
      			  <span class="input-group-btn">
      				<button class="btn btn-lg" type="submit"><font color="white">Confirm</font></button>
      			  </span>
      			</div>
			      <span class="input-group-addon"><b>Maximum amount for online transactions: $2500.00</b><br></span>
	<center>
		<br>
  		<input type="radio" name="transType" value="CASH" class="transType" checked><font size="5px"> Cash</font>
  		<c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'sd'}">
  		  <input type="radio" name="transType" value="CHECK" class="transType"><font size="5px"> Check</font>
  		</c:if>
  		<input type="radio" name="transType" value="ELECTRONIC FUNDS TRANSFER" class="transType"><font size="5px"> Electronic Funds Transfer</font>
	</center>
      		</form>
      		</c:if>

      		<c:if test="${param.show == 'sw'}">
      		  <form action="TransactionServlet?trans=sw" method="post">
      			<div class="input-group input-group-lg">
      			  <span class="input-group-addon" id="sizing add-on1">$</span>
      				<input type="number" class="form-control" placeholder="0.00" aria-label="amount" aria-describedby="amount" min="0.01" step="0.01" max="2500" name="amount">
      				<input type="hidden" name="show" value="sw">
      			  <span class="input-group-btn">
      				<button class="btn btn-lg" type="submit"><font color="white">Confirm</font></button>
      			  </span>
      			</div>
			      <span class="input-group-addon"><b>Maximum amount for online transactions: $2500.00</b><br></span>
	<center>
		<br>
  		<input type="radio" name="transType" value="CASH" class="transType" checked><font size="5px"> Cash</font>
  		<c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'sd'}">
  		  <input type="radio" name="transType" value="CHECK" class="transType"><font size="5px"> Check</font>
  		</c:if>
  		<input type="radio" name="transType" value="ELECTRONIC FUNDS TRANSFER" class="transType"><font size="5px"> Electronic Funds Transfer</font>
	</center>
      		  </form>
      		</c:if>

      		<c:if test="${param.show == 'cw'}">
      		  <form action="TransactionServlet?trans=cw" method="post">
      			<div class="input-group input-group-lg">
      			  <span class="input-group-addon" id="sizing add-on1">$</span>
      				<input type="number" class="form-control" placeholder="0.00" aria-label="amount" aria-describedby="amount" min="0.01" step="0.01" max="2500" name="amount">
      				<input type="hidden" name="show" value="cw">
      			  <span class="input-group-btn">
      				<button class="btn btn-lg" type="submit"><font color="white">Confirm</font></button>
      			  </span>
      			</div>
			      <span class="input-group-addon"><b>Maximum amount for online transactions: $2500.00</b><br></span>
	<center>
		<br>
  		<input type="radio" name="transType" value="CASH" class="transType" checked><font size="5px"> Cash</font>
  		<c:if test="${param.show == 'cd' || param.show == 'cw' || param.show == 'sd'}">
  		  <input type="radio" name="transType" value="CHECK" class="transType"><font size="5px"> Check</font>
  		</c:if>
  		<input type="radio" name="transType" value="ELECTRONIC FUNDS TRANSFER" class="transType"><font size="5px"> Electronic Funds Transfer</font>
	</center>
      		  </form>
      		</c:if>
<!-- Get Check # -->

			<c:if test="${param.show == 'csd' || param.show == 'ccd' || param.show == 'ccw'}">
      		  <label for="checknumber">Please enter the Check Number</label>
      		  <form action="TransactionServlet" method="post">
      			<div class="input-group input-group-lg">
      			  <span class="input-group-addon">Check #</span>
      			    <input type="number" class="form-control" placeholder="Check #" aria-label="checknumber" aria-describedby="checknumber" name="checknumber" required>

<!-- Passing a trans value back to the TransactionServlet to be used as the switch value-->
					<c:if test="${param.show == 'csd'}">
      				  <input type="hidden" name="trans" value="sd">
					</c:if>
					<c:if test="${param.show == 'ccd'}">
      				  <input type="hidden" name="trans" value="cd">
					</c:if>
					<c:if test="${param.show == 'ccw'}">
      				  <input type="hidden" name="trans" value="cw">
					</c:if>
				</div>
<!-- Get payor -->
				<div class="input-group input-group-lg">
			  <c:if test="${param.show == 'csd' || param.show == 'ccd' || param.show == 'esd' || param.show == 'ecd'}">
				<br>
				<label for="payor">From whom are you receiving funds?</label>
      			  <input type="text" class="form-control" aria-label="payor" aria-describedby="payor" name="payor" required>

<!-- Passing a trans value back to the TransactionServlet to be used as the switch value-->
      			<c:if test="${param.show == 'esd'}">
      			  <input type="hidden" name="trans" value="sd">
				</c:if>
      			<c:if test="${param.show == 'ecd'}">
      			  <input type="hidden" name="trans" value="cd">
				</c:if>
			  </c:if>

<!-- Get payee -->
			  <c:if test="${param.show == 'esw' || param.show == 'ecw'}">
				<label for="payee">To whom are you transferring funds?</label>
				  <input type="text" class="form-control" aria-label="payee" aria-describedby="payee" name="payee" required>

<!-- Passing a trans value back to the TransactionServlet to be used as the switch value-->
      			<c:if test="${param.show == 'esw'}">
      			  <input type="hidden" name="trans" value="sw">
				</c:if>
      			<c:if test="${param.show == 'ecw'}">
      			  <input type="hidden" name="trans" value="cw">
				</c:if>
			  </c:if>

			</div>
			<br>
			<center>
				<button class="btn btn-lg btn-block" type="submit"><font color="white">Confirm</font></button>
			</center>
      		  </form>
			
			</c:if>

	  </div>
      <div class="col-lg-4">
    	<div>
    	</div>
      </div>

	</div>
  </div>
  <br><br><br><br><br><br><br><br><br><br><br><br>
  ©2017 Wells Financial Holdings Inc., a subsidiary of MarcusCorp
</body>
</html>