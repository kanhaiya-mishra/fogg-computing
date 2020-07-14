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
	String fid=request.getQueryString();
	String fid1=(String)session.getAttribute("fid");

	
	String fname=null;
	
	
try
{

PreparedStatement ps=con.prepareStatement("select fname from fileupload where fid ='"+fid1+"' ");
ResultSet rs=ps.executeQuery();
if(rs.next())
{

fname=rs.getString("fname");


session.setAttribute("fname",fname);



}

}
catch(Exception e)
{
out.println(e.getMessage());
}
	
	
	Blob file= null;
	
	
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
	 sql = "select file from fileupload where fid ='"+fid1+"'";
	
	try
	{
	
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		rs.next();
		file = rs.getBlob(1);
		
		session.setAttribute("resumeBlob",file);
	}
	catch(Exception e)
	{
	out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
			 

	}
	response.sendRedirect("count.jsp");
	%>

</body>
</html>
