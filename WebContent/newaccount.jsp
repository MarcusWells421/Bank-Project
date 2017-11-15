<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Claim Academy Bank</title>
	<link rel="stylesheet" type="text/css" href="./styles/styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
	<form class = "container" action="NewAcctServlet" method ="post">
	<video id="video" autoplay loop align="left" width="1100" height="140">
        <source src="C:\Users\Marcus Anthony Wells\eclipse-workspace\BankingProject\bank-project\WebContent\Media\Claim Academy Bank Banner Small.mp4"> </source>
    </video>
	<h1>Open A New Account</h1>
	<h4>Thank you for choosing Claim Academy Bank!<br><br>To open an account online, all of the information requested below must be provided.  
	After completing all fields, click 'Go to the Account Selection Screen' and we'll get started!</h4>
  <br>
  <h6><font color="red"><strong>*</strong></font><strong>  Indicates a required field</strong></h6>
  <br>
  <h4><em>What's Your Name?</em></h4>
  <div class = "form-group">
	<label for = "firstName">First name</label><font color="red"><strong> *</strong></font>
	<input type = "text" class="form-control" name = "firstName" id="firstName" placeholder="First Name" required>
  </div>
  <div class = "form-group">
	<label for = "middleName">Middle name</label>
	<input type = "text" class="form-control" name = "middleName" id="middleName" placeholder="Middle Name">
  </div>
  <div class = "form-group">
	<label for = "lastName">Last Name</label><font color="red"><strong> *</strong></font>
	<input type="text" class="form-control" name="lastName" id="lastName" placeholder = "Last Name" required>
  </div>
    <br>
	<h4><em>What's Your Address?</em></h4>
	<div class="form-group">
	<label for= "street">Street</label><font color="red"><strong> *</strong></font>
	<input type="text" class="form-control" name="street" id="street" placeholder = "Street" required>
  </div>
  <div class="form-group">
	<label for="city">City</label><font color="red"><strong> *</strong></font>
	<input type="text" class="form-control" name="city" id="city" placeholder = "City" required>
  </div>
  <div class="form-group">
	<label for="state">State</label><font color="red"><strong> *</strong></font>
	<input type="text" class="form-control" name="state" id="state" placeholder="State" min="2" max="2" size="2" required>
  </div>
  <div class="form-group">
	<label for="zipCode">Zip Code</label><font color="red"><strong> *</strong></font>
	<input type="text" class="form-control" name="zipCode" id="zipCode" placeholder = "Zip Code" size="5" required>
  </div>
  <br>
  <h4><em>How can we contact you?</em></h4>
  <div class="form-group">
	<label for="telephone">Primary Telephone Number</label><font color="red"><strong> *</strong></font>
	<input type="tel" class="form-control" name="telephone" id="telephone" placeholder = "Example: 555-555-1212" required>
  </div>
	<label for ="email">E-mail Address</label><font color="red"><strong> *</strong></font>
	  <div class="input-group">
		<input type="email" name="email" class="form-control" placeholder="Your e-mail address will be your User ID" aria-describedby="basic-addon2" required>
  		<span class="input-group-addon" id="email">username@example.com</span>
	  </div>
  <br>
  <h4><em>Password</em></h4>
  <div class = "form-group">
	<label for= "password">Choose A Password (case sensitive)<font color="red"><strong> *</strong></font></label>
	<input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
  </div>
  <br>
  <h4>We're glad to have you with us!</h4>
  <br>
  <button type="submit" class="btn btn-primary btn-lg btn-block">Go to the Account Selection Screen</button>
  <br><br><br><br>
	</form>
  </body>
</html>