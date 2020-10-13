<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set property</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: 微軟正黑體;
	background-image: linear-gradient(to top, #48c6ef 0%, #6f86d6 100%);
	height: 100vh;
	overflow: hidden;
}

.center {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 400px;
	background: white;
	border-radius: 10px;
}

.center header {
	padding: 0 0 20px 0;
	border-bottom: 1px solid silver;
}

.center h1 {
	color: #2691d9;
	margin-bottom: 0px;
	text-align: center;
}

.center h3 {
	color: #2691d9;
	margin-top: 0px;
	text-align: center;
}

.center form {
	padding: 0 40px;
	box-sizing: border-box;
}

form .txt_field {
	position: relative;
	border-bottom: 2px solid #adadad;
	margin: 30px 0;
}

.txt_field input {
	width: 100%;
	padding: 0 5px;
	height: 40px;
	font-size: 16px;
	border: none;
	background: none;
	outline: none;
}

.txt_field label {
	position: absolute;
	top: 50%;
	left: 5px;
	color: #adadad;
	transform: translateY(-50%);
	font-size: 16px;
	pointer-events: none;
	transition: 0.5s;
}

.txt_field span::before {
	content: '';
	position: absolute;
	top: 40px;
	left: 0;
	width: 0%;
	height: 2px;
	background: #2691d9;
	transition: 0.5s;
}

.txt_field input:focus ~ label, .txt_field input:valid ~ label {
	top: -5px;
	color: #2691d9;
}

.txt_field input:focus ~ span::before, .txt_field input:valid ~ span::before
	{
	width: 100%;
}

.pass {
	margin: -5px 0 20px 5px;
	color: #a6a6a6;
	cursor: pointer;
}

.pass:hover {
	text-decoration: underline;
}

input[type="submit"] {
	width: 100%;
	height: 50px;
	border: 1px solid;
	background: #2691d9;
	border-radius: 25px;
	font-size: 18px;
	color: #e9f4fb;
	font-weight: 700;
	cursor: pointer;
	outline: none;
}

input[type="submit"]:hover {
	border-color: #2691d9;
	trantsition: .5s;
}

.signup_link {
	margin: 30px 0;
	text-align: center;
	font-size: 16px;
	color: #666666;
}

.gender {
	margin: 30px 0;
	color: #a6a6a6;
}

#error {
	color: red;
}
</style>
</head>
<body>
	<div class="center">
		<div class="header">
			<h1>hello,${user}</h1>
			<h3>pls update your personal file</h3>
			<h3 id="error">${errorString}</h3>

		</div>
		<form action="../StoreJdbcProperty.do" method="post">
			<div class="txt_field">
				<input type="text" name="hobby" required="required"> <span></span>
				<label>Hobby</label>
			</div>
			<div class="txt_field">
				<input type="text" name="age" required="required"> <span></span>
				<label>Age</label>
			</div>
			<div class="gender">
				<label for="gender">gender:</label> <input type="radio"
					name="gender" value="m">male <input type="radio"
					name="gender" value="f">female
			</div>
			<input type="submit" value="submit">
			<div class="signup_link"></div>
		</form>
	</div>
</body>
</html>