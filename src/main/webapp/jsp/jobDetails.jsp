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
 <!--style for hero banner-->
<br><br>



<div class="container">
    <h2 style="text-align: center;"><b><s:property value="job.job_function" /></b></h2>
        <div class="row">
            <div class="col-md-4">
      <div class="col-xs-12 col-sm-12 col-md-3">
				<a href="#"  class="thumbnail"><img src="https://www.jobnet.com.mm/images/can/mc/95/0/20161214052531-myanmar-international-business-academy.png" /></a>
			</div>
            </div>
            
            <div class="col-md-8">
              
              <div class="row">
              <div class="col-md-4">
              
					<i class="fa fa-calendar"></i> <span><s:property value="job.job_post_date" /></span><br>
					<i class="fa fa-send-o"></i> <span><s:property value="job.location" /></span><br>
					<i class="fa fa-clock-o"></i> <span><s:property value="job.working_time" /></span>
           
              
              </div>
                <div class="col-md-4">
                
                <span> <strong>Post by  </strong><s:property value="job.company_name" /></span><br>
					<i class="fa fa-dollar"></i> <span><s:property value="job.salary" /></span><br>
					<i class="fa fa-tags"></i> <span>Verified</span>
                
                </div>
              </div>
              
              
              
            </div>
        </div><!--end of div row-->
<hr width="100%">

<div class="row">
        <div class="col-md-8">
            <h2 style="text-align: center;"><b>OverView</b></h2>
           <p> <strong> Benefits :</strong><s:property value="job.benefits" /></p>	
				<p> <strong> Highlights :</strong> <s:property value="job.highlights" /></p>	
				<p> <strong> Career Opportunities :</strong> <s:property value="job.career" /></p>
        </div>

        <div class="col-md-4">

        </div>
</div> <!--end of div row class-->



<div class="row">
        <div class="col-md-8">
            <h2 style="text-align: center;"><b>Job description</b></h2>
           <s:property value="job.description" />
<br>
          <h4><strong>Job Requirements </strong></h4>
         <p>Skills/Requirements :</p>
<s:property value="job.requirements" />
    <br><br><br>
            
          
                <a href="job_details" class="btn btn-primary">Apply Job</a>




            </div>
            
            <div class="col-md-4">
              
            </div>
        

    
</div> <!--end of div row class-->
</div><!--end of div container class-->
<br><br>



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