<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: Muzamil
  Date: 8/7/2023
  Time: 10:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Doc Track-Appointments</title>
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
          <div class="col-md-4 pr-4 d-flex topper align-items-center ">
            <div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-my_location"></span></div>
            <span class="text">Civic Center khairpur Mir's</span>
          </div>
          <div class="col-md pr-4 d-flex topper align-items-center">

            <div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-contact_mail"></span></div>
            <span class="text">Email:DocTrack@gmail.com</span>
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
    <p class="button-custom order-lg-last mb-0"><a href="appointment.jsp" class="btn btn-secondary py-2 px-3">Make An Appointment</a></p>
    <div class="collapse navbar-collapse" id="ftco-nav">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active"><a href="/Home" class="nav-link pl-0">Home</a></li>
        <li class="nav-item"><a href="/Home" class="nav-link">Emergency Services</a></li>
        <li class="nav-item"><a href="doctor.jsp" class="nav-link">Find Doctor</a></li>
        <li class="nav-item"><a href="department.jsp" class="nav-link">Departments</a></li>
        <li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li>

      </ul>
    </div>
  </div>
</nav>
<!-- END nav -->

<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-9 ftco-animate text-center">
        <h1 class="mb-2 bread">Appointment</h1>
        <p class="breadcrumbs"><span class="mr-2"><a href="/Home">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Appointment <i class="ion-ios-arrow-forward"></i></span></p>
      </div>
    </div>
  </div>
</section>

<%--Appointment Form--%>
<section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
  <div class="container">
    <div class="row">
      <div class="col-md-6 py-5 pr-md-5">
        <div class="heading-section heading-section-white ftco-animate mb-5">
          <span class="subheading">Consultation</span>
          <h2 class="mb-4">Make Appointment</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
        </div>

        <form action="#" class="appointment-form ftco-animate align-items-center">
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
                <input type="text" class="form-control p-1" placeholder="Doctor's Name">
              </div>
            </div>
          </div>
          <div class="icon"><span class="ion-ios"></span>
            <input type="text" class="form-control p-1 " placeholder="Phone">
          </div>


          <div class="icon"><span class="ion-ios"></span>
            <input type="text" class="form-control p-1" placeholder="Message">
          </div>
          <div class="col-md-12 p-4 py-3 text-center">
            <input type="submit" value="Appointment" class="btn btn-secondary py-3 px-4">
          </div>
        </form>

      </div>
  </div>
    </div>

</section>
<%--Form End --%>


<footer class="ftco-footer ftco-bg-dark ftco-section">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md">
        <div class="ftco-footer-widget mb-5">
          <h2 class="ftco-heading-2 logo">Doc<span>Track</span></h2>
          <p>Your Pathway to Health and Healing Begins Here. Discover Compassionate Care, Expert Guidance, and Convenient Appointments, Tailored Just for You. Trust in Our Medical Excellence to Nurture Your Well-being. Your Health, Our Commitment. Book Now and Embrace a Life of Vitality and Joy.</p>
        </div>
        <div class="ftco-footer-widget mb-5">
          <h2 class="ftco-heading-2">Have a Questions?</h2>
          <div class="block-23 mb-3">
            <ul>
              <li><span class="icon icon-map-marker"></span><span class="text">Civic Center Khairpur Mir's</span></li>
              <li><span class="icon icon-phone"></span><span class="text">+921234567890</span></li>
              <li><span class="icon icon-contact_mail"></span><span class="text">DocTrack@gmail.com</span></li>


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
          <h2 class="ftco-heading-2">Departments</h2>
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