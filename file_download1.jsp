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
	//String fid=(String)session.getAttribute("fid");
	String fid=(String)session.getAttribute("fid");
	out.print(fid);

	
	String fname=null;
	
	
try
{

PreparedStatement ps=con.prepareStatement("select fname from fileupload where fid ='"+fid+"' ");
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
		
	String sql = "select file from fileupload where fid ='"+fid+"'";
	
	try
	{
		
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next())
		{
		file = rs.getBlob(1);
		}
		//---------------------------
		session.setAttribute("resumeBlob",file);
		//------------------------------
	}
	catch(Exception e)
	{
	out.println("Exception :"+e);
	}
	
	
byte[] bdata = file.getBytes(1, (int)file.length());
String data1 = new String(bdata);

	// response.sendRedirect("file_download2.jsp");
 String str=data1.replaceAll("a","m").replaceAll("b","n").replaceAll("c","o").replaceAll("d","p").replaceAll("f","r").replaceAll("g","s").replaceAll("h","t").replaceAll("i","o").replaceAll("j","w"). replaceAll("k","x").replaceAll("l","y") .replaceAll("m","z");
   
   byte [] bytes = str.getBytes();
    
  
	session.setAttribute("resumeBlob",bytes);

response.sendRedirect("count1.jsp");

%>

</body>
</html>
