<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

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
body {
	background-color: #D3E5E9;
}
</style>
</head>
<body>
<form id="form1" method="post" action="file_insert.jsp">

  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="3"  rules="none">
    <tr>
      <td height="80" colspan="2" align="left" bgcolor="#000000"><h2><img src="images/hd.jpg" alt="" width="1300" height="286" /></h2></td>
    </tr>
    <tr>
      <td height="44" colspan="2" valign="top" bgcolor="#7E97C0">&nbsp;</td>
    </tr>
    <tr>
      <td width="128" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
        <li><a href="user_upload.jsp">Home</a>          </li>
        <li><a href="user_upload.jsp">Upload</a></li>
        <li><a href="view_file.jsp">Myfiles</a>          </li>
        <li><a href="user_alert.jsp">View Alert</a></li>
        <li><a href="comment.jsp">Comment Box</a></li>
        <li><a href="feedback.jsp">Feedback</a></li>
        <li><a href="viewnotice.jsp">Notice Board</a></li>
        <li><a href="RequestBlockFile.jsp">Request Block File</a></li>
        <li><a href="index.html">Logout</a></li>
      </ul></td>
      <td width="933" align="left" valign="top"><p>&nbsp;</p>
        <table width="543" align="center" >
        <tr>          </tr>
        <tr>          </tr>
        </table>
        <table width="787" height="315" align="center" bgcolor="#FFFFFF" >
          <tr>
            <td width="297" height="309"><img src="images/clo.jpeg"/></td>
            <td width="478"><table width="489" height="234" >
              <tr>
                <td height="50" colspan="2" align="center"><font color="#CC0033"><strong><font color="#663366"><em><font size="4">Fileupload </font></em></font></strong></font></td>
              </tr>
              <tr>
                <td width="211" height="36"><font color="#FFFFFF"><em><font color="#663333"><strong><font color="#400040">Filename:</font></strong></font></em></font></td>
                <td width="264"><span id="sprytextfield1">
                  <input name="fn" type="text" id="fn" size="44" />
                  <span class="textfieldRequiredMsg">A value is required.</span></span></td>
              </tr>
              <tr>
                <td height="43"><em><font color="#663333"><strong><font color="#400040">File 
                  id:</font></strong></font></em></td>
                <td><input type="text"  class="a1"  name="fid"  value=" <%= (int) (Math.random() * 1000) %>" /></td>
              </tr>
              <tr>
                <td height="46"><em><font color="#663333"><strong><font color="#400040">Choose 
                  file<br />
                  (Note Pad)</font></strong></font></em></td>
                <td><input type="file" name="file1" class="a1" /></td>
              </tr>
              <tr>
                <td height="45" colspan="2" align="center"><input type="submit" name="submit1" class="button1" value="upload"  /></td>
              </tr>
            </table></td>
          </tr>
        </table>
        <p>&nbsp; </p>
<p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="44" colspan="2" valign="top" bgcolor="#7E97C0">&nbsp;</td>
    </tr>
  </table>

</form>
<div id="content"></div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
</script>
</body>
</html>
