<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="notice_code.jsp">

  <table rules="none" width="100%" border="0" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td align="left" bgcolor="#000000"><img src="images/hd.jpg" alt="" width="832" height="286" /></td>
    </tr>
    <tr>
      <td height="44" bgcolor="#800000">&nbsp;</td>
    </tr>
    <tr>
      <td width="813" valign="top"><p>&nbsp;</p>
        <table rules="none" width="840" border="1" align="center" cellpadding="5" cellspacing="5">
        <tr>
          <td colspan="2"><h1>Notice </h1></td>
        </tr>
        <tr>
          <td width="188">Notice Details</td>
          <td width="611"><textarea name="msg" id="msg" cols="99" rows="15"></textarea></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="Submit" /></td>
        </tr>
      </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="44" bgcolor="#800000">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>