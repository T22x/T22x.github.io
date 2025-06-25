<%@ page contentType="text/html;charset=gbk" %>
<%@ page import="java.sql.*" %>
<HTML><BODY bgcolor=yellow>
 <% Connection conn;
        Statement stmt; 
        ResultSet rs;
         try{  Class.forName("com.mysql.jdbc.Driver");
              }  catch(Exception e){}
         try { String url= "jdbc:mysql://localhost:3306/student";
                  String user=" root";
                  String password=" root";
                  conn=DriverManager.getConnection(url,user,password);
                  stmt=conn.createStatement();
                  rs=stmt.executeQuery("SELECT * FROM  stu ");
          out.print("<table border=1>");
          out.print("<tr>");
          out.print("<th width=50>"+"  id  ");
          out.print("<th width=100>"+" name  ");
          out.print("<th width=50>"+"   sex  ");
          out.print("<th width=100>"+" age   ");
          out.print("<th width=150>"+"  home  ");
          out.print("</tr>");
         while(rs.next()){
               out.print("<tr>");
               out.print("<td >"+rs.getInt("id") +"</td>");
               out.print("<td >"+rs.getString("name") +"</td>");
               out.print("<td >"+rs.getString("sex") +"</td>");
               out.print("<td >"+rs.getInt("age") +"</td>");
               out.print("<td >"+rs.getString("home") +"</td>");
               out.print("</tr>") ; 
          }
          out.print("</table>");
          conn.close();
        }
          catch(SQLException e){ 
               out.print(e);
    }
 %>	
</BODY>
</HTML>
