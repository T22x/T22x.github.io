<%@ page contentType="text/html;charSet=GBK" pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>用户名</title>
<script>
	function LoginSubmit(){  //对用户名和密码文本框进行不为空的校验函数
		with(document.Login){
			var user=loginName.value;   //相当于document.Regsiter. var user=loginName.value;
			var pass=password.value;
			if(user==null||user==""){
				alert("请填写用户名");
				}
				else if(pass==null||pass==""){
					alert("请填写密码");
					}
				else submit();
			}
		}
</script>
  <style>
    form{
      margin-left: 300px;
    }
  </style>
</head> 
<body>
<div id="header">
  <img src="images/top.jpg">
</div>
<form method="post" name="Login" action="checkUser.jsp" target=>
  <jsp:useBean id="account" class="bean.User" scope="session"></jsp:useBean>
  <p>
  用户名:<input type="text" name="loginName" size="20"></p>
  <p>
  密&nbsp; 码:<input type="password" name="password" size="20"></p>
  <p>
  <input type="button" value="提交" name="B1" onclick="LoginSubmit()">
  <input type="reset" value="重置" name="B2"></p>
</form>
</body>
</html>
