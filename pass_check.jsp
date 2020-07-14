<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>
<%
String op=request.getParameter("op");
String pw=request.getParameter("np");
session.setAttribute("op",op);
session.setAttribute("pw",pw);
String name=(String)session.getAttribute("un");


try
{

PreparedStatement ps=con.prepareStatement("select * from  signup where name='"+name+"' && cpass='"+op+"'");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
response.sendRedirect("pass_update.jsp");
}

}
catch(Exception e)
{
out.println(e.getMessage());
}

%>