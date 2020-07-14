<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>fog computing</title>
<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>
</head>
<body>
<form id="form1" method="post" action="">

  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="3"  rules="none">
    <tr>
      <td height="80" colspan="2" bgcolor="#000000"><h2><img src="images/hd.jpg" alt="" width="832" height="286" /></h2></td>
    </tr>
    <tr>
      <td height="33" colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
    <tr>
      <td width="130" valign="top"><a href="adminpanel.jsp">Home</a></td>
      <td width="791" align="left"><p>&nbsp;</p>
        <table width="782" height="311" border="1" align="center" bgcolor="#FFFFFF" rules="none" >
        <tr>
          <td height="40" align="center" class="image"><u><font color="#FF0404" size="3"><em><font color="#6A006A"><strong>USER 
            DETAILS</strong></font></em></font></u></td>
        </tr>
        <tr>
          <td height="263"><table width="712" align="center" cellpadding="4" cellspacing="4" >
            <tr bgcolor="#333333" >
              <td height="30" align="center"><font color="#FFFFFF" size="2">Name</font></td>
              <td align="center"><font color="#FFFFFF" size="2">Email</font></td>
              <td align="center" ><font color="#FFFFFF" size="2">Mobile</font></td>
              <td align="center" ><font color="#FFFFFF" size="2">Address</font></td>
              <td align="center" ><font color="#FFFFFF" size="2">Start time</font></td>
              <td align="center" ><font color="#FFFFFF" size="2">End Time</font></td>
              </tr>
            <%
String name=null;
String email=null;
String mobile=null;
String address=null;
String st1=null;
String et=null;


try
{


PreparedStatement ps=con.prepareStatement("select name,email,mobile,address,from1,to1 from signup" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{
name=rs.getString(1);
email=rs.getString(2);
mobile=rs.getString(3);
address=rs.getString(4);
st1=rs.getString(5);
et=rs.getString(6);


%>
            <tr bgcolor="#FFFFFF">
              <td height="31" align="center"><strong><em><font color="#008400"> <%=name%></font></em></strong></td>
              <td align="center"><strong><em><font color="#008400"><%=email%></font></em></strong></td>
              <td align="center"><strong><em><font color="#008400"><%=mobile%></font></em></strong></td>
              <td align="center"><strong><em><font color="#008400"><%=address%></font></em></strong></td>
              <td align="center"><strong><em><font color="#008400"><%=st1%></font></em></strong></td>
              <td align="center"><strong><em><font color="#008400"><%=et%></font></em></strong></td>
              </tr>
            <%


}


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
          </table></td>
        </tr>
      </table>
        <p>&nbsp;</p>
<p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="33" colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
  </table>

</form>
<div id="content"></div>
</body>
</html>
