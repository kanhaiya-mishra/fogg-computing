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
      <td width="82" valign="top"><a href="adminpanel.jsp">Home</a></td>
      <td width="973" align="left"><p>&nbsp;</p>
        <table width="720" height="311" align="center" bgcolor="#FFFFFF" >
        <tr>
          <td height="40" align="center" class="image"><u><font color="#FF0404" size="3"><em><font color="#6A006A"><strong>fileupload 
            details</strong></font></em></font></u></td>
        </tr>
        <tr>
          <td height="263"><table width="704" >
            <tr bgcolor="#333333" >
              <td width="166" height="21" align="center"><font color="#FFFFFF" size="2">Username</font></td>
              <td width="182" height="21" align="center"><font color="#FFFFFF" size="2">Filename</font></td>
              <td width="123" align="center"><font color="#FFFFFF" size="2">Fid</font></td>
              <td width="89" align="center" ><font color="#FFFFFF" size="2">Size</font></td>
              <td width="101" align="center" ><font color="#FFFFFF" size="2">Date</font></td>
              </tr>
            <%
String uname=null;
String fname=null;
String fid=null;
String size=null;
String date=null;


try
{


PreparedStatement ps=con.prepareStatement("select uname,fname,fid,size,date from fileupload" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{
uname=rs.getString(1);
fname=rs.getString(2);
fid=rs.getString(3);
size=rs.getString(4);
date=rs.getString(5);

%>
            <tr bgcolor="#FFFFFF">
              <td height="20" align="center"><strong><em><font color="#002851"> <%=uname%></font></em></strong></td>
              <td align="center"><strong><em><font color="#002851"><%=fname%></font></em></strong></td>
              <td align="center"><strong><em><font color="#002851"><%=fid%></font></em></strong></td>
              <td align="center"><strong><em><font color="#002851"><%=size%></font></em></strong></td>
              <td align="center"><strong><em><font color="#002851"><%=date%></font></em></strong></td>
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
