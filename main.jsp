<%--
  Created by IntelliJ IDEA.
  User: lixiaojun
  Date: 2024/4/6
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<HTML>
<HEAD>
    <TITLE>网上书店项目实训</TITLE>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<center>
    <div id="container">
        <div id="header">
            <img SRC=images/top.jpg ></img>
        </div>
        <div class="nav"></div>
        <div class="left_main" >
            <iframe width=180px  height=425px  SRC=left.jsp></iframe>
        </div>
        <div class="right_main" >
            <iframe name="main" width=620px  height=425px  SRC=right.jsp></iframe>
        </div>
    </div>
</center>
</body>
</HTML>
