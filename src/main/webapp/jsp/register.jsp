<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ taglib prefix="s" uri="/struts-tags" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="ISO-8859-1">
      <title>ABC Job Portal</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="js/bootstrap.min.js"></script>
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="css/style.css">
    


    </head>


    <body>
       <div class="hero-anime">
        
	<div class="navigation-wrap bg-light start-header start-style">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-md navbar-light">
					
						<a class="navbar-brand" href="Index" >ABC Job Portal</a>	
						
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto py-4 py-md-0">
                <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="Register">Register</a>
								</li>
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="Login">Login</a>
								</li>

							</ul>
						</div>
						
					</nav>		
				</div>
			</div>
		</div>
	</div>

  <!--end of style for nav-------------------------------------------->
<br>
<br><br><br>
 <!--style for hero banner-->
 

<form action="register" method="post">
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>In this Registeration form you must fill to Login into ABC Job Portal</p>
                  
                    </div>
                    <div class="col-md-9 register-right">
                     
                        <div class="tab-content">
                            <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="home-tab">
                            <div class="register-heading">
                            <h3>Registration form</h3>
                            
                            <s:if test="i==0">
									<span style="color: red;"><s:property value="rmsg" /></span>
							</s:if>
                            </div>
   
                        		
                              
			
						
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" placeholder="Name : " value="" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="age"  placeholder="Age :" value="" required/>
                                        </div>
                                       <div class="form-group">
                                            <input type="text" class="form-control" name="job_function"  placeholder="JobFunction :" value="" required/>
                                        </div>
                                       <div class="form-group">
                                            <input type="text" class="form-control" name="skills"  placeholder="Skills :" value="" required/>
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                    <div class="form-group">
                                            <input type="text" class="form-control" name="phone_number"  placeholder="Phone Number :" value="" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control"  name = "email" placeholder="Your Email :" value="" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="password"name="password" class="form-control"  placeholder="Enter Your Password :" value="" required/>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="password" name="cpassword" class="form-control" placeholder="Enter Your Comfirm Password :" value="" required/>
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>

            </div>
            </form>
</body>
      <!-- Site footer -->
      <footer class="site-footer">
        <div class="container">
          <div class="row">
            <div class="col-sm-12 col-md-6">
              <h6>About</h6>
              <p class="text-justify">Job Categories for Remote, Part-Time, Freelance, and Flexible Jobs
New Remote Work From Home and Flexible Jobs
Find Remote Work From Home and Flexible Jobs By Location
Top Searched Remote Work from Home Jobs
View Popular Job Searches
Job Seeker Success Stories!</p>
            </div>
  
            <div class="col-xs-6 col-md-3">
              <h6>Categories</h6>
              <ul class="footer-links">
                <li><a href="#">How FlexJobs Works</a></li>
                <li><a href="#">The FlexJobs Team</a></li> 
                <li><a href="#">Careers at FlexJobs</a></li>
              </ul>
            </div>
  
            <div class="col-xs-6 col-md-3">
              <h6>Quick Links</h6>
              <ul class="footer-links">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Contribute</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Sitemap</a></li>
              </ul>
            </div>
          </div>
          <hr>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12">
              <p class="copyright-text">Copyright &copy; 2021 All Rights Reserved by 
           <a href="#">Sai Khant Min Bhone</a>.
              </p>
            </div>
  
            <div class="col-md-4 col-sm-6 col-xs-12">
              <ul class="social-icons">
                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
              </ul>
            </div>
          </div>
        </div>
  </footer>


    </html>