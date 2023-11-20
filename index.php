<?php
session_start();
?>
<?php
$profpic = "images/backgrounf.jpg";
?>
<html>

  <head>
    <title>WELCOME to Food Heaven </title>
  </head>
  <div class="wide">
    <br><br><br><br><br><br><br><br><br><br><br><br>
      	<div class="col-xs-2 line"><hr></div>
        <div class="col-xs-3 logo"><img src="images/logo.png"></div>
        <div class="orderblock">
          <div class="container text-align-center" style="color:white; font-family:Arial;"><h2>Feeling Hungry?</h2></div>
    <center><a class="btn btn-success btn-lg" href="customerlogin.php" role="button" > Order Now </a></center>
    </div>
    
    <style type="text/css">

body {
background-image: url('<?php echo $profpic;?>') ;
background-size:cover;
background-repeat:no-repeat;
backround-position:center;
}
</style>
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <link rel="stylesheet" type = "text/css" href ="css/index.css">

  <body>
    <button onclick="topFunction()" id="myBtn" title="Go to top">    </button>
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

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
  
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
<?php
  ?>
       </div>
      </div>
    </nav>
</body>
</html>