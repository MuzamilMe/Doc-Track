<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: Muzamil
  Date: 8/7/2023
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Doc Track</title>
  <link rel="icon" type="images/x-icon" href="images/doctor1.png"/>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

  <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
  <link rel="stylesheet" href="css/animate.css">

  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">

  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/ionicons.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="css/jquery.timepicker.css">


  <link rel="stylesheet" href="css/flaticon.css">
  <link rel="stylesheet" href="css/icomoon.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav class="navbar py-4 navbar-expand-lg ftco_navbar navbar-light bg-light flex-row">
  <div class="container">
    <div class="row no-gutters d-flex align-items-start align-items-center px-3 px-md-0">
      <div class="col-lg-2 pr-4 align-items-center">
        <a class="navbar-brand" href="/Home">Doc<span>Track</span></a>
      </div>
      <div class="col-lg-10 d-none d-md-block">
        <div class="row d-flex">
          <div class="col-md-4 pr-4 d-flex topper align-items-center">
            <div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"> <span class="icon-my_location"></span></div>
            <span class="text"> MUET SZAB Campus Khairpur Mir's</span>
          </div>
          <div class="col-md pr-4 d-flex topper align-items-center">
            <div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-contact_mail"></span></div>
            <span class="text">Email: DocTrack@gmail.com</span>
          </div>
          <div class="col-md pr-4 d-flex topper align-items-center">
            <div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
            <span class="text">Phone: +921234567890</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
  <div class="container d-flex align-items-center">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="oi oi-menu"></span> Menu
    </button>
    <p class="button-custom order-lg-last mb-0"><a href="appointment.jsp"> </a></p>
    <div class="collapse navbar-collapse" id="ftco-nav">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item"><a href="index.jsp" class="nav-link pl-0">Home</a></li>
        <li class="nav-item active"><a href="about.jsp" class="nav-link">About</a></li>
        <li class="nav-item"><a href="doctor.jsp" class="nav-link">Doctor</a></li>
        <li class="nav-item"><jsp:forward page="department.jsp"></jsp:forward>Departments</li>
        <li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li>


      </ul>
    </div>
  </div>
</nav>
<!-- END nav bar -->

<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-9 ftco-animate text-center">
        <h1 class="mb-2 bread">About Us</h1>
        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>About us <i class="ion-ios-arrow-forward"></i></span></p>
      </div>
    </div>
  </div>
</section>

<section class="ftco-section ftco-no-pt ftc-no-pb">
  <div class="container">
    <div class="row no-gutters">
      <div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0" style="background-image: url(images/about.jpg);">
      </div>
      <div class="col-md-7 wrap-about py-4 py-md-5 ftco-animate">
        <div class="heading-section mb-5">
          <div class="pl-md-5 ml-md-5">
            <span class="subheading">About Doc Track</span>
            <h2 class="mb-4" style="font-size: 28px;">Medical specialty concerned with the care of acutely ill hospitalized patients</h2>
          </div>
        </div>
        <div class="pl-md-5 ml-md-5 mb-5">
          <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word.</p>

        </div>
      </div>
    </div>
  </div>
</section>

<section class="ftco-intro" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-9">
        <h2>We Provide Health Care Consultation </h2>
        <p class="mb-0">Your Health is Our Top Priority with Comprehensive, Affordable medical.</p>
        <p></p>
      </div>
      <div class="col-md-3 d-flex align-items-center">
        <p class="mb-0"><a href="#" class="btn btn-secondary px-4 py-3">Consutation</a></p>
      </div>
    </div>
  </div>
</section>

<%--Testonomials--%>
<section class="ftco-section testimony-section bg-light">
  <div class="container">
    <div class="row justify-content-center mb-5 pb-2">
      <div class="col-md-8 text-center heading-section ftco-animate">
        <span class="subheading">Testimonials</span>
        <h2 class="mb-4">Our Patients Says About Us</h2>
        <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
      </div>
    </div>
    <div class="row ftco-animate justify-content-center">
      <div class="col-md-8">
        <div class="carousel-testimony owl-carousel">
          <div class="item">
            <div class="testimony-wrap d-flex">
              <div class="user-img mr-4" style="background-image: url(images/person_1.jpg)">
              </div>
              <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Racky Henderson</p>
                <span class="position">Farmer</span>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimony-wrap d-flex">
              <div class="user-img mr-4" style="background-image: url(images/person_2.jpg)">
              </div>
              <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Henry Dee</p>
                <span class="position">Businessman</span>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimony-wrap d-flex">
              <div class="user-img mr-4" style="background-image: url(images/person_3.jpg)">
              </div>
              <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Mark Huff</p>
                <span class="position">Students</span>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimony-wrap d-flex">
              <div class="user-img mr-4" style="background-image: url(images/person_4.jpg)">
              </div>
              <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Rodel Golez</p>
                <span class="position">Striper</span>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimony-wrap d-flex">
              <div class="user-img mr-4" style="background-image: url(images/person_1.jpg)">
              </div>
              <div class="text ml-2 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Ken Bosh</p>
                <span class="position">Manager</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
  <div class="container">
    <div class="row">
      <div class="col-md-6 py-5 pr-md-5">
        <div class="heading-section heading-section-white ftco-animate mb-5">
          <span class="subheading">Consultation</span>
          <h2 class="mb-4">Book Consultation</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<%--        Appointment Form--%>
<section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
  <div class="container">
    <div class="row">
      <div class="col-md-6 py-5 pr-md-5">
        <div class="heading-section heading-section-white ftco-animate mb-5">
          <span class="subheading">Consultation</span>
          <h2 class="mb-4">Make Appointment</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
        </div>

        <form action="#" class="appointment-form ftco-animate ">
          <div class="d-md-flex">
            <div class="form-group">
              <input type="text" class="form-control p-1" placeholder="First Name">
            </div>
            <div class="form-group ml-md-4">
              <input type="text" class="form-control p-1" placeholder="Last Name">
            </div>
          </div>
          <div class="d-md-flex">
            <div class="form-group">
              <div class="form-field">
                <div class="icon"><span class="ion-ios"></span></div>
                <input type="text" class="form-control" placeholder="Doctor's Name">
              </div>
            </div>
          </div>
          <div class="icon"><span class="ion-ios"></span>
            <input type="text" class="form-control" placeholder="Phone">
          </div>
          <div class="icon"><span class="ion-ios"></span>
            <input type="text" class="form-control" placeholder="Message">
          </div>
          <div class="col-md-12 p-4 py-3 text-center">
            <input type="submit" value="Appointment" class="btn btn-secondary py-3 px-4">
          </div>
        </form>

      </div>
    </div>
  </div>
</section>



    <div class="col-lg-6 p-5 bg-counter aside-stretch">
        <h3 class="vr">About Dr.Care Facts</h3>
        <div class="row pt-4 mt-1">
          <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 p-5 bg-light">
              <div class="text">
                <strong class="number" data-number="30">0</strong>
                <span>Years of Experienced</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 p-5 bg-light">
              <div class="text">
                <strong class="number" data-number="4500">0</strong>
                <span>Happy Patients</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 p-5 bg-light">
              <div class="text">
                <strong class="number" data-number="84">0</strong>
                <span>Number of Doctors</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 p-5 bg-light">
              <div class="text">
                <strong class="number" data-number="300">0</strong>
                <span>Number of Staffs</span>
              </div>
            </div>
          </div>
        </div>
      </div>
<footer class="ftco-footer ftco-bg-dark ftco-section">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md">
        <div class="ftco-footer-widget mb-5">
          <h2 class="ftco-heading-2 logo">Doc<span>Track</span></h2>
          <p>"Your Pathway to Health and Healing Begins Here. Discover Compassionate Care, Expert Guidance, and Convenient Appointments, Tailored Just for You. Trust in Our Medical Excellence to Nurture Your Well-being. Your Health, Our Commitment. Book Now and Embrace a Life of Vitality and Joy."</p>
        </div>
        <div class="ftco-footer-widget mb-5">
          <h2 class="ftco-heading-2">Have a Questions?</h2>
          <div class="block-23 mb-3">
            <ul>
              <li><span class="icon icon-map-marker"></span><span class="text">Civic Center Khairpur Mir's</span></li>
              <li><a href="#"><span class="icon icon-phone"></span><span class="text">+921234567890</span></a></li>
              <li><a href="#"><span class="icon icon-envelope"></span><span class="text">DocTrack@gmail.com</span></a></li>
            </ul>
          </div>

          <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
            <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
            <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
            <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
          </ul>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-5 ml-md-4">
          <h2 class="ftco-heading-2">Links</h2>
          <ul class="list-unstyled">
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Home</a></li>
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>About</a></li>
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Services</a></li>
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Deparments</a></li>
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Contact</a></li>
          </ul>
        </div>
        <div class="ftco-footer-widget mb-5 ml-md-4">
          <h2 class="ftco-heading-2">Services</h2>
          <ul class="list-unstyled">
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Neurolgy</a></li>
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Dentist</a></li>
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Ophthalmology</a></li>
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Cardiology</a></li>
            <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Surgery</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-5">
          <h2 class="ftco-heading-2">Recent Blog</h2>
          <div class="block-21 mb-4 d-flex">
            <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
            <div class="text">
              <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
              <div class="meta">
                <div><a href="#"><span class="icon-calendar"></span> Jun 20, 2022</a></div>
                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                <div><a href="#"><span class="icon-chat"></span> 17</a></div>
              </div>
            </div>
          </div>
          <div class="block-21 mb-5 d-flex">
            <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
            <div class="text">
              <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
              <div class="meta">
                <div><a href="#"><span class="icon-calendar"></span> Jun 20, 2022</a></div>
                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                <div><a href="#"><span class="icon-chat"></span> 17</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-5">
          <h2 class="ftco-heading-2">Opening Hours</h2>
          <h3 class="open-hours pl-4"><span class="ion-ios-time mr-3"></span>We are open 24/7</h3>
        </div>
        <div class="ftco-footer-widget mb-5">
          <h2 class="ftco-heading-2">Subscribe Us!</h2>
          <form action="#" class="subscribe-form">
            <div class="form-group">
              <label>
                <input type="text" class="form-control mb-2 text-center" placeholder="Enter email address">
              </label>
              <input type="submit" value="Subscribe" class="form-control submit px-3">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</footer>

<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>