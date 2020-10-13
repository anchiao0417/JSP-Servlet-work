<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
  margin: 0;
  padding: 0;
  font-family: 微軟正黑體;
  background-image: linear-gradient(to top, #48c6ef 0%, #6f86d6 100%);		
  height: 100vh;
  overflow: hidden;
}
.center{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 400px;
  background: white;
  border-radius: 10px;
}
.center h1{
  text-align: center;
  padding: 0 0 20px 0;
  border-bottom: 1px solid silver;
}
.center form{
  padding:  0 40px;
  box-sizing: border-box;
}
form .txt_field{
   position: relative;
   border-bottom: 2px solid #adadad;
   margin: 30px 0;
}
.txt_field input{
  width: 100%;
  padding: 0 5px;
  height: 40px;
  font-size: 16px;
  border: none;
  background: none;
  outline: none;
}
.txt_field label{
  position: absolute;
  top: 50%;
  left: 5px;
  color: #adadad;
  transform: translateY(-50%);
  font-size: 16px;
  pointer-events: none;
  transition: 0.5s;
}
.txt_field span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0%;
  height: 2px;
  background: #2691d9;
  transition: 0.5s;
}
.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
  top:-5px;
  color:  #2691d9;
}
.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before{
  width: 100%;
}
.pass{
  margin: -5px 0 20px 5px;
  color: #a6a6a6;
  cursor: pointer;
}
.pass:hover{
  text-decoration: underline;
}
input[type="submit"]{
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
input[type="submit"]:hover{
  border-color: #2691d9;
  trantsition: .5s;
}
.signup_link{
  margin: 30px 0;
  text-align: center;
  font-size: 16px;
  color: #666666;
}
.signup_link a{
  color: #2691d9;
  text-decoration: none;
}
.signup_link a:hover{
  color: #2691d9;
  text-decoration: underline;
}



</style>
</head>
<body>
  <div class="center">
    <h1>Login</h1>
    <form action="../loginDataCheck.do" method="post">
      <div class="txt_field">
        <input type="text" name="username" required="required">
        <span></span>
        <label>Username</label>
      </div>
      <div class="txt_field">
        <input type="password" name="userpsd" required="required">
        <span></span>
        <label>Password</label>
      </div>
      <div class="pass">Forgot Password?</div>
      <input type="submit" value="Login">
      <div class="signup_link">
        Not a member?<a href="registerAccount.jsp">註冊</a>
      </div>
    </form>
  </div>
</body>
</html>