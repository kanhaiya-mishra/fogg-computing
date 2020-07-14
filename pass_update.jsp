<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>
<%


String name=(String)session.getAttribute("un");

String pw=(String)session.getAttribute("pw");
try
{

PreparedStatement ps=con.prepareStatement("update signup set pass='"+pw+"',cpass='"+pw+"' where name='"+name+"' ");
ps.executeUpdate();


}
catch(Exception e)
{
out.println(e.getMessage());
}

 response.sendRedirect("user_login.jsp");
 


%>