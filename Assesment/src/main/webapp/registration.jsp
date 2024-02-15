<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Registration Page</title>
<style>
body {
	background: linear-gradient(to right, #5198db, #383838);
	color: #fff;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
}

.registration-container {
	background: linear-gradient(to right, #1a1a1a, #383838);
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
	width: 400px;
}

.form-group {
	margin-bottom: 20px;
}

label {
	font-weight: bold;
}

.form-control {
	background: rgba(255, 255, 255, 0.1);
	border: 1px solid #fff;
	color: #fff;
}

.btn-register {
	background: #3498db;
	color: #fff;
}
</style>

<script src="validation.js"></script>
</head>

<body>

	<div class="registration-container">
		<h2 class="text-center mb-4">Registration</h2>
		
		<form method="post" action="AdminController" onsubmit="return validateForm()">
		
			<div class="form-group">
				<label for="username">Firstname</label> <input type="text"
					class="form-control" name="firstname"
					placeholder="Enter your firstname">
			</div>
			<div class="form-group">
				<label for="username">Lastname</label> <input type="text"
					class="form-control" name="lastname"
					placeholder="Enter your lastname">
			</div>
			<div class="form-group">
				<label for="username">Mobile</label> <input type="text"
					class="form-control" name="mobile" placeholder="Enter your mobileNo">
			</div>
			<div class="form-group">
				<label for="username">Address</label>
				<textarea rows="5" cols="5" class="form-control" name="address"></textarea>
			</div>

			<div class="form-check">
				<input class="form-check-input" type="radio" name="gender" value="male"id="flexRadioDefault1"> 
				<label class="form-check-label" for="flexRadioDefault1"> Male</label>
			</div>

			<div class="form-check">
				<input class="form-check-input" type="radio" name="gender" value="female" id="flexRadioDefault1"> 
				<label class="form-check-label" for="flexRadioDefault1"> Female </label>
			</div><br>
			
			<div class="form-group">
				<label for="email">Email address</label> <input type="email"
					class="form-control" name="email" onblur="checkEmail()" placeholder="Enter your email" required>
					<span id="emailError"></span>
			</div>

			<div class="form-group">
				<label for="username">Password</label> 
				<input type="password"
					class="form-control" id="firstname" name="password"
					placeholder="Enter your firstname">
			</div>
			<div class="form-group">
				<label for="username">Confirm Password</label> <input type="text"
					class="form-control" name="confirm"
					placeholder="Enter your firstname">
			</div>
			<button type="submit" class="btn btn-register btn-block"
				name="action" value="register">Register</button>
		</form>
	</div>
	
	

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>


