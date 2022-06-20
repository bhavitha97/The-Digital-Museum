<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%> 
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%> 
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.sql.Connection"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>The Digital Museum</title>
    </head> 
    <body> 
    <% 
	Connection conn=null; 
	PreparedStatement pstmt = null; 
	ResultSet rs=null; 
	String url="jdbc:mysql://localhost:3306/museum"; 
	FileInputStream fis=null; 
	String title=request.getParameter("t1");  
	String owner=request.getParameter("t2");  
	String email=request.getParameter("t3");  
        String Visiting=request.getParameter("t4");  
	String dimenstions=request.getParameter("t5");  
	String location=request.getParameter("t6");  
	String publishdate=request.getParameter("t7");  	
	String myloc=request.getParameter("t8");  
        String category=request.getParameter("t9");  
	String specifications=request.getParameter("t10");  	
        try{ 
		Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		conn=DriverManager.getConnection(url, "root", "root"); 
		File image= new File("C:\\Gallery\\"+myloc); 
		
		pstmt = conn.prepareStatement("insert into catalogues values(?,?,?,?,?,?,?,?,?,?)"); 
		pstmt.setString(1, title); 
		pstmt.setString(2, owner); 
		pstmt.setString(3, email); 
                pstmt.setString(4, Visiting); 
		pstmt.setString(5, dimenstions); 
		pstmt.setString(6, location); 
		pstmt.setString(7, publishdate); 
		fis=new FileInputStream(image); 
		pstmt.setBinaryStream(8, (InputStream) fis, (int) (image.length())); 
                pstmt.setString(9, category); 
		pstmt.setString(10, specifications); 
		int count = pstmt.executeUpdate(); 
		if(count>0) 
		{ 
			response.sendRedirect("adminHome.jsp?message=success");
		} 
		else 
		{ 
			response.sendRedirect("adminHome.jsp?fail=success");
		} 
	} 
	catch(Exception ex) 
	{ 
		ex.printStackTrace(); 
	} 
	finally{ 
		try{ 
			if(rs!=null){ 
				rs.close(); 
				rs= null; 
			} 
			if(pstmt !=null) 
			{ 
				pstmt.close(); 
				pstmt=null; 
			} 
			if(conn!=null) 
			{ 
				conn.close(); 
				conn=null; 
			} 
				
		} 
		catch(Exception e) 
		{ 
			e.printStackTrace(); 
		} 
	} 
				
	%> 
   </body> 
</html>
	