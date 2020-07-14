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
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.a2 {background-color:white;
border-color:red;
border-size:1 px;
}
.button2 {
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
</head>
<body>
<form id="form1" method="post" action="pass_check.jsp">
  <p>&nbsp;</p>
  <table width="80%" border="1" align="center" cellpadding="3" cellspacing="3"  rules="none">
    <tr>
      <td height="80" colspan="2" align="center" bgcolor="#5493C8"><h2>Fog Computing : Mitigating Insider Data Theft Attacks in the Cloud</h2></td>
    </tr>
    <tr>
      <td colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
    <tr>
      <td width="99" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
        <li><a href="index.html">Home</a>          </li>
        <li><a href="user_upload.jsp">Upload</a></li>
        <li><a href="view_file.jsp">Myfiles</a>          </li>
        <li><a href="password_change.jsp">Change Password</a></li>
        <li><a href="user_alert.jsp">View alert</a></li>
        <li><a href="user_login.jsp">Signout</a></li>
      </ul></td>
      <td width="643" align="left" valign="top"><p>&nbsp;</p>
        <table width="543" align="center" >
        <tr>          </tr>
        <tr>          </tr>
        </table>
        <table width="720" height="315" bgcolor="#FFFFFF" >
          <tr>
            <td width="191" height="309"><img src="images/passas.jpg" width="191" height="177"/></td>
            <td width="494"><table width="460" >
              <tr>
                <td height="52" colspan="2" align="center"><font color="#663333" size="+1"><strong><em><font color="#663366">Password 
                  Change</font></em></strong></font></td>
              </tr>
              <tr>
                <td height="39"><font color="#FFFFFF"><font color="#663333"><em><strong>Old 
                  password:</strong></em></font></font></td>
                <td><span id="sprytextfield2">
                  <input name="op" type="text" id="op" size="44" />
                  <span class="textfieldRequiredMsg">A value is required.</span></span></td>
              </tr>
              <tr>
                <td height="57"><em><font color="#663333"><strong> New 
                  password:</strong></font></em></td>
                <td><span id="sprytextfield3">
                  <input name="np" type="text" id="np" size="44" />
                  <span class="textfieldRequiredMsg">A value is required.</span></span></td>
              </tr>
              <tr>
                <td height="45" colspan="2" align="center"><input type="submit" name="submit1" class="button2"
		 value="Login" /></td>
              </tr>
            </table></td>
          </tr>
        </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
<div id="content"></div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
</script>
</body>
</html>
