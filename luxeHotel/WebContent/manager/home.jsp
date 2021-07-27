<!DOCTYPE html>
<html>
<title>LuXe</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
        <!-- <link rel="stylesheet" type="text/css" href="../css/home.css"> -->
        <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div id="wrapper">

            <!-- Navigation Bar -->

            <nav class="nav-admin">
                <div class="container d-flex  justify-content-end">
                    <div class="username">
                        <i class="far fa-smile mr-2 urs-icon"></i>
                        <p class="urs-icon d-inline"><%= session.getAttribute( "LogedInUserName" ) %>  </p>
                        
                        <i class="ml-3 fas fa-ellipsis-v urs-icon"></i>
                        <a class="log-out ml-3" href="../logout.jsp" id="user_name_div" title="logout">
                            Log out
                        </a>                                      
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



            <!-- Main -->

            <div class="main d-flex">
                <div class="left col-3 p-5">
                    <div class="container-fluid text-center">
                        <img src="../images/logo_white.png" alt="">
                        <h3 class="luxe text-white pt-4"> <span style="color: #d41873;">LUXE</span> HOTEL</h3>  
                        <hr>
                    </div>
                    <div class="container-fluid menu mt-4">
                        <ul>
                            <li>
                                <a href="home.jsp"><i class="fas fa-chart-line icon-menu"></i>Dashboard</a>
                            </li>
                            <li>
                                <a href="allrequests.jsp"><i class="fas fa-calendar-check icon-menu"></i>All requests</a>
                            </li>
                            <li>
                                <a href="contact.jsp"><i class="far fa-envelope-open icon-menu"></i>Message</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="right col-9">
                    <div class="container-fluid">
                        <div class="card-deck">
                            <div class="card">
                              <div class="card-body">
                                  <div class="des d-flex justify-content-between">
                                     <h4 class="card-title "><i class="far fa-user mr-3"></i>Clients</h4> 
                                     <h4 class="number">140</h4> 
                                  </div>
                                  <div class="mt-3 progress">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 24%"></div>
                                  </div>                                  
                              </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <div class="des d-flex justify-content-between">
                                       <h4 class="card-title "><i class="fas fa-home mr-3"></i>Rooms</h4> 
                                       <h4 class="number">45</h4> 
                                    </div>
                                    <div class="mt-3 progress">
                                      <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 8%"></div>
                                    </div>                                  
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <div class="des d-flex justify-content-between">
                                       <h4 class="card-title "><i class="fas fa-dollar-sign mr-3"></i>Invoices</h4> 
                                       <h4 class="number">375</h4> 
                                    </div>
                                    <div class="mt-3 progress">
                                      <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
                                    </div>                                  
                                </div>
                            </div>                                                      
                        </div>

                        <div class="mapouter mt-4"><div class="gmap_canvas"><iframe class="gmap_iframe" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=2048&amp;height=400&amp;hl=en&amp;q=423 Some adr, Chicago, US&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://www.fridaynightfunkin.net/friday-night-funkin-mods-fnf-play-online/">FNF Mods</a></div><style>.mapouter{position:relative;text-align:right;width:100%;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:100%;height:400px;}.gmap_iframe {height:400px!important;}</style></div>



                      
                </div>
            </div>

            <!-- Main -->
    </div>

  




  <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js" integrity="sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.slim.js" integrity="sha512-HNbo1d4BaJjXh+/e6q4enTyezg5wiXvY3p/9Vzb20NIvkJghZxhzaXeffbdJuuZSxFhJP87ORPadwmU9aN3wSA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.slim.min.js" integrity="sha512-6ORWJX/LrnSjBzwefdNUyLCMTIsGoNP6NftMy2UAm1JBm6PRZCO1d7OHBStWpVFZLO+RerTvqX/Z9mBFfCJZ4A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.1.1/js/all.js" integrity="sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a" crossorigin="anonymous"></script>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  <script src="../js/main.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
