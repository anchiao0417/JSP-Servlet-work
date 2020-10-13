<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal file</title>
<style type="text/css">
*{
  font-family:微軟正黑體;
  position:relative;
}
html,body{
  width: 100%;height: 100%;
  padding:0px;margin:0px;
}
body{
  margin: 0;
  padding: 0;
  font-family: 微軟正黑體;
  background-image: linear-gradient(to top, #48c6ef 0%, #6f86d6 100%);		
  height: 100vh;
  overflow: hidden;
}
.namecard{
  width: 350px;height: 200px;
  padding:20px;
  margin-left:auto;
  margin-right:auto;
  margin-top:200px;
  background-color:#eee;
  letter-spacing:1px;
  color:rgba(0,0,0,0.6);
  font-weight:100;
  overflow:hidden;
  border-radius:6px;
  border:solid 1px rgba(0,0,0,0.15);
  box-shadow:0px 0px 15px rgba(0,0,0,0.2);

}
.namecard h5{
  color:#20DFE8;
  font-weight:300;
}
.namecard h2{
  font-size:25px;
  font-weight:700;
}
.namecard h2 span{
  font-size :12px;
}

.namecard p{
  font-size :12px;
  line-height:10px;
}
.circle{
  width: 100px;
  height: 100px;
  border-radius:100%;
  position:absolute;
}
.circle1{
  right: 100px;
  background-color:#20DFE8;
}
.circle2{
  width: 60px;height :60px;
  right: -30px;
  top:-30px;
  border:solid 3px #20DFE8;
}
.page_title{
/*   border:solid ; */
  text-align:center;
  color:#555;
  font-weight:500;
}
.mark{
  font-size:300px;
  position: absolute;
  bottom:100px;
  color:rgba(0,0,0,0.05);
  font-weight:100;
}

</style>
</head>
<body>
  <div class="namecard">
    <h2>${user}</h2>
    <h5>個人履歷名片</h5>
    <hr>
    <p>興趣:${person.getHobby()}</p>
    <p>性別:${person.getGender()==1?"male":"female"}</p>
    <p>年齡:${person.getAge()}</p>
    <div class="circle circle1"></div>
    <div class="circle circle2"></div>
  </div>
</body>
</html>