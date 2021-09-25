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
					
						<a class="navbar-brand" href="Home" >ABC Job Portal</a>	
						
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						
							
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto py-4 py-md-0">
                <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="Home">Home</a>
								</li>
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="post_job">Post Jobs</a>
								</li>
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="#">Message</a>
								</li>
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="profile">Profile</a>
								</li>

								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="logout">Logout</a>
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
<br><br>
 <!--style for hero banne-->
<br><br>

<div class="container emp-profile">
           <form method="post" action="update">
                <div class="row">
                    <div class="col-md-2">
                       
                    </div>
                    <div class="col-md-10">
                        <div class="profile-head">
                                    <h5>
                                       <s:property value="user.name" /> 
                                    </h5>
                                    <h6>
                                       <s:property value="user.job_function" /> 
                                    </h6>
                                    <p class="proile-rating">RANKINGS : <span>10/10</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                  
                      
                 
                </div>
                <div class="row">
                    <div class="col-md-2">
                       
                    </div>
                    <div class="col-md-10">
      
                            <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="home-tab">
                          
                                              <input type="hidden" class="form-control" name="user.user_id" value="<s:property value="user.user_id" /> " />
                                      
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" name="user.name" value="<s:property value="user.name" /> " />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Age</label>
                                            </div>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" name="user.age" value="<s:property value="user.age" /> " />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Job Function</label>
                                            </div>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" name="user.job_function" value="<s:property value="user.job_function" /> " />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Skills</label>
                                            </div>
                                            <div class="col-md-6">
                                                 <input type="text" class="form-control" name="user.skills" value="<s:property value="user.skills" /> " />
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone Number</label>
                                            </div>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" name="user.phone_number" value="<s:property value="user.phone_number" /> " />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" name="user.email" value="<s:property value="user.email" /> " />
                                              </div>
                                        </div>
                                       
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Password</label>
                                            </div>
                                            <div class="col-md-6">
                                        <input type="password" class="form-control" name="user.password" value="<s:property value="user.password" /> " />
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                              
                                            </div>
                                            <div class="col-md-6">
                                                  <button  class="btn btn-primary" type="submit">Update</button>
                                            </div>
                                        </div>
                            </div>
                        
                        </div>
                    </div>
                </div>
            </form>        
        </div>


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