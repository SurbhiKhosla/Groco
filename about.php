<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="row">

      <div class="box">
         <img src="images/about-img-1.png" alt="">
         <h3>why choose us?</h3>
         <p>Explore our extensive range of products, from everyday staples to specialty items. We offer a variety of options to cater to diverse tastes and dietary needs.
We guarantee the freshness of our products, delivering groceries that are as fresh as if you picked them yourself.
Shop with confidence knowing your data is protected. We use the latest security measures to ensure your personal information is safe.
</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      <div class="box">
         <img src="images/about-img-2.png" alt="">
         <h3>what we provide?</h3>
         <p>We handpick every item to ensure you receive only the best. From farm-fresh fruits and vegetables to premium cuts of meat, we are committed to offering high-quality products.
Shop from the comfort of your home at a time that suits you. With an easy-to-navigate website, grocery shopping has never been simpler.
Your satisfaction is our top priority. Our dedicated customer service team is always here to help.
 </p>
         <a href="shop.php" class="btn">our shop</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">clients reivews</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/pic-1.png" alt="">
         <p>I really liked the experience of online grocery buying.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <!-- <i class="fas fa-star-half-alt"></i> -->
         </div>
         <h3>Jai Dhawan</h3>
      </div>

      <div class="box">
         <img src="images/pic-2.png" alt="">
         <p>Prices are somewhat high but otherwise nice website.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <!-- <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i> -->
         </div>
         <h3>Ria Sharma</h3>
      </div>

      <div class="box">
         <img src="images/pic-3.png" alt="">
         <p>Most reliable online grocery website fully satisfying.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Sahil</h3>
      </div>

      <div class="box">
         <img src="images/pic-4.png" alt="">
         <p>Received wrong items from the website request to replace.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <!-- <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i> -->
         </div>
         <h3>Reena Khosla</h3>
      </div>

      <div class="box">
         <img src="images/pic-5.png" alt="">
         <p>Very friendly website and easy ordering process.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
         </div>
         <h3>Yashav</h3>
      </div>

      <div class="box">
         <img src="images/pic-6.png" alt="">
         <p>Great variety available and good quality items.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Dua Khan</h3>
      </div>

   </div>

</section>









<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>