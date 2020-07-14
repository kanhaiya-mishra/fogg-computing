<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>fog computing</title>
<style type="text/css">
.a {background-color:white;
border-color:red;
border-size:1 px;
}
.button {background:#25A6E1;
	background:-moz-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#25A6E1),color-stop(100%,#188BC0));
	background:-webkit-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-o-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-ms-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:4px10px;
	color:#FFFFFF;
	font-family:'Helvetica Neue',sans-serif;
	font-size:15px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
#form1 table tr td h2 {
	color: #FFF;
}
.a1 {background-color:white;
border-color:red;
border-size:1 px;
}
.button1 {
	background:#25A6E1;
	background:-moz-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#25A6E1),color-stop(100%,#188BC0));
	background:-webkit-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-o-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-ms-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:4px10px;
	color:#F00;
	font-family:'Helvetica Neue',sans-serif;
	font-size:15px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
</style>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" method="post" action="file_insert.jsp">

  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="3"  rules="none">
    <tr>
      <td height="80" colspan="2" bgcolor="#000000"><img src="images/hd.jpg" alt="" width="832" height="286" /></td>
    </tr>
    <tr>
      <td height="33" colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
    <tr>
      <td width="99" valign="top">&nbsp;</td>
      <td width="643" align="center" valign="top"><p>&nbsp;</p>
        <table width="543" align="center" >
        <tr>          </tr>
        <tr>          </tr>
        </table>
        <table width="720" height="304" bgcolor="#FFFFFF" >
          <tr>
            <td height="33" colspan="2" align="center" class="image"><u><font color="#6A006A" size="3"><em><font color="#003E00" size="4" face="Courier New, Courier, mono"><strong>Data 
              Misuse</strong></font></em></font></u></td>
          </tr>
          <tr>
            <td height="263"><img src="images/xaX.jpg" width="129" height="108"/></td>
            <td><table width="505"  bgcolor="#000000">
              <tr bgcolor="#009966" >
                <td height="21" align="center"><font color="#FFFFFF" size="2">filename</font></td>
                <td align="center"><font color="#FFFFFF" size="2">Real User</font></td>
                <td align="center" ><font color="#FFFFFF" size="2">Attacker</font></td>
              </tr>
              <%

String fname=null;
String fid=null;
String size=null;

String name=(String)session.getAttribute("un");

try
{


PreparedStatement ps=con.prepareStatement("select fname,au,uau  from fileupload where uname='"+name+"'" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{

fname=rs.getString(1);
fid=rs.getString(2);
size=rs.getString(3);


%>
              <tr bgcolor="#FFFFFF">
                <td height="20" align="center" ><strong><em><font color="#002851"> <%=fname%></font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"> <%=fid%></font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"> <%=size%></font></em></strong></td>
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
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="33" colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
  </table>

</form>
<div id="content"></div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
</script>
</body>
</html>
