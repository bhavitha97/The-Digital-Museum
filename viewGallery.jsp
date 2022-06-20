<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%> 
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.sql.Connection"%> 

<!DOCTYPE html>
<html lang="en">

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
    out.println("<script>alert('The Item is Added into the Museum Catelogue!!')</script>");
}   
if(request.getParameter("fail")!=null){
    out.println("<script>alert('Failure!! Due to InValid Input!!')</script>");
}    

%>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100" >
        <div class="wrapper wrapper--w680" >
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title"><font color="brown"><b>Museum Catalogue Details</b></font>
                      
                    </h2>
                  <%
			PreparedStatement ps1 = null;String url="jdbc:mysql://localhost:3306/museum";
							ResultSet rs1 = null;
							try
								{       Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		                                                        Connection con1=DriverManager.getConnection(url, "root", "root"); 
									ps1=con1.prepareStatement("select * from catalogues where title='"+request.getQueryString()+"'");
									rs1=ps1.executeQuery();
									
									
									while(rs1.next())
									{
									
									
									%>
                  
                        
                    <form method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="blue"><b>Title*</b></font><font color="red"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[<%=rs1.getString("title")%>]</b></font></label>
                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="blue"><b>Owner Name*</b></font><font color="red"><b>&nbsp;&nbsp;&nbsp;[<%=rs1.getString("ownername")%>]</b></font></label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="blue"><b>Email*</b></font><font color="red"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[<%=rs1.getString("emaill")%>]</b></font></label>
                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="blue"><b>Visiting Hours* </b></font><font color="red"><b>[<%=rs1.getString("visitinghrs")%>]</b></font></label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="blue"><b>Dimensions (L X W)*</b></font><font color="red"><b>[<%=rs1.getString("dimenstions")%>]</b></font></label>
                                  </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="blue"><b>Location*</b></font><font color="red"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[<%=rs1.getString("location")%>]</b></font></label>
                                 </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="blue"><b>Date of Publication*</b></font><font color="red"><b>[<%=rs1.getString("publishdate")%>]</b></font></label>
                                    
                                </div>
                            </div>
                                    
                                    <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="blue"><b>Museum Category*</b></font><font color="red"><b>[<%=rs1.getString("mcategory")%>]</b></font></label>
                                    
                                </div>
                            </div>
                            
                                   
                        <div class="input-group">
                            <label class="label"><font color="blue"><b>Art Specifications*</b></font></label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <%=rs1.getString("specifications")%>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                            <div class="col-2">
                                <div class="input-group">
                                   <img src="getImage.jsp?id=<%=rs1.getString("title")%>" width="400px" height="400px"/> 
                                
                                </div>
                            </div>
                        </div>
                        
                        <div class="p-t-15">
                            <a href="viewMuseumGallery.jsp"><button class="btn btn--radius-2 btn--blue" type="button">Back</button></a>
                        </div>
                    </form>
                                                                        <%
									}
									
									
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
							%>
            
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