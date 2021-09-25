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
									<a class="nav-link" href="#">Post Jobs</a>
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




<div class="jumbotron">
  <h3 class="display-4"><strong>Please Fill the require fill</strong></h3>
  <p class="lead">This input fields will display in job post</p>

</div>
<div class="container">

<form action="job_data" method="post">
<h4 style="text-align:center">Job Details Description</h4> <br><br>


	<div class="mb-4 row">
    <label for="company name" class="col-sm-2 col-form-label">Company name: </label>
    <div class="col-sm-8">
      <input type="text" name="company_name" class="form-control" >
    </div>
  	</div>
  	<div class="mb-4 row">
    <label for="location" class="col-sm-2 col-form-label">Location: </label>
    <div class="col-sm-8">
      <input type="text" name="location" class="form-control">
    </div>
  	</div>
  	<div class="mb-4 row">
    <label for="working time" class="col-sm-2 col-form-label">Working Time: </label>
    <div class="col-sm-8">
      <input type="text" name="working_time" class="form-control">
    </div>
  	</div>
  	<div class="mb-4 row">
    <label for="salary" class="col-sm-2 col-form-label">Salary: </label>
    <div class="col-sm-8">
      <input type="text" name="salary" class="form-control" >
    </div>
  	</div>
  	<div class="mb-4 row">
    <label for="salary" class="col-sm-2 col-form-label">Job Function: </label>
    <div class="col-sm-8">
      <input type="text" name="job_function" class="form-control" >
    </div>
  	</div>
  	<div class="mb-4 row">
    <label for="beneftis" class="col-sm-2 col-form-label">Benefits: </label>
    <div class="col-sm-8">
      <input type="text" name="benefits" class="form-control" >
    </div>
  	</div>
  	
  	<div class="mb-4 row">
    <label for="highlights" class="col-sm-2 col-form-label">Highlights: </label>
    <div class="col-sm-8">
      <input type="text" name="highlights" class="form-control" >
    </div>
    
  	</div>
  	<div class="mb-4 row">
    <label for="career" class="col-sm-2 col-form-label">Career Opportunities: </label>
    <div class="col-sm-8">
      <input type="text" name="career" class="form-control" >
    </div>
  	</div>
  	
  	<div class="mb-4 row">
    <label for="description" class="col-sm-2 col-form-label">Job Description: </label>
    <div class="col-sm-8">
      <textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
  	</div>
  	<div class="mb-4 row">
    <label for="requirements" class="col-sm-2 col-form-label">Job Requirements: </label>
    <div class="col-sm-8">
     <textarea class="form-control" name="requirements" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
  	</div>
  	

  	
  	
	<div class="row">
	<div class="col-md-6"></div>
	<div class="col-md-6">
	<div class="row">
	<div class="col-md-3">
	<button type="cancel" class="btn btn-primary">Cancel</button>
	</div>
	<div class="col-md-3">
	<button type="submit" class="btn btn-primary">Submit</button>
	</div>
	</div>
	</div>
	</div>

</form>
<br><br><br>

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