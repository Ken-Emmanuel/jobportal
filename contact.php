<?php
include('includes/config.php');
session_start();
error_reporting(0);
?>
<!doctype html>

<html>

<head>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Jobportal-Contact Us Page</title>

<!--CUSTOM CSS-->

<link href="css/custom.css" rel="stylesheet" type="text/css">

<!--BOOTSTRAP CSS-->

<link href="css/bootstrap.css" rel="stylesheet" type="text/css">

<!--COLOR CSS-->

<link href="css/color.css" rel="stylesheet" type="text/css">

<!--RESPONSIVE CSS-->

<link href="css/responsive.css" rel="stylesheet" type="text/css">

<!--OWL CAROUSEL CSS-->

<link href="css/owl.carousel.css" rel="stylesheet" type="text/css">

<!--FONTAWESOME CSS-->

<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!--SCROLL FOR SIDEBAR NAVIGATION-->

<link href="css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">



<!--GOOGLE FONTS-->

<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,500,700,900' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>

      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>

      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->
    <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  chat-icon="https:&#x2F;&#x2F;encrypted-tbn0.gstatic.com&#x2F;images?q=tbn:ANd9GcQ445k6QT2o0KZP1pLKIJ-zVsBs2ecXLwaxeQ&ampusqp=CAU"
  intent="WELCOME"
  chat-title="Jobassistance"
  agent-id="59df7501-4786-482f-b3a2-ebe0a9a87759"
  language-code="en"
></df-messenger>
</head>



<body class="theme-style-1">

<!--WRAPPER START-->

<div id="wrapper"> 

  <!--HEADER START-->

   <?php include_once('includes/header.php');?>
  <!--HEADER END--> 

  

  <!--INNER BANNER START-->

  <section id="inner-banner">

    <div class="container">

      <h1>Contact us</h1>

    </div>

  </section>

  <!--INNER BANNER END--> 

  

  <!--MAIN START-->

  <div id="main"> 

    

    <!--CONTACT US START-->

    <section class="contact-section">

      <div class="map-box">

      

        <div class="contact-form padd-tb">

          <div class="container">

            <div class="row">

              <div class="col-md-9 col-sm-8">

                <h2>Get in Touch</h2>

               

              </div>
              <div class="col-md-3 col-sm-4 text-right">

                <h2>Map</h2>

               

              </div>

              <div class="col-md-6 col-sm-12">

                <div class="address-box">

                  <address>

                  <ul>
<?php
$sql="SELECT * from tblpages where PageType='contactus'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                    <li> <i class="fa fa-phone"></i> <strong>+<?php  echo htmlentities($row->MobileNumber);?></strong></li>

                    <li> <i class="fa fa-envelope-o"></i> <strong><?php  echo htmlentities($row->Email);?></strong> </li>

                    <li> <i class="fa fa-globe"></i> <strong><?php  echo htmlentities($row->PageDescription);?></strong> </li>
<?php $cnt=$cnt+1;}} ?>
                  </ul>

                  </address>

                </div>

              </div>
              <div class="col-md-6 col-sm-12">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31764.316369828193!2d-0.1648065891601593!3d5.634765000000018!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf849782750487%3A0xc2130abc74fdcb81!2sThe%20Synagogue%20Church%20of%20All%20Nations!5e0!3m2!1sen!2sgh!4v1682999449935!5m2!1sen!2sgh"
                width="600" height="230" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
              </iframe>

              </div>

            </div>

          </div>

        </div>

      </div>

    </section>

    <!--CONTACT US END--> 

    

  </div>

  <!--MAIN END--> 

  

  <!--FOOTER START-->

  <?php include_once('includes/footer.php');?>

  <!--FOOTER END--> 

</div>

<!--WRAPPER END--> 



<!--jQuery START--> 

<!--JQUERY MIN JS--> 

<script src="js/jquery-1.11.3.min.js"></script> 

<!--BOOTSTRAP JS--> 

<script src="js/bootstrap.min.js"></script> 

<!--Map Js--> 

<script src="http://maps.google.com/maps/api/js?sensor=false"></script> 

<!--OWL CAROUSEL JS--> 

<script src="js/owl.carousel.min.js"></script> 

<!--BANNER ZOOM OUT IN--> 

<script src="js/jquery.velocity.min.js"></script> 

<script src="js/jquery.kenburnsy.js"></script> 

<!--SCROLL FOR SIDEBAR NAVIGATION--> 

<script src="js/jquery.mCustomScrollbar.concat.min.js"></script> 

<!--CUSTOM JS--> 

<script src="js/custom.js"></script>

</body>

</html>

