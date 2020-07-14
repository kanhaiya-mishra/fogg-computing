<%@ page import="java.sql.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page  import="java.sql.*" %>
<%@ page  import="java.util.*"%>
<%@ include file="conn.jsp"%>
<%@ page language="java" import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" import ="java.security.InvalidAlgorithmParameterException"%>
<%@ page language="java" import ="java.security.InvalidKeyException"%>
<%@ page language="java" import ="java.security.NoSuchAlgorithmException"%>

<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>	
<%@ page language="java" import="java.util.*"%>


<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/shtml; charset=iso-8859-1">
</head>

<body>
<%
String n=request.getParameter("n");
String p=request.getParameter("p");
String cp=request.getParameter("cp");
String em=request.getParameter("em");

String mn=request.getParameter("mn");
String ad=request.getParameter("ad");
String q=request.getParameter("q");
String a=request.getParameter("an");
String f=request.getParameter("f");
session.setAttribute("ft",f);
String t=request.getParameter("t");
session.setAttribute("tt",t);
String alert="yes";


//---------------------------------------------------------------------------------------------------------------------------

 String u;
byte[] userBytes=null;
byte[] raw = null;
u=p;
  String key="1111111111111111";
     try
     {

SecretKeySpec keySpec = new SecretKeySpec(key.getBytes(), "AES");
IvParameterSpec ivSpec = new IvParameterSpec(key.getBytes());
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
cipher.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);
userBytes = u.getBytes("UTF8");
raw = cipher.doFinal(userBytes);
} 
catch (Exception e1)
{
	e1.printStackTrace();
}

BASE64Encoder encoder = new BASE64Encoder();
String base64u = encoder.encode(raw);
//--------------------------------------------------------------------------------------------------------------------

try
{
	//============================================key=================================
	 Random ty = new Random();
int  k=ty.nextInt(9999999);
//System.out.print(k);
session.setAttribute("em",em);
session.setAttribute("kk",k);
%>
<%@ include file="regmails.jsp"%>

<%
//=====================================================================================

PreparedStatement ps=con.prepareStatement("insert into signup(name,pass,cpass,email,mobile,address,question,answer,from1,to1,alert,keyy) values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,n);
ps.setString(2,base64u);
ps.setString(3,cp);
ps.setString(4,em);
ps.setString(5,mn);
ps.setString(6,ad);
ps.setString(7,q);
ps.setString(8,a);
ps.setString(9,f);
ps.setString(10,t);
ps.setString(11,alert);
ps.setInt(12,k);
ps.executeUpdate();
session.setAttribute("msg","Registered Successfully");

response.sendRedirect("register.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}





%>
</body>
</html>
