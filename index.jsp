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
		<!-- Required meta tags --> 
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>The Digital Museum</title>
		<link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
		<link rel="stylesheet" href="vendors/owl.carousel/css/owl.carousel.css">
		<link rel="stylesheet" href="vendors/owl.carousel/css/owl.theme.default.min.css">
		<link rel="stylesheet" href="vendors/aos/css/aos.css">
		<link rel="stylesheet" href="vendors/jquery-flipster/css/jquery.flipster.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="shortcut icon" href="images/favicon.png" />
	</head>
	<body data-spy="scroll" data-target=".navbar" data-offset="50">
		<div id="mobile-menu-overlay"></div>
		<nav class="navbar navbar-expand-lg fixed-top">
			<div class="container">
				<a class="navbar-brand" href="#"><img src="images/404938858468681.png" alt="Marshmallow"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"><i class="mdi mdi-menu"> </i></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
					<div class="d-lg-none d-flex justify-content-between px-4 py-3 align-items-center">
						<img src="images/logo-dark.svg" class="logo-mobile-menu" alt="logo">
						<a href="javascript:;" class="close-menu"><i class="mdi mdi-close"></i></a>
					</div>
					<ul class="navbar-nav ml-auto align-items-center">
						<li class="nav-item active">
							<a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#services">Services</a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link" href="#projects">Gallery</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#plans">Museum</a>
						</li>
						
                                                <li class="nav-item">
							<a class="nav-link" href="Loginpage.jsp">Administrator</a>
						</li>
						
					</ul>
				</div>
			</div>
		</nav>
		<div class="page-body-wrapper">
			<section id="home" class="home">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="main-banner">
								<div class="d-sm-flex justify-content-between">
									<div data-aos="zoom-in-up">
										<div class="banner-title">
												<h3 class="font-weight-medium">"Real Museums are places where Time is transformed into Space."
												</h3>
										</div>
										<p class="mt-3">?The best introduction to art is to stroll through a museum. The more art you see, the more you'll learn to define your own taste.? ?A museum is a place where one should lose one's head.?  

											<br>
                                                                                        <b>"Wormholes to Other Worlds?</b>
										</p>
										<a href="#" class="btn btn-secondary mt-3">Learn more</a>
									</div>
									<div class="mt-5 mt-lg-0">
										<img src="images/102-1020333.png" alt="marsmello" class="img-fluid" data-aos="zoom-in-up">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="our-services" id="services">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<h5 class="text-dark">We?re offering</h5>
							<h3 class="font-weight-medium text-dark mb-5">Creative Digital Museums</h3>
						</div>
					</div>
					<div class="row" data-aos="fade-up">
						<div class="col-sm-4 text-center text-lg-left">
							<div class="services-box" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="1500">
								<img src="images/integrated-marketing.svg" alt="integrated-marketing" data-aos="zoom-in">
								<h6 class="text-dark mb-3 mt-4 font-weight-medium">Archaeology museums
								
								</h6>
								<p>They display archeological artifacts. They can be open-air museums or they can exhibit items in a building 
								</p>
							</div>
						</div>
						<div class="col-sm-4 text-center text-lg-left">
							<div class="services-box"   data-aos="fade-down" data-aos-easing="linear" data-aos-duration="1500">
								<img src="images/design-development.svg" alt="design-development" data-aos="zoom-in">
								<h6 class="text-dark mb-3 mt-4 font-weight-medium">Encyclopedic Museums
									
								</h6>
								<p>They are usually large institutions and they offer visitors a wide variety of information on many themes, both local and global 
								</p>
							</div>
						</div>
						<div class="col-sm-4 text-center text-lg-left">
							<div class="services-box" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="1500">
								<img src="images/digital-strategy.svg" alt="digital-strategy" data-aos="zoom-in">
								<h6 class="text-dark mb-3 mt-4 font-weight-medium">Military and War Museums
								
								</h6>
								<p>Museums specialized in military histories 
								</p>
							</div>
						</div>
					</div>
					<div class="row" data-aos="fade-up">
						<div class="col-sm-4 text-center text-lg-left">
							<div class="services-box  pb-lg-0" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="1500">
								<img src="images/digital-marketing.svg" alt="digital-marketing" data-aos="zoom-in">
								<h6 class="text-dark mb-3 mt-4 font-weight-medium">Natural history museums
								
								</h6>
								<p>Usually display objects from nature like stuffed animals or pressed plants. 
								</p>
							</div>
						</div>
						<div class="col-sm-4 text-center text-lg-left">
							<div class="services-box pb-lg-0" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="1500">
								<img src="images/growth-strategy.svg" alt="growth-strategy" data-aos="zoom-in">
								<h6 class="text-dark mb-3 mt-4 font-weight-medium">Encyclopedic Museums
								
								</h6>
								<p>They are usually large institutions and they offer visitors a wide variety of information on many themes, both local and global. 
								</p>
							</div>
						</div>
						<div class="col-sm-4 text-center text-lg-left">
							<div class="services-box pb-0" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="1500">
								<img src="images/saving-strategy.svg" alt="saving-strategy" data-aos="zoom-in">
								<h6 class="text-dark mb-3 mt-4 font-weight-medium">Maritime Museums
								
								</h6>
								<p>Specialized museums for displaying maritime history, culture or archaeology.</p>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="our-process" id="about">
				<div class="container">
					<div class="row">
						<div class="col-sm-6" data-aos="fade-up">
							
                                                        <h3 class="font-weight-medium text-dark">The National WWII Museum</h3>
							<h5 class="text-dark mb-3">The National WWII Museum tells the story of the American experience in the war that changed the world</h5>
					
							
                                                        
                                                         <marquee  behavior="scroll" direction="left" width="100%">
							<div class="d-flex justify-content-start mb-3" style="width:300px;">
                                                            <img src="images/worldwar2/worldwar1.jpg" alt="tick" height="150" width="200">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;<img src="images/worldwar2/worldwar2.jpg" alt="tick" height="150" width="200">
                                                                <%
                                                                
                                                                try
								{       Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		                                                        Connection con11=DriverManager.getConnection("jdbc:mysql://localhost:3306/museum", "root", "root"); 
									PreparedStatement ps11=con11.prepareStatement("select * from catalogues where mcategory='The National WWII'");
									ResultSet rs11=ps11.executeQuery();				
									while(rs11.next())
									{ String message=rs11.getString(1)+"\n"+rs11.getString(2)+"\n"+rs11.getString(3)+"\n"+rs11.getString(4)+"\n"+rs11.getString(5)+"\n"+rs11.getString(6)+"\n"+rs11.getString(7)+"\n"+rs11.getString(9)+"\n"+rs11.getString(10);
                                                                       
									%>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;<img src="getImage.jsp?id=<%=rs11.getString("title")%>" height="150" width="200" title="<%=message%>">
                                                                
                                                                
                                                                
                                                                <%
							
                                                                
                                                                        }}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
                                                                
                                                                
                                                                %>
							</div></marquee><marquee  behavior="scroll" direction="right">
                                                        <div class="d-flex justify-content-start mb-3">
								<img src="images/worldwar2/worldwar1.jpg" alt="tick" height="150" width="200">
								&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/worldwar2/worldwar10.jpg" alt="tick" height="150" width="200">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;<img src="images/worldwar2/worldwar6.jpg" alt="tick" height="150" width="200">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;<img src="images/worldwar2/worldwar4.jpg" alt="tick" height="150" width="200">
                                                                
                                                        </div></marquee>
							
						</div>
						<div class="col-sm-6 text-right" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
							<img src="images/idea.png" alt="idea" class="img-fluid">
						</div>
					</div>
				</div>
			</section>
			<section class="our-projects" id="projects">
				<div class="container">
					<div class="row mb-5">
						<div class="col-sm-12">
							<div class="d-sm-flex justify-content-between align-items-center mb-2">
								<h3 class="font-weight-medium text-dark ">Let's See Our Museum Brochure</h3>
								<div><a href="#" class="btn btn-outline-primary">View more</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="mb-5" data-aos="fade-up">
					<div class="owl-carousel-projects owl-carousel owl-theme">
						<div class="item">
							<img src="images/carousel/121314_AK_DSC_0807sized.jpg" alt="slider">
						</div>
						<div class="item">
							<img src="images/carousel/art-exhibition-aug022019-min.jpg" alt="slider">
						</div>
						<div class="item">
							<img src="images/carousel/danaschutz201707265692.jpg" alt="slider">
						</div>
						  <%
			PreparedStatement ps1 = null;String url="jdbc:mysql://localhost:3306/museum";
							ResultSet rs1 = null;
							try
								{       Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		                                                        Connection con1=DriverManager.getConnection(url, "root", "root"); 
									ps1=con1.prepareStatement("select * from catalogues");
									rs1=ps1.executeQuery();
									
									
									while(rs1.next())
									{ String message=rs1.getString(1)+"\n"+rs1.getString(2)+"\n"+rs1.getString(3)+"\n"+rs1.getString(4)+"\n"+rs1.getString(5)+"\n"+rs1.getString(6)+"\n"+rs1.getString(7)+"\n"+rs1.getString(9)+"\n"+rs1.getString(10);
                                                                       %>
                                                
                                            
                                                <div class="item">
							<img src="getImage.jsp?id=<%=rs1.getString("title")%>" alt="slider" title="<%=message%>">
						</div>
                                            
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
				
			</section>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <section class="our-projects" id="projectsX">
				<div class="container">
					<div class="row mb-5">
						<div class="col-sm-12">
							<div class="d-sm-flex justify-content-between align-items-center mb-2">
                                                            <h3 class="font-weight-medium text-dark ">Animals Museum</h3><h5> <br><br>They educate about natural history, dinosaurs, zoology, oceanography, anthropology, evolution, environmental issues, and more</h3>
                                                               
								<div><a href="#" class="btn btn-outline-primary">View more</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="mb-5" data-aos="fade-up">
					<div class="owl-carousel-projects owl-carousel owl-theme">
						<div class="item">
							<img src="images/animals/1600px-Animal_skeletons_at_Finnish.jpg" alt="slider">
						</div>
						
                                            
                                            <%
                                                                        
                                                                       
							try
								{     
                                                                    
                                                                     Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		                                                     Connection con1X=DriverManager.getConnection(url, "root", "root"); 
									
                                                                    PreparedStatement ps2X=con1X.prepareStatement("select * from catalogues where mcategory='Animals'");
									ResultSet rs2X=ps2X.executeQuery();
									
									
									while(rs2X.next())
									{
			                                                   String message=rs2X.getString(1)+"\n"+rs2X.getString(2)+"\n"+rs2X.getString(3)+"\n"+rs2X.getString(4)+"\n"+rs2X.getString(5)+"\n"+rs2X.getString(6)+"\n"+rs2X.getString(7)+"\n"+rs2X.getString(9)+"\n"+rs2X.getString(10);
                                                                        %>
                                                                        
                                                                        <div class="item">
							<img src="getImage.jsp?id=<%=rs2X.getString("title")%>" alt="slider" title="<%=message%>">
						</div>
						
                                                                        
                                                                        
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
				
			</section>
			
			<section class="testimonial" id="testimonial">
				<div class="container">
					<div class="row  mt-md-0 mt-lg-4">
						<div class="col-sm-6 text-white" data-aos="fade-up">
							<p class="font-weight-bold mb-3">Art Museums</p>
							<h3 class="font-weight-medium">paintings, sculpture, photography, illustrations,<br> drawings, ceramics or metalwork.</h3>
							<ul class="flipster-custom-nav">
								<li class="flipster-custom-nav-item">
									<a href="javascript:;" class="flipster-custom-nav-link" title="0"></a>
								</li>
								<li class="flipster-custom-nav-item">
									<a href="javascript:;" class="flipster-custom-nav-link"  title="1"></a>
								</li>
								<li class="flipster-custom-nav-item">
									<a href="javascript:;" class="flipster-custom-nav-link active" title="2"></a>
								</li>
								<li class="flipster-custom-nav-item">
									<a href="javascript:;" class="flipster-custom-nav-link"  title="3"></a>
								</li>
							</ul>
						</div>
						<div class="col-sm-6" data-aos="fade-up">
							<div id="testimonial-flipster">
								<ul>
									<li>
										<div >
											<img src="images/ArtGallery/Andy-Warhol-The-Nun.jpg" height="200" width="300">
										</div>
									</li>
									
                                                                        <%
                                                                        
                                                                       
							try
								{     
                                                                    
                                                                     Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		                                                        Connection con1=DriverManager.getConnection(url, "root", "root"); 
									
                                                                    PreparedStatement ps2=con1.prepareStatement("select * from catalogues where mcategory='Art'");
									ResultSet rs2=ps2.executeQuery();
									
									
									while(rs2.next())
									{
			                                                   String message=rs2.getString(1)+"\n"+rs2.getString(2)+"\n"+rs2.getString(3)+"\n"+rs2.getString(4)+"\n"+rs2.getString(5)+"\n"+rs2.getString(6)+"\n"+rs2.getString(7)+"\n"+rs2.getString(9)+"\n"+rs2.getString(10);
                                                                        %>
                                                                        
                                                                        <li>
										<div >
											<img src="getImage.jsp?id=<%=rs2.getString("title")%>" height="200" width="300" title="<%=message%>">
										</div>
									</li>
									
                                                                        
                                                                        <%
                                                                        
                                                                        
                                                                        }
                                                                        
                                                                      }
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}  
                                                                        
                                                                        %>
                                                                        
                                                                        
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="clients pt-5 mt-5"  data-aos="fade-up" data-aos-offset="-400">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="d-sm-flex justify-content-between align-items-center">
								<img src="images/deloit.svg" alt="deloit" class="p-2 p-lg-0" data-aos="fade-down"  data-aos-offset="-400">
								<img src="images/erricson.svg" alt="erricson" class="p-2 p-lg-0" data-aos="fade-up"  data-aos-offset="-400">
								<img src="images/netflix.svg" alt="netflix" class="p-2 p-lg-0" data-aos="fade-down"  data-aos-offset="-400">
								<img src="images/instagram.svg" alt="instagram" class="p-2 p-lg-0" data-aos="fade-up"  data-aos-offset="-400">
								<img src="images/coinbase.svg" alt="coinbase" class="p-2 p-lg-0" data-aos="fade-down"  data-aos-offset="-400">
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="pricing-list" id="plans">
				<div class="container">
					<div class="row" data-aos="fade-up" data-aos-offset="-400">
						<div class="col-sm-12">
							<div class="d-sm-flex justify-content-between align-items-center mb-2">
								<div>
									<h3 class="font-weight-medium text-dark ">Category:Museums</h3>
									<h5 class="text-dark ">?Real museums are places where Time is transformed into Space.?</h5>
								</div>
								
						         </div>
					        </div>
                                            
                                        </div>
					<div class="row"  data-aos="fade-up" data-aos-offset="-300">
						<div class="col-sm-4">
							<div class="pricing-box">
								<img src="images/starter.svg" alt="starter">
								
								<h1 class="text-amount mb-4 mt-2">Art Museums</h1>
								<ul class="pricing-list">
									<li>Paintings, Sculpture, Drawings</li>
									<li>Photography, Illustrations</li>
									<li>ceramics or metalwork</li>
									
								</ul>
								<a href="#testimonial" class="btn btn-outline-primary">View Gallery</a>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="pricing-box selected">
								<img src="images/proffessional.svg" alt="starter">
								
								<h1 class="text-amount mb-4 mt-2">The National WWII</h1>
								<ul class="pricing-list">
									<li>D-Day Museum</li>
									<li>The National WWII Museum tells the story of the American Experience in the war that changed the world </li>
									</ul>
								<a href="#about" class="btn btn-primary">View Gallery</a>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="pricing-box">
								<img src="images/premium.svg" alt="starter">
								
								<h1 class="text-amount mb-4 mt-2">Animals</h1>
								<ul class="pricing-list">
									<li>Discover the many wild and wonderful depictions </li>
									<li>of animals found in </li>
									<li>the Museum's collection</li>
									
								</ul>
								<a href="#projectsX" class="btn btn-outline-primary">View Gallery</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="contactus" id="contact">
				<div class="container">
					<div class="row mb-5 pb-5">
						<div class="col-sm-5" data-aos="fade-up" data-aos-offset="-500">
							<img src="images/contact.jpg" alt="contact" class="img-fluid">
						</div>
						<div class="col-sm-7" data-aos="fade-up" data-aos-offset="-500">
							<h3 class="font-weight-medium text-dark mt-5 mt-lg-0">Got A Problem</h3>
							<h5 class="text-dark mb-5">Lorem ipsum dolor sit amet, consectetur pretium</h5>
							<form>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<input type="text" class="form-control" id="name" placeholder="Name*">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<input type="email" class="form-control" id="mail" placeholder="Email*">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<textarea name="message" id="message" class="form-control" placeholder="Message*" rows="5"></textarea>
										</div>
									</div>
									<div class="col-sm-12">
										<a href="#" class="btn btn-secondary">SEND</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</div>
		<footer class="footer">
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<address>
								<p>143 castle road 517</p>
								<p class="mb-4">district, kiyev port south Canada</p>
								<div class="d-flex align-items-center">
									<p class="mr-4 mb-0">+3 123 456 789</p>
									<a href="mailto:info@yourmail.com" class="footer-link">info@yourmail.com</a>
								</div>
								<div class="d-flex align-items-center">
									<p class="mr-4 mb-0">+1 222 345 342</p>
									<a href="mailto:Marshmallow@yourmail.com" class="footer-link">Marshmallow@yourmail.com</a>
								</div>
							</address>
							<div class="social-icons">
								<h6 class="footer-title font-weight-bold">
									Social Share
								</h6>
								<div class="d-flex">
									<a href="#"><i class="mdi mdi-github-circle"></i></a>
									<a href="#"><i class="mdi mdi-facebook-box"></i></a>
									<a href="#"><i class="mdi mdi-twitter"></i></a>
									<a href="#"><i class="mdi mdi-dribbble"></i></a>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row">
								<div class="col-sm-4">
									<h6 class="footer-title">Social Share</h6>
									<ul class="list-footer">
										<li><a href="#" class="footer-link">Home</a></li>
										<li><a href="#" class="footer-link">About</a></li>
										<li><a href="#" class="footer-link">Services</a></li>
										<li><a href="#" class="footer-link">Portfolio</a></li>
										<li><a href="#" class="footer-link">Contact</a></li>
									</ul>
								</div>
								<div class="col-sm-4">
									<h6 class="footer-title">Product</h6>
									<ul class="list-footer">
										<li><a href="#" class="footer-link">Digital Marketing</a></li>
										<li><a href="#" class="footer-link">Web Development</a></li>
										<li><a href="#" class="footer-link">App Development</a></li>
										<li><a href="#" class="footer-link">Design</a></li>
									</ul>
								</div>
								<div class="col-sm-4">
									<h6 class="footer-title">Company</h6>
									<ul class="list-footer">
										<li><a href="#" class="footer-link">Partners</a></li>
										<li><a href="#" class="footer-link">Investors</a></li>
										<li><a href="#" class="footer-link">Partners</a></li>
										<li><a href="#" class="footer-link">FAQ</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<div class="d-flex justify-content-between align-items-center">
						<div class="d-flex align-items-center">
							<img src="images/logo.svg" alt="logo" class="mr-3">
							<p class="mb-0 text-small pt-1">© 2019-2020 <a href="https://www.bootstrapdash.com" class="text-white" target="_blank">BootstrapDash</a>. All rights reserved.</p>
						</div>
						<div>
							<div class="d-flex">
								<a href="#" class="text-small text-white mx-2 footer-link">Privacy Policy </a>          
								<a href="#" class="text-small text-white mx-2 footer-link">Customer Support </a>
								<a href="#" class="text-small text-white mx-2 footer-link">Careers </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<script src="vendors/base/vendor.bundle.base.js"></script>
		<script src="vendors/owl.carousel/js/owl.carousel.js"></script>
		<script src="vendors/aos/js/aos.js"></script>
		<script src="vendors/jquery-flipster/js/jquery.flipster.min.js"></script>
		<script src="js/template.js"></script>
	</body>
</html>