<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ include file="conn.jsp"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

	
String fid=(String)session.getAttribute("fid");
	
String au=null;
try
{

PreparedStatement ps=con.prepareStatement("select uau from fileupload where fid ='"+fid+"' ");
ResultSet rs=ps.executeQuery();
if(rs.next())
{

au=rs.getString("uau");
int i = Integer.parseInt( au );
  int r=i+1;
    String inc = Integer.toString(r);
		
	try
{

PreparedStatement ps1=con.prepareStatement("update fileupload set uau='"+inc+"' where fid='"+fid+"' ");
ps1.executeUpdate();


}
catch(Exception e)
{
out.println(e.getMessage());
}



}

}
catch(Exception e)
{
out.println(e.getMessage());
}
response.sendRedirect("file_download2.jsp");
		
%>



</body>
</html>