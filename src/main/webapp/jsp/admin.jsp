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
					
						<a class="navbar-brand" href="Admin" >ABC Job Portal</a>	
						
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						
							
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto py-4 py-md-0">
                <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="Admin">Home</a>
								</li>
								
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
									<a class="nav-link" href="manage_user">Manage User</a>
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


<div class="section">
  <div class="hero-container">
    <div class="col four">
      <h1 class="icon"><i class="fa fa-search"></i></h1>
      <h1 class="service">Find the Right Job</h1>
     
    </div>
    <div class="col four">
      <h1 class="icon"><i class="fa fa-send-o"></i></h1>
      <h1 class="service">Research Companies</h1>

    </div>
    <div class="responsivegroup"></div>
    <div class="col four">
      <h1 class="icon"><i class="fa fa-dollar"></i></h1>
      <h1 class="service">Compare Salaries</h1>
      
    </div>
    <div class="col four">
      <h1 class="icon"><i class="fa fa-suitcase"></i></h1>
      <h1 class="service">Apply To Jobs</h1>

    </div>
    <div class="group"></div>
  </div>
</div>
<div class="section bg">
  <div class="hero-container">
    <h1>Career Coaching Services</h1>
    <h2>We offer a variety of career services to meet your remote and hybrid job interests.</h2>
    <div class="col three bg nopad pointer">

      <div class="imgholder"><img src="image/cardsimage1.png" ></div>
      <h1 class="feature">Career Advice</h1>
      <p>Answers to top job search questions </p>
      <p>Browse by selected topics such as resume, career gap, and negotiation</p>

    </div>
    <div class="col three bg nopad pointer">

     <div class="imgholder"><img src="image/cardsimage2.png" ></div>
      <h1 class="feature">Webinars & Events</h1>
      <p>New events each week</p>
      <p>Access to Career Coaching Q&A</p>

    </div>
    <div class="col three bg nopad pointer">

      <div class="imgholder"><img src="image/cardsimage3.png" ></div>
      <h1 class="feature">Coaching Services</h1>
      <p>Access to career coaching experts</p>
      <p>Up to 50% less than other services</p>

    </div>
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
    <script>
     
/*for nav script=======================*/

(function($) { "use strict";

$(function() {
  var header = $(".start-style");
  $(window).scroll(function() {    
    var scroll = $(window).scrollTop();
  
    if (scroll >= 10) {
      header.removeClass('start-style').addClass("scroll-on");
    } else {
      header.removeClass("scroll-on").addClass('start-style');
    }
  });
});		
  
//Animation

$(document).ready(function() {
  $('body.hero-anime').removeClass('hero-anime');
});

//Menu On Hover
  
$('body').on('mouseenter mouseleave','.nav-item',function(e){
    if ($(window).width() > 750) {
      var _d=$(e.target).closest('.nav-item');_d.addClass('show');
      setTimeout(function(){
      _d[_d.is(':hover')?'addClass':'removeClass']('show');
      },1);
    }
});	

//Switch light/dark

$("#switch").on('click', function () {
  if ($("body").hasClass("dark")) {
    $("body").removeClass("dark");
    $("#switch").removeClass("switched");
  }
  else {
    $("body").addClass("dark");
    $("#switch").addClass("switched");
  }
});  

})(jQuery); 
/*end of nav script=======================*/

    </script>

    </html>