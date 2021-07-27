<%@page import="common.DB_Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html>
<html>
<title>LuXe</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="../images/logo.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.notfound{
		top: 50%;
        left: 50%;
        position: absolute;
        transform: translate(-50%, -50%);
        box-sizing: border-box;
        padding: 70px 30px;
}
</style>
<body class="w3-light-grey">

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
                <!-- page content -->
	<div class="mt-3" style="width: 100%; min-height: 750px;">
        <div class="w3-container" id="contact">
            
            <div class="w3-container w3-margin-top" id="rooms">
                <h3 style="color: #d41873; font-weight: bold;">Received Messages</h3>
            </div>
                    <div class="w3-row-padding w3-padding-16">
                    <%
                            try {
                                Statement statement = null;
                                ResultSet resultSet = null;
                                String Countrow="";
                                String CurrentUser = session.getAttribute("LogedInUserName").toString();
                                
                                DB_Connection obj_DB_Connection = new DB_Connection();
                                Connection connection = obj_DB_Connection.get_connection();
                                statement = connection.createStatement();
                                String sql = "SELECT COUNT(id) FROM messages";
                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                                    Countrow = resultSet.getString(1);
                                    if(Countrow.equals("0")){
                                        %>
        

                                        <div class="notfound">
                                            <center><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                                                width="80" height="80"
                                                viewBox="0 0 172 172"
                                                style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#d41872"><path d="M107.5,15.05c-27.28502,0 -49.45,22.16498 -49.45,49.45c0,10.95053 3.57773,21.06928 9.61621,29.26855l-9.1291,9.1291c-0.73016,-0.27177 -1.49648,-0.42412 -2.26758,-0.42412c-1.65504,0 -3.31005,0.62675 -4.56035,1.87705l-34.76953,34.76953c-2.50061,2.50061 -2.50061,6.6201 0,9.1207l6.81953,6.81953c2.50061,2.50061 6.6201,2.50061 9.1207,0l34.76953,-34.76953c1.8325,-1.8325 2.30682,-4.53043 1.45293,-6.82793l9.1291,-9.1291c8.19927,6.03848 18.31802,9.61621 29.26855,9.61621c27.28502,0 49.45,-22.16498 49.45,-49.45c0,-27.28502 -22.16498,-49.45 -49.45,-49.45zM107.5,19.35c24.96112,0 45.15,20.18888 45.15,45.15c0,24.96112 -20.18888,45.15 -45.15,45.15c-24.96112,0 -45.15,-20.18888 -45.15,-45.15c0,-24.96112 20.18888,-45.15 45.15,-45.15zM107.5,23.65c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM97.48066,24.96855c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM117.51094,24.96855c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM88.1458,28.83603c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM126.85,28.83603c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM80.13369,34.98369c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM134.86211,34.98369c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM141.00977,43c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM73.98184,43.0042c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM92.45,49.45c-3.53677,0 -6.45,2.91323 -6.45,6.45c0,3.53677 2.91323,6.45 6.45,6.45c3.53677,0 6.45,-2.91323 6.45,-6.45c0,-3.53677 -2.91323,-6.45 -6.45,-6.45zM122.55,49.45c-3.53677,0 -6.45,2.91323 -6.45,6.45c0,3.53677 2.91323,6.45 6.45,6.45c3.53677,0 6.45,-2.91323 6.45,-6.45c0,-3.53677 -2.91323,-6.45 -6.45,-6.45zM70.11436,52.33486c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM144.87725,52.33486c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM92.45,53.75c1.21288,0 2.15,0.93712 2.15,2.15c0,1.21288 -0.93712,2.15 -2.15,2.15c-1.21288,0 -2.15,-0.93712 -2.15,-2.15c0,-1.21288 0.93712,-2.15 2.15,-2.15zM122.55,53.75c1.21288,0 2.15,0.93712 2.15,2.15c0,1.21288 -0.93712,2.15 -2.15,2.15c-1.21288,0 -2.15,-0.93712 -2.15,-2.15c0,-1.21288 0.93712,-2.15 2.15,-2.15zM68.8,62.35c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM146.2,62.35c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM70.11436,72.36514c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM144.87725,72.36934c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM107.5,73.1c-7.87492,0 -14.87758,3.80305 -19.50957,9.37266l3.30479,2.75049c3.88631,-4.67299 9.71771,-7.82314 16.20478,-7.82314c6.48708,0 12.31847,3.15015 16.20478,7.82314l3.30479,-2.75049c-4.63199,-5.56961 -11.63465,-9.37266 -19.50957,-9.37266zM73.98184,81.6958c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM141.01397,81.7042c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM80.13369,89.71631c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM134.86211,89.71631c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM126.8458,95.86397c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM88.1458,95.86816c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM70.37891,97.13633c1.39838,1.58891 2.89585,3.08639 4.48476,4.48476l-8.38164,8.38164l-4.48476,-4.48476zM97.48066,99.73145c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM117.51094,99.73145c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM107.5,101.05c-1.18741,0 -2.15,0.96259 -2.15,2.15c0,1.18741 0.96259,2.15 2.15,2.15c1.18741,0 2.15,-0.96259 2.15,-2.15c0,-1.18741 -0.96259,-2.15 -2.15,-2.15zM56.26953,106.74834c0.54549,0 1.08707,0.21362 1.51592,0.64248l6.82373,6.81953c0.85704,0.85704 0.85384,2.18639 0,3.04023l-34.76953,34.76953c-0.85769,0.85769 -2.18254,0.85769 -3.04023,0l-6.81953,-6.81953c-0.85769,-0.85769 -0.85769,-2.18254 0,-3.04023l3.67012,-3.67012l4.92988,4.92988l3.04023,-3.04023l-4.92988,-4.92988l3.40977,-3.40977l4.92988,4.92988l3.04023,-3.04023l-4.92988,-4.92988l3.40977,-3.40977l4.92988,4.92988l3.04023,-3.04023l-4.92988,-4.92988l3.40977,-3.40977l4.92988,4.92988l3.04023,-3.04023l-4.92988,-4.92988l3.40977,-3.40977l4.92988,4.92988l3.04023,-3.04023l-4.92988,-4.92988l2.25918,-2.25918c0.42885,-0.42885 0.97463,-0.64248 1.52012,-0.64248z"></path></g></g></svg>
                                            <h4 class="mt-4 mb-5">No Messages found</h4>
                                            </div>
        
                                        <%
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <%
                            try {
                                Statement statement = null;
                                ResultSet resultSet = null;
        
                                DB_Connection obj_DB_Connection = new DB_Connection();
                                Connection connection = obj_DB_Connection.get_connection();
                                statement = connection.createStatement();
                                String sql = "SELECT * FROM messages";
        
                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>
        
        
                        <div class="w3-third w3-margin-bottom">
                            <div class="w3-container border-dark w3-white">
                                <h3><%=resultSet.getString("senderName")%></h3>
                                <h6 class="w3-opacity"><%=resultSet.getString("senderEmail")%></h6>
                                <p><%=resultSet.getString("message")%></p>
                            </div>
                        </div>
        
                            <%
                                }
                            %>
        
                            <%
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
        
                        
        
                    </div>
                </div>
          </div>
                    



                  
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



<%-- <%@page import="common.DB_Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html>
<html>
<title>LuXe</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="../images/logo.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.notfound{
		top: 50%;
        left: 50%;
        position: absolute;
        transform: translate(-50%, -50%);
        box-sizing: border-box;
        padding: 70px 30px;
}
</style>
<body class="w3-light-grey">

<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <a href="home.jsp" class="w3-bar-item w3-button  w3-mobile"><img src="../images/logo.png" style="width: 25px;height: 25px;"></a>
  <a href="allrequests.jsp" class="w3-bar-item w3-button w3-mobile">All Requests</a>
  <a href="rooms.jsp" class="w3-bar-item w3-button w3-mobile">Rooms</a>
  <a href="about.jsp" class="w3-bar-item w3-button w3-mobile">About</a>
  <a href="contact.jsp" class="w3-bar-item w3-button w3-blue w3-mobile">Contact</a>
  <a href="../logout.jsp" id="user_name_div" title="logout" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"><%= session.getAttribute( "LogedInManagerName" ) %></a>
  <script type="text/javascript">
    var pp = document.getElementById('user_name_div').innerText;
    if(pp == "null"){
      window.location.href = "../login.jsp";
    }
  </script>
</div>

<!-- page content -->
	<div style="width: 100%; min-height: 750px;">
<div class="w3-container" id="contact">
    <h2>Contact</h2>
    <p>If you have any questions, do not hesitate to ask them.</p>
    <i class="fa fa-map-marker w3-text-blue" style="width:30px"></i> Chicago, US<br>
    <i class="fa fa-phone w3-text-blue" style="width:30px"></i> Phone: +00 151515<br>
    <i class="fa fa-envelope w3-text-blue" style="width:30px"> </i> Email: mail@mail.com<br>
    
    <div class="w3-container w3-margin-top" id="rooms">
		<h3>Received Messages</h3>
	</div>
			<div class="w3-row-padding w3-padding-16">
			<%
					try {
						Statement statement = null;
						ResultSet resultSet = null;
						String Countrow="";
						String CurrentUser = session.getAttribute("LogedInUserName").toString();
						
						DB_Connection obj_DB_Connection = new DB_Connection();
						Connection connection = obj_DB_Connection.get_connection();
						statement = connection.createStatement();
						String sql = "SELECT COUNT(id) FROM messages";
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
							Countrow = resultSet.getString(1);
							if(Countrow.equals("0")){
								%>

								<div class="notfound">
								<center><img alt="ntfound" src="../images/ntfound.png">
								<h4>No Messages found</h4>
								</div>

								<%
							}
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
				<%
					try {
						Statement statement = null;
						ResultSet resultSet = null;

						DB_Connection obj_DB_Connection = new DB_Connection();
						Connection connection = obj_DB_Connection.get_connection();
						statement = connection.createStatement();
						String sql = "SELECT * FROM messages";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>


				<div class="w3-third w3-margin-bottom">
					<div class="w3-container w3-white">
						<h3><%=resultSet.getString("senderName")%></h3>
						<h6 class="w3-opacity"><%=resultSet.getString("senderEmail")%></h6>
						<p><%=resultSet.getString("message")%></p>
					</div>
				</div>

					<%
						}
					%>

					<%
						} catch (Exception e) {
							e.printStackTrace();
						}
					%>

				

			</div>
		</div>
  </div>


<!-- Footer -->
<footer class="w3-padding-16 w3-black w3-center w3-margin-top">
  <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</footer>


</body>
</html>
 --%>