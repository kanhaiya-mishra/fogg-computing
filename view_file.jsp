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
  <p>&nbsp;</p>
  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="3"  rules="none">
    <tr>
      <td height="80" colspan="2" align="left" bgcolor="#000000"><h2><img src="images/hd.jpg" alt="" width="832" height="286" /></h2></td>
    </tr>
    <tr>
      <td height="44" colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
    <tr>
      <td width="99" valign="top" bgcolor="#EEEEEE"><a href="user_upload.jsp">Home</a></td>
      <td width="643" align="left" valign="top"><p>&nbsp;</p>
        <table width="543" align="center" >
        <tr>          </tr>
        <tr>          </tr>
        </table>
      
        <table width="720" height="304" align="center" bgcolor="#FFFFFF" >
          <tr>
            <td height="33" colspan="2" align="center" class="image"><u><font color="#6A006A" size="3"><em><font color="#003E00" size="4" face="Courier New, Courier, mono"><strong>view 
              files </strong></font></em></font></u></td>
          </tr>
          <%
	  String f=null;
String t=null;


String name1=(String)session.getAttribute("un");
try
{


PreparedStatement ps1=con.prepareStatement("select * from signup where name='"+name1+"'" );
ResultSet rs1=ps1.executeQuery();
while (rs1.next())
{

f=rs1.getString(9);
t=rs1.getString(10);

}
}
catch(Exception e)
{
out.println(e.getMessage());
}

	
	  
	  %>
          <tr>
            <td align="center" colspan="2"><font color="#008200"><strong><font color="#6A006A" size="4"><em><font size="3">your 
              login access time </font></em></font></strong></font> <font color="#6A006A" size="3"><em><strong> <%=f%> to <%=t%></strong></em></font><font color="#6A006A" size="4"><em><strong> </strong></em></font></td>
          </tr>
          <tr>
            <td height="263">&nbsp;</td>
            <td><table width="528" align="center"  bgcolor="#000000">
              <tr bgcolor="#333333" >
                <td height="21" align="center"><font color="#FFFFFF" size="2">filename</font></td>
                <td align="center"><font color="#FFFFFF" size="2">fid</font></td>
                <td align="center" ><font color="#FFFFFF" size="2">size</font></td>
                <td align="center" ><font color="#FFFFFF" size="2">date</font></td>
                <td align="center" ><font color="#FFFFFF" size="2">download</font></td>
              </tr>
              <%
			

String fname=null;
String fid=null;
String size=null;
String date=null;

String name=(String)session.getAttribute("un");
try
{


PreparedStatement ps=con.prepareStatement("select fname,fid,size,date from fileupload where uname='"+name+"'" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{

fname=rs.getString(1);
fid=rs.getString(2);
size=rs.getString(3);
date=rs.getString(4);

%>
              <tr bgcolor="#FFFFFF">
                <td height="28" align="center"><strong><em><font color="#002851"> <%=fname%></font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"> <%=fid%></font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"> <%=size%></font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"> <%=date%></font></em></strong></td>
                <td align="center"><a href="user_question.jsp?<%=fid%>"><font color="#C60000"><blink>click 
                  here </blink></font></a></td>
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
      <td height="44" colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
<div id="content"></div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
</script>
</body>
</html>
