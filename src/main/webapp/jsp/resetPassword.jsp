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
      <link rel="stylesheet" type="text/css" href="css/style.css">="style.css">
    


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
<div class = "container">
	<div class="wrapper">
		<form action="reset_password" method="post"  class="form-signin">       
		    <h3 class="form-signin-heading">Please enter your new password</h3>
			  <hr class="colorgraph"><br>
			  <input type="text" class="form-control" name="hidden_email" value="<s:property value="hidden_email" />">
			  <input type="password" class="form-control" name="new_password" placeholder="Enter new password?" required="" autofocus="" />
			  <input type="password" class="form-control" name="new_cpassword" placeholder="Confirm new password" required=""/>     		  
			  <button class="btn btn-lg btn-primary btn-block"  type="Submit">Change</button>  		
		
		</form>			
	</div>
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