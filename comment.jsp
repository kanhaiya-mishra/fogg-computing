<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.style20 {	font-size: 14px;
	font-weight: bold;
}
.style201 {	font-size: 14px;
	font-weight: bold;
}
.style202 {	font-size: 14px;
	font-weight: bold;
}
#form1 table tr td table tr td h3 {
	color: #F00;
}
#form1 table tr td table tr td {
	color: #000;
}
</style>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-color: #F1F4F9;
}
#form1 table tr td h1 {
	color: #FF9BA7;
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="comment_code.jsp">
  <table  rules="none" width="100%" border="0" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td bgcolor="#000000"><img src="images/hd.jpg" alt="" width="832" height="286" /></td>
    </tr>
    <tr>
      <td height="47" align="right" bgcolor="#FF9BA7">&nbsp;</td>
    </tr>
    <tr>
      <td align="center" valign="top"><h1>Latest Description</h1></td>
    </tr>
    <tr>
      <td width="774" valign="top">
        <table rules="none" width="765" border="1" align="center" cellpadding="3" cellspacing="8">
        
          <%
		  
		
%>
		 <%				
String query="select * from commentt";
ResultSet rs=st.executeQuery(query);
				
while(rs.next())
{
%>
          <tr>
            <td width="343"><p style="font-size:medium; text-align: justify; color: #F00;">Comment :</p>
              <p style="font-size:medium; text-align: justify;"><%=rs.getString(1)%> </p></td>
 
          </tr>
          
         
          
<%
}
			
%>
 <tr>
   <th align="right" nowrap="nowrap">Write Comment</th>
 </tr>
 <tr>
   <td align="left"><span id="sprytextarea1">
     <textarea name="textarea1" id="textarea1" cols="99" rows="15"></textarea>
     <span class="textareaRequiredMsg">A value is required.</span></span></td>
 </tr>
 <tr>
   <td><input type="submit" name="button" id="button" value="Submit" /></td>
 </tr>
        </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="44" bgcolor="#FF9BA7">&nbsp;</td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1");
</script>
</body>
</html>