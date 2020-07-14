<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>
<%

String name=(String)session.getAttribute("un");
String ans=(String)session.getAttribute("ans");
String ke=(String)session.getAttribute("ke");
try
{


PreparedStatement ps=con.prepareStatement("select * from  signup where name='"+name+"' && answer='"+ans+"' && keyy='"+ke+"'");
ResultSet rs=ps.executeQuery();
int i=0;
while(rs.next())
{
i++;


}
if(i>0)
{
response.sendRedirect("file1_download.jsp");
}
else
{

response.sendRedirect("file_download.jsp");
}
//============================================================================================================


//=========================================================================================================
}

catch(Exception e)
{
out.println(e.getMessage());
}

%>
