<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>

<%@page import="java.io.*"%>
<body>
<%

String in1=request.getParameter("textarea1");

String query="insert into commentt values('"+in1+"')";
int in=st.executeUpdate(query);



response.sendRedirect("comment.jsp");




		



%>

</body>
</html>