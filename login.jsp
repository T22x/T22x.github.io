<%@ page contentType="text/html;charSet=GBK" pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�û���</title>
<script>
	function LoginSubmit(){  //���û����������ı�����в�Ϊ�յ�У�麯��
		with(document.Login){
			var user=loginName.value;   //�൱��document.Regsiter. var user=loginName.value;
			var pass=password.value;
			if(user==null||user==""){
				alert("����д�û���");
				}
				else if(pass==null||pass==""){
					alert("����д����");
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
  �û���:<input type="text" name="loginName" size="20"></p>
  <p>
  ��&nbsp; ��:<input type="password" name="password" size="20"></p>
  <p>
  <input type="button" value="�ύ" name="B1" onclick="LoginSubmit()">
  <input type="reset" value="����" name="B2"></p>
</form>
</body>
</html>
