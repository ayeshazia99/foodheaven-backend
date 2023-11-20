<?php
include('session_m.php');

if(!isset($login_session)){
header('Location: managerlogin.php'); // Redirecting To Home Page
}

?>
<!DOCTYPE html>
<html>

  <head>
    <title> Food Heaven </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/myrestaurant.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <body>
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php" style="color:purple; font-family:Papyrus;">Food Heaven</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
          <li><a href="index.php" style="color:white; font-family:Papyrus;">Home</a></li>
            <li><a href="aboutus.php" style="color:white; font-family:Papyrus;">About</a></li>
            <li><a href="contactus.php" style="color:white; font-family:Papyrus;">Contact Us</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
          <li><a href="#" style="color:white; font-family:Papyrus;"> Welcome <?php echo $login_session; ?> </a></li>
            <li class="active"> <a href="managerlogin.php" style="color:white; font-family:Papyrus;">Manager Dashboard</a></li>
            <li><a href="logout_m.php" style="color:white; font-family:Papyrus;"> Log Out </a></li>
          </ul>
        </div>

      </div>
    </nav>

<div class="container">
    <div class="jumbotron">
    <h1><a href="#" style="color:black; font-family:Papyrus;"> Welcome <?php echo $login_session; ?> </a></h1>
     <p>Manage your restaurant from here</p>

    </div>
    </div>
<div class="container">
    <div class="container">
    	<div class="col">
    		
    	</div>
    </div>
    
    	<div class="col-xs-3" style="text-align: center;">

    	<div class="list-group">
    		<a href="view_food_items.php" class="list-group-item ">View Food Items</a>
    		<a href="add_food_items1.php" class="list-group-item ">Add Food Items</a>
    		<a href="edit_food_items.php" class="list-group-item ">Edit Food Items</a>
    		<a href="delete_food_items.php" class="list-group-item ">Delete Food Items</a>
    	</div>
    </div>
    </div>
</div>

  </body>
</html>