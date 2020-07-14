<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>
<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
session.setAttribute("un",un);
session.setAttribute("pw",pw);


try
{


PreparedStatement ps=con.prepareStatement("select * from  admin where name='"+un+"' && pass='"+pw+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
response.sendRedirect("adminpanel.jsp");
}
response.sendRedirect("admin_login.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>