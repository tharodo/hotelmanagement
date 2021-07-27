<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<head>
    <title>Luxe Hotel</title>
    <link rel="icon" type="image/png" href="images/logo.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main2.css">

</head>

<body>

    <div class="loginbox">
        <form action="SignupServerlet" method="post">
            <p>Username</p>
            <input type="text" name="newuser" placeholder="Enter Your Username" required="required">
            <p>Password</p>
            <input type="password" name="newpass" placeholder="Enter Your Password" required="required">
            <p>Confirm Password</p>
            <input type="password" name="newconpass" placeholder="Confirm your Password" required="required">
            <p>Email</p>
            <input type="email" name="newemail" placeholder="Enter Your Email" required="required">
            <input type="submit" name="login" value="Login"><br>
            <a href="login.jsp">Already have an account?</a>
        </form>
    </div>

    <!--===============================================================================================-->
	    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
        <script src="js/main.js"></script>

</body>

</html>
<!-- <html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<head>
    <title>LuXe</title>
    <link rel="icon" type="image/png" href="images/logo.png">
</head>

<style type="text/css">
    body {
        margin: 0;
        padding: 0;
        background-color: #ddd;
        font-family: sans-serif;
    }

    h1 {
        margin: 0;
        padding: 0 0 20px;
        text-align: center;
        font-size: 30px;
        color: darkgray;
    }

    .loginbox {
        width: 320px;
        height: 550px;
        background-color: white;
        color: #fff;
        top: 50%;
        left: 50%;
        position: absolute;
        transform: translate(-50%, -50%);
        box-sizing: border-box;
        padding: 70px 30px;
        border-radius: 20px;
        box-shadow: 5px 10px #888888;

    }

    .avatar {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        position: absolute;
        top: -50px;
        left: calc(50% - 50px);
        background-color: DodgerBlue;
        padding: 25px;
    }


    .loginbox p {
        margin: 0;
        padding: 0;
        font-weight: bold;
        color: darkgray;
    }

    .loginbox input {
        width: 100%;
        margin-bottom: 20px;
    }

    .loginbox input[type="text"],
    input[type="password"],
    input[type="email"] {
        border: none;
        border-bottom: 1px solid darkgray;
        background: transparent;
        outline: none;
        height: 40px;
        color: darkgray;
        font-size: 16px;
        transition: 0.25s;
    }

    .loginbox input[type="text"]:focus,
    input[type="password"]:focus,
    input[type="email"]:focus {
        border-bottom: 2px solid #ffc107;
    }

    .loginbox input[type="submit"] {
        border: none;
        outline: none;
        height: 40px;
        background: DodgerBlue;
        color: #fff;
        font-size: 18px;
        border-radius: 20px;
        transition: 0.25s;
    }

    .loginbox input[type="submit"]:hover {
        cursor: pointer;
        background: #ffc107;
        color: #000;
    }

    .loginbox a {
        text-decoration: none;
        font-size: 12px;
        line-height: 20px;
        color: darkgrey;
        transition: 0.25s;
    }

    .loginbox a:hover {
        color: #ffc107;
    }

    .error {
        color: #FF7800;
    }

    ::placeholder {
        color: #ddd;
        opacity: 1;
        /* Firefox */
    }

    :-ms-input-placeholder {
        /* Internet Explorer 10-11 */
        color: #ddd;
    }

    ::-ms-input-placeholder {
        /* Microsoft Edge */
        color: #ddd;
    }
</style>

<body>

    <div class="loginbox"">
        <img src="images/logo_white.png" class="avatar">
        <h1>Sign Up</h1>
        <form action="SignupServerlet" method="post">
            <p>Username</p>
            <input type="text" name="newuser" placeholder="Enter Your Username" required="required">
            <p>Password</p>
            <input type="password" name="newpass" placeholder="Enter Your Password" required="required">
            <p>Confirm Password</p>
            <input type="password" name="newconpass" placeholder="Confirm your Password" required="required">
            <p>Email</p>
            <input type="email" name="newemail" placeholder="Enter Your Email" required="required">
            <input type="submit" name="login" value="Login"><br>
            <a href="login.jsp">Already have an account?</a>
        </form>
    </div>

</body>


</html> -->