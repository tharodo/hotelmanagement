<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<head>
    <title>Luxe Hotel</title>
    <link rel="icon" type="image/png" href="images/logo.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <!--===============================================================================================-->	
	  <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">

    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
    <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
    <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="../vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../css/util.css">
        <link rel="stylesheet" type="text/css" href="../css/home.css">

</head>

<body>

  <!-- Navigation Bar -->

  <nav class="navbar navbar-expand-lg navbar-light fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Luxe</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
  
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#section-about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#section-services">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#section-contact">Contact</a>
          </li>
        </ul>
      </div>

      <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle nav-user" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="far fa-smile mr-2"></i><%= session.getAttribute( "LogedInUserName" ) %>
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
          <a class="dropdown-item" href="myrequests.jsp">Request</a>
          <!-- <a class="dropdown-item" href="#!">Another action</a> -->
          <a class="dropdown-item" href="../logout.jsp" id="user_name_div" title="logout">
            Log out
          </a>
        </div>
      </div>
      

      <script type="text/javascript">
        var pp = document.getElementById('user_name_div').innerText;
        if(pp == "null"){
          window.location.href = "../login.jsp";
        }
      </script>
    </div>
  </nav>

  <!-- Navigation Bar -->
  


  <!-- Header -->
  <div id="section-header">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="https://images.unsplash.com/photo-1543906919-602ac82be64a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80" alt="First slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>luxe hotel</h5>
            <p>Reserve Room for Family Vacation</p>
            <p>
              <a href="#" class="btn btn-book btn-lg">Book Now</a>
            </p>
          </div>
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80" alt="Second slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>luxe hotel</h5>
            <p>Make Your Vacation Comfortable</p>
            <p>
              <a href="#" class="btn btn-book btn-lg">Book Now</a>
            </p>
          </div>
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://images.unsplash.com/photo-1534482421-64566f976cfa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1498&q=80" alt="Third slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>luxe hotel</h5>
            <p>A Best Place To Enjoy Your Life</p>
            <p>
              <a href="#" class="btn btn-book btn-lg">Book Now</a>
            </p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>

  <!-- Header -->

  

  <!-- Check Availability -->

  <div id="section-booking" class="bg-light">
    <div class="container book">

      <form id="form-book" action="../ReserverARoom" method="post" class="d-flex justify-content-around">
          <div class="check-in">
            <label class="mr-2">Check In</label>
            <input type="date" placeholder="DD MM YYYY" name="CheckIn" required>
          </div>
          <div class="check-out">
            <label class="mr-2">Check Out</label>
            <input type="date" placeholder="DD MM YYYY" name="CheckOut" required>
          </div>
          <div class="des-adult">
            <label class="mr-2">Adults</label>
            <input type="number" value="1" name="Adults" min="1" max="6">         
          </div>
          <div class="des-child">
            <label class="mr-2">Kids</label> 
            <input type="number" value="0" name="Kids" min="0" max="6">
            <input style="display: none;" type="text" value='<%= session.getAttribute( "LogedInUserName" ) %>' name="current_user" >
          </div>
        <button type="submit" class="btn btn-sm btn-check">Check Availability</button>
      </form>            
  
    </div>    
  </div>

  <!-- Check Availability -->



  <!-- About -->
  
  <div id="section-about">
    <div class="container">
      <div class="row">
        <div class="col-7 des-about-title">
          <h5 class="sub-title">
            About us
          </h5>
          <h1 class="mb-4 mt-3 title">Welcome to Luxe</h1>
          <p class="des-about">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
          <p class="des-about mt-3 mb-4">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>
          <blockquote class="blockquote">
            <footer class="blockquote-footer">Hope you have nice experiences in
              <cite title="Source Title">Luxe Hotel</cite>
            </footer>
          </blockquote>
          
        </div>
        <div class="col-5">
          <img class="img-about img-thumbnail" src="https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1506&q=80" alt="Thumbnail image">
          <!-- <img class="about-img about-img w-100" src="https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80" alt=""> -->
        </div>
      </div>
    </div>
  </div>

  <!-- About -->


  <!-- Services -->

  <div id="section-services">
    <div class="container">
      <h1 class="service-title text-uppercase text-center">Services</h1>
      <div class="row mb-4 mt-5">
        <div class="col-4">
          <h4 class="sub-title text-uppercase">
            <i class="fas fa-wifi mr-3"></i>Free Wi-Fi
          </h4>
          <p class="des-services">
            The massive investment in a hotel or resort requires constant reviews and control in order to make it a successful investment.
          </p>
        </div>
        <div class="col-4">
          <h4 class="sub-title text-uppercase">
            <i class="fas fa-swimming-pool mr-3"></i>Premium Pool
          </h4>
          <p class="des-services">
            Choose from 4 unique ready made concepts, let us help you create the concept perfect for you or let HCA.          
          </p>
        </div>
        <div class="col-4">
          <h4 class="sub-title text-uppercase">
            <i class="fas fa-coffee mr-3"></i>Coffee Maker
          </h4>
          <p class="des-services">
            HCA's Owner's Representation is taking care of just these important factors, may it be through regular site visits and spot checks.          </p>
        </div>
      </div>  
      <div class="row">
        <div class="col-4">
          <h4 class="sub-title text-uppercase">
            <i class="fas fa-wine-glass-alt mr-3"></i>Bar Wine
          </h4>
          <p class="des-services">
            For properties with third party management companies, HCA Consultants will as well administer the terms and conditions.          </p>
        </div>
        <div class="col-4">
          <h4 class="sub-title text-uppercase">
            <i class="fas fa-tv mr-3"></i>TV HD
          </h4>
          <p class="des-services">
            We provide a critical analysis of a hotel's marketing strategy, bench-marking it against industry and competitive practices.          </p>
        </div>
        <div class="col-4">
          <h4 class="sub-title text-uppercase">
            <i class="fas fa-utensils mr-3"></i>Restaurant
          </h4>
          <p class="des-services">
            A hotel and restaurant investment deserves careful and market oriented financial planning and projections.
          </p>
        </div>
      </div>  
    </div>
  </div>

    
  <!-- Services -->



  <!-- Contact -->

	<div id="section-contact">
		<div class="container" id="contact">
      <h1 class="contact-title text-center text-uppercase">Contact</h1>
      <div class="row">
        <div class="col-12">
          <div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=2048&amp;height=400&amp;hl=en&amp;q=423 Some adr, Chicago, US&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://www.fridaynightfunkin.net/friday-night-funkin-mods-fnf-play-online/">FNF Mods</a></div><style>.mapouter{position:relative;text-align:right;width:100%;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:100%;height:400px;}.gmap_iframe {height:400px!important;}</style></div>
        </div>
      </div>
      <div class="row contact">
        <div class="col-6 contact-left">
          <div class="block-left">
            <h2 class="contact-sub-title text-uppercase">
              Contact Us
            </h2>            
            <p class="contact-des">(123) 456-78-910</p>
            <p class="contact-des">Luxehotel@gmail.com</p>
          </div>
          <div class="block-left">
            <h2 class="contact-sub-title text-uppercase">
              Address
            </h2>            
            <p class="contact-des">423 Some adr, Chicago</p>
            <p class="contact-des">USA</p>
          </div>
          <div class="block-left">
            <h2 class="contact-sub-title text-uppercase">
              Open time
            </h2>            
            <p class="contact-des">Monday - Friday:
              8 am - 9 pm</p>
            <p class="contact-des">Saturday - Sunday:
              8 am - 9 pm</p>
          </div>
        </div>
        <div class="col-6 contact-right">
          <h2 class="contact-sub-title text-uppercase">
            Your question?
          </h2> 
          <form class="form-contact" action="../SendMessageByUser" method="post">
            <input type="text" name="current_user" value='<%= session.getAttribute( "LogedInUserName" ) %>' style="display: none;">
            <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Email" required name="Email"></p>
            <p>
              <input class="w3-input w3-padding-16 w3-border" type="text"
                placeholder="Message" required name="Message">
            </p>
            <p>
              <button class="btn btn-danger" type="submit">SEND
                MESSAGE</button>
            </p>
          </form>
        </div>
      </div>

		</div>
	</div>

  <!-- Contact -->

        
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->

  <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js" integrity="sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.slim.js" integrity="sha512-HNbo1d4BaJjXh+/e6q4enTyezg5wiXvY3p/9Vzb20NIvkJghZxhzaXeffbdJuuZSxFhJP87ORPadwmU9aN3wSA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.slim.min.js" integrity="sha512-6ORWJX/LrnSjBzwefdNUyLCMTIsGoNP6NftMy2UAm1JBm6PRZCO1d7OHBStWpVFZLO+RerTvqX/Z9mBFfCJZ4A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.1.1/js/all.js" integrity="sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a" crossorigin="anonymous"></script>
  <!--===============================================================================================-->
  <!-- <script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
  <script src="../vendor/animsition/js/animsition.min.js"></script>
  <script src="../vendor/bootstrap/js/popper.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="../vendor/select2/select2.min.js"></script>
  <script src="../vendor/daterangepicker/moment.min.js"></script>
  <script src="../vendor/daterangepicker/daterangepicker.js"></script>
  <script src="../vendor/countdowntime/countdowntime.js"></script> -->


  <script src="../js/main.js"></script>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>