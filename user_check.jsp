<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>
<%@ page import="java.io.*"  %>
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

<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
session.setAttribute("un",un);
session.setAttribute("pw",pw);
//----------------------------------------------------------------------------------------------------------------
String u1,u=null,ivx="1111111111111111";
byte[] userBytes=null;
byte[] raw = null;
 //----------------------------------------------------------------------------------------------------------------------
try
{
//=====================================================================================================================

//=====================================================================================================================

PreparedStatement ps=con.prepareStatement("select * from  signup    where name='"+un+"'");
ResultSet rs=ps.executeQuery();
String email;

while(rs.next())
{
	u=rs.getString(2);
	email=rs.getString(4);
	session.setAttribute("email",email);
}
//---------------------------------------------------------------------------------------------------
SecretKeySpec keySpec = new SecretKeySpec(ivx.getBytes(), "AES");
		IvParameterSpec ivSpec = new IvParameterSpec(ivx.getBytes());
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
		
		BASE64Decoder decoder = new BASE64Decoder();
        	raw = decoder.decodeBuffer(u);
		userBytes = cipher.doFinal(raw);
	  u1= new String(userBytes, "UTF8");
          
 //-----------------------------------------------------------------------------------------------------

if(u1.equals(pw))
{


response.sendRedirect("user_upload.jsp");
}
else
{
out.println("enter correct user name and password");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
