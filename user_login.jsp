<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>fog computing</title>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
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
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-color: #D2E5EB;
}
</style>
</head>
<body>
<form id="form1" method="post" action="user_check.jsp">

  <%session.setAttribute("msg",".");%>
  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="3"  rules="none">
    <tr>
      <td height="80" align="left" bgcolor="#000000"><h2><img src="images/hd.jpg" alt="" width="1300" height="286" /></h2></td>
    </tr>
    <tr>
      <td width="643" align="left" valign="top"><p>&nbsp;</p>
        <table width="543" align="center" >
          <tr>
            <td height="52" colspan="3" align="center"><font color="#663333" size="+1"><strong><em>Login</em></strong></font></td>
          </tr>
          <tr>
            <td width="130" rowspan="2"><img src="images/user2.jpg" width="130" height="115"/></td>
            <td width="103" height="64"><font color="#FFFFFF"><em><font color="#663333"><strong>Username</strong></font></em></font></td>
            <td width="294"><span id="sprytextfield1">
              <input name="un" type="text" id="un" size="44" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
          <tr>
            <td height="53"><em><font color="#663333"><strong>Password</strong></font></em></td>
            <td><span id="sprytextfield2">
              <input name="pw" type="password" id="pw" size="44" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
          <tr>
            <td height="45" colspan="3" align="center"><input type="submit" name="submit1" class="button" value="Login" />
            <a href="forgate.jsp">Forgot Password</a></td>
          </tr>
        </table>
        <p>&nbsp; </p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p></td>
    </tr>
    <tr>
      <td valign="top" bgcolor="#2A4161">&nbsp;</td>
    </tr>
  </table>
 
</form>
<div id="content"></div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
</script>
</body>
</html>
