<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>fog computing</title>
<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>

<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
</head>
<script>
var image_tracker='i';
function first()
{
var image=document.getElementById('id1');
if(image_tracker=='i')
{
image.src="FirstImage/1.JPG";
image_tracker='a';	
}
else if(image_tracker=='a')
{
image.src="FirstImage/2.jpg";
image_tracker='d';
}
else if(image_tracker=='d')
{
image.src="FirstImage/3.jpg";
image_tracker='d1';
}
else if(image_tracker=='d1')
{
image.src="FirstImage/4.jpg";
image_tracker='d2';
}
else if(image_tracker=='d2')
{
image.src="FirstImage/5.jpg";
image_tracker='d3';
}
else if(image_tracker=='d3')
{
image.src="FirstImage/6.JPG";
image_tracker='d4';
}
else if(image_tracker=='d4')
{
image.src="FirstImage/7.JPG";
image_tracker='d5';
}

}
setInterval('first()',1000);
</script>

<body>
<form id="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="3"  rules="none">
    <tr>
      <td height="80" colspan="2" bgcolor="#000000"><h2><img src="images/hd.jpg" alt="" width="1300" height="286" /></h2></td>
    </tr>
    <tr>
      <td height="33" colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
    <tr>
      <td width="128" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
        <li><a href="userdetailsall.jsp">User detail</a>          </li>
        <li><a href="user_updetail.jsp">Upload detail</a></li>
        <li><a href="comment.jsp">Comment Box</a></li>
        <li><a href="removeinput.jsp">Remove User</a></li>
        <li><a href="notice.jsp">Add Notice</a></li>
        <li><a href="viewnotice.jsp">View Notice</a></li>
        <li><a href="hackerdetails.jsp">Hacker Details</a></li>
        <li><a href="RemoveRequestFile.jsp">Remove Request File</a></li>
        <li><a href="user_login.jsp">Logout</a>          </li>
</ul></td>
      <td width="933" align="center" bgcolor="#D4E5EC"><p><img src="FirstImage/1.JPG" width="1000" height="400" border="0" id="id1" onclick="first()" /></p>
        <p>&nbsp;</p>
<p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="33" colspan="2" valign="top" bgcolor="#AA0000">&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
<div id="content"></div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
