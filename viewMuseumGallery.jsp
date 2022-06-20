<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%> 
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.sql.Connection"%> 
<!DOCTYPE html>
<html lang="en">
      <link href="css/tabzoom.css" rel="stylesheet" type="text/css">

   <style>
 .CSSTableGenerator {
	
	
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
	
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
	
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
	
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}.CSSTableGenerator table{
  
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
}.CSSTableGenerator tr:hover td{
	background-color:#ffffaa;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
	background:-o-linear-gradient(bottom, #f5da39 5%, #ffffaa 100%);	
        background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #f5da39), color-stop(1, #ffffaa) ); 
	background:-moz-linear-gradient( center top, #f5da39 5%, #ffffaa 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#f5da39", endColorstr="#ffffaa");	
        background: -o-linear-gradient(top,#f5da39,ffffaa);
	background-color:#f5da39;
	border:1px solid #ffffff;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:15px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #e95fa1 5%, #d13c56 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #e95fa1), color-stop(1, #d13c56) );
	background:-moz-linear-gradient( center top, #e95fa1 5%, #d13c56 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#e95fa1", endColorstr="#d13c56");	background: -o-linear-gradient(top,#e95fa1,d13c56);

	background-color:#e95fa1;
	border:0px solid #ffffff;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:19px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #e95fa1 5%, #d13c56 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #e95fa1), color-stop(1, #d13c56) );
	background:-moz-linear-gradient( center top, #e95fa1 5%, #d13c56 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#e95fa1", endColorstr="#d13c56");	background: -o-linear-gradient(top,#e95fa1,d13c56);

	background-color:#e95fa1;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
 </style>


<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>The Digital Museum</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main_1.css" rel="stylesheet" media="all">
</head>

<body>
     <%
if(request.getParameter("message")!=null){
    out.println("<script>alert('Deleted Successfully!!')</script>");
}   
if(request.getParameter("fail")!=null){
    out.println("<script>alert('Failure!! Due to InValid Input!!')</script>");
}    
if(request.getParameter("update")!=null){
    out.println("<script>alert('Updated Successfully!!')</script>");
}    

%>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100" >
        <div class="wrapper wrapper--w680" >
            <div class="card card-4">
                <div class="card-body">
                    
                       <div class="CSSTableGenerator"> 
          
		  
		
		  
		  
	<table width="800">
            <tr>
              <td colspan="8" align="center"> <marquee scrollamount="5" width="40">&lt;&lt;&lt;&lt;&lt;	</marquee>
                  &nbsp;
                List of Available Museum Catalogues <marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;&gt;&gt;</marquee></td>
            </tr>
            <tr >
			<td><font color="blue">TITLE</td>
			<td><font color="blue">DIMENSIONS</td>
			
			<td><font color="blue">CATEGORY</td>
                        
			
			<td><font color="BLUE">DATE OF PUBLISH</td>
                         <td><font color="blue">VIEW</td>
			
			<td><font color="blue">UPDATE</td>
                        <td><font color="blue">DELETE</td>
            </tr>
            
              <%
			PreparedStatement ps1 = null;String url="jdbc:mysql://localhost:3306/museum";
							ResultSet rs1 = null;
							String fsize=null;
							String date=null;String dates=null;
							String fname=null;
							String id=null;
							String q="newvideo";
							try
								{       Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		                                                        Connection con1=DriverManager.getConnection(url, "root", "root"); 
									ps1=con1.prepareStatement("select * from catalogues");
									rs1=ps1.executeQuery();
									
									
									while(rs1.next())
									{
									
									fname=rs1.getString(1);
									System.out.println(fname);
									date=rs1.getString("dimenstions");
									System.out.println(date);
                                                                        fsize=rs1.getString("mcategory");
									dates=rs1.getString("publishdate");
									
									%>
            <tr>
              <td><%=fname%></td>
			  <td><%=date%></td>
			  <td><%=fsize%></td>
                            
			  <td><%=dates%></td>
                          
                          <td><a href="viewGallery.jsp?<%=fname%>"><img src="images/306440.png" height="50" width="50"></a></td>
                        
			
                         <td><a href="updateMuseum.jsp?<%=fname%>"><img src="images/242-2424713.png" height="50" width="50"></a></td>
                        <td><a href="deleteMuseum.jsp?<%=fname%>"><img src="images/delete.png" height="50" width="50"></a></td>
                        
                            </tr>
            <%
									}
									
									
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
							%>
            <tr> </tr>
          </table>
                       </div>  
                       
                    </h2>
                    
                      <div class="p-t-15">
                            <a href="adminHome.jsp"><button class="btn btn--radius-2 btn--blue" type="button">Back</button></a>
                        </div>        
                    
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->