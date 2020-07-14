
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ include file="conn.jsp"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%

	String fname = (String)session.getAttribute("fname");
	out.print(fname);
	
         try{
		 
			byte[] ba= (byte[])session.getAttribute("resumeBlob");
			
		if(ba != null)
		{
	
			String filename=fname+".txt";
			//filename+=".docx";
		//	byte[] ba1 = ba.getBytes(1, (int)ba.length());
			response.setContentType("application/msword");
			response.setHeader("Content-disposition","attachment; filename=\""+filename+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba= null;
		
			session.removeAttribute("budget");
				
			}
	
			}
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		

		
%>

</body>
</html>