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
                    <h2 class="title"><font color="purple"><b>Upload Museum Catalogue</b></font>
                    
                        &nbsp;  &nbsp;<a href="viewMuseumGallery.jsp"><button class="btn btn--radius-2 btn--blue" type="button">View Museum Gallery</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Loginpage.jsp"><button class="btn btn--radius-2 btn--blue" type="button">Logout</button></a>
                       
                    </h2>
                    
                            
                    <form method="POST" action="insertGallery.jsp">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="red"><b>Title*</b></font></label>
                                    <input class="input--style-4" type="text" name="t1">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="red"><b>Owner Name*</b></font></label>
                                    <input class="input--style-4" type="text" name="t2">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="red"><b>Email*</b></font></label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4"  type="email" name="t3">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="red"><b>Visiting Hours*</b></font></label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">10:00 AM To 01:00 PM
                                            <input type="radio" checked="checked" name="t4" value="10:00 AM To 01:00 PM">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container m-r-45">01:30 PM To 04:00 PM
                                            <input type="radio" checked="checked" name="t4" value="01:30 PM To 04:00 PM">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">04:00 PM To 09:00 PM
                                            <input type="radio" name="t4" value="04:00 PM To 09:00 PM">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="red"><b>Dimensions (L X W)*</b></font></label>
                                    <input class="input--style-4" type="text" name="t5">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="red"><b>Location*</b></font></label>
                                    <input class="input--style-4" type="text" name="t6">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="red"><b>Date of Item Inauguration*</b></font></label>
                                    <input class="input--style-4" type="date" name="t7">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label"><font color="red"><b>Upload Image*</b></font></label>
                                    <input class="input--style-4" type="file" name="t8">
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label"><font color="red"><b>Museum Category*</b></font></label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="t9">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option value="Art">Art</option>
                                    <option value="The National WWII">The National WWII</option>
                                    <option value="Animals">Animals</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label"><font color="red"><b>Art Specifications*</b></font></label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <textarea class="input--style-4" type="file" name="t10" rows="3" cols="60"></textarea>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                        </div>
                    </form>
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