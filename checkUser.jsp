<%@ page import="bean.dbPoolCon" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Peipei
  Date: 2024/4/26
  Time: 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("loginName");
    String password = request.getParameter("password");
    boolean isAuthenticated = false;

    try {
        Connection con = dbPoolCon.getConnect();
        // 使用PreparedStatement来防止SQL注入
        PreparedStatement pstmt = con.prepareStatement("SELECT * FROM userinfo WHERE loginName=? AND password=?");
        pstmt.setString(1, name);
        pstmt.setString(2, password);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            // 如果找到用户，设置session属性和重定向
            session.setAttribute("loginName", name);
            response.sendRedirect("main.jsp");
            isAuthenticated = true; // 标记用户已验证
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // 在这里关闭数据库资源
        // ...（您应该添加代码来关闭ResultSet, PreparedStatement, 和 Connection）
    }
%>

<% if (!isAuthenticated) { %>
<p>无此用户或密码有误，登录失败！<br><br></p>
<a href="login.jsp">重新登录</a>
<% } %>
