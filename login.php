<?php
require "config/dbconnect.php";

session_start();


$msg = "";

if(isset($_POST['submit'])){
  $email = $_POST['email'];
    $password = $_POST['password'];
      $catagory = $_POST['catagory'];
      if($catagory=="student"){
            $query = mysqli_query($conn,"SELECT * FROM student_reg WHERE email='$email' && password='$password' ");
            $array = mysqli_fetch_array($query);
            $studentusername = $array['email'];
            $studentpassword= $array['password'];
            $studentemail = $array['email'];
            if($email == $studentemail && $password==$studentpassword){

              $_SESSION["username"] = $studentusername;
              header("location: student/template.php");

            }else{
              $msg = " Incorrect Username or Password";
            }

  }
  else{
            $query = mysqli_query($conn,"SELECT * FROM tutor_reg WHERE username='$username' && password='$password'");
            $array = mysqli_fetch_array($query);
            $tutorusername = $array['username'];
            $tutorpassword= $array['password'];
            if($username == $tutorusername && $password==$tutorpassword){
              header("location: tutor/template.php");
            }else{
              $msg = " Incorrect Username or Password";
            }
  }

}

 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <?php require("bootstrap.php"); ?>
    <link rel="stylesheet" href="asset/css/custom.css">
  </head>
  <body>

    <style media="screen">
    body{
      margin: 0px;
       background: #ccc url("images/slider_background.jpg")!important;
    }


    </style>




<div class="page">
  <div class="container">

      <div class="form">
        <form class="" method="post">

          <h1 style=" text-align: center">LOGIN</h1><br>
            <div class="form-group">
              <label for="email">Email address:</label>
              <input type="email" class="form-control" name="email" id="email" required>
            </div>
            <div class="form-group">
              <label for="pwd">Password:</label>
              <input type="password" class="form-control" name="password" id="pwd" required>
            </div>
            Login as:<br>
            <div class="form-check-inline">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="catagory" value="student">Student
              </label>
            </div>
            <div class="form-check-inline">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="catagory" value="tutor">Tutor
              </label>
            </div>
            <br><br>
            <button type="submit" name="submit"  class="form-control btn btn-primary">Login</button><br>
           <br>
           <a href="registration.php">Create Account Here</a>

              <span style="color:red;"><?php echo $msg; ?></span>
      </form>
      </div>
    </div>
  </div>

<script src="asset/js/login.js" charset="utf-8"></script>
  </body>
</html>
