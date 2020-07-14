<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page language="java" import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" import ="java.security.InvalidAlgorithmParameterException"%>
<%@ page language="java" import ="java.security.InvalidKeyException"%>
<%@ page language="java" import ="java.security.NoSuchAlgorithmException"%>

<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>	
<%@ page language="java" import ="sun.misc.BASE64Decoder"%>	
<%@ page language="java" import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<body>
					 
<%

String a=request.getParameter("t1");

String u=null,u1,ivx="1111111111111111";
byte[] raw = null;			
byte[] userBytes=null;				
try
{
ResultSet rs=st.executeQuery("select * from signup where email='"+a+"'");

int i=0;

	 while(rs.next())
	 { 
		u=rs.getString(2);
		i++;
	}
	
if(i!=0)
{

SecretKeySpec keySpec = new SecretKeySpec(ivx.getBytes(), "AES");
		IvParameterSpec ivSpec = new IvParameterSpec(ivx.getBytes());
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
		
		BASE64Decoder decoder = new BASE64Decoder();
        raw = decoder.decodeBuffer(u);
		userBytes = cipher.doFinal(raw);
	    u1= new String(userBytes, "UTF8");
       
out.print(u1);

session.setAttribute("email",a);
session.setAttribute("codee",u1);

response.sendRedirect("mailspass.jsp");
}
else
{
	session.setAttribute("chh","Invilide Your Email Id");
	response.sendRedirect("forgate.jsp");
}
}
catch(Exception ee)
{
out.print(ee);
}

%>
</body>
</html>
