<?php

require('session.php');
$session = $_SESSION["email"];

require('../config/dbconnect.php');
$id = $_GET['id'];
$query = mysqli_query($conn, "SELECT * FROM tutor_reg WHERE id = '$id'");
$array = mysqli_fetch_array($query);


// print_r($array['gender']); die();

 ?>




<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <?php require 'bootstrap.php'; ?>

    <link rel="stylesheet" href="../asset/css/custom.css">
    <style>

    body{
      overflow: hidden;
    }
    img {
        border: 1px solid #ddd;
        border-radius: 4px;
        padding: 5px;
        width: 200px;
        height: 200px;
    }

    img:hover {
        box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
    }

    .tutor-profile{
      padding: 20px;
      background: #e2dddd;
      border-radius: 20px;
      margin-top: 10%;
    }
    .img-box{
      margin-bottom: 20px;
    }
    .line-height{
      line-height: 30px;
    }
    table th, table td{
      padding: 0px 10px;
    }
    .payment-btn{
      margin-top: 30px;
      background: yellow;
      color: #000;

    }
    </style>



  </head>
  <body class="info">
    <div class="contianer">
    <div class="row">
        <div class="col-sm-6 offset-sm-3">
            <div class="tutor-profile">
                  <div class="img-box  text-center">
                    <img src="../images/author.jpg" alt="dummy" style="width:200px">
                  </div>
                <div class="text">
                  <div class="row">
                    <div class="col-sm-6 line-height">
                    
                      <table >
                        <tr>
                          <th> Name of tutor </th>
                          <td> : <?php echo $array['first_name']." ".$array['second_name']; ?></td>
                        </tr>
                        <tr>
                          <th>Email </th>
                          <td> : <?php echo $array['email']; ?></td>
                        </tr>
                        <tr>
                          <th>Mobile </th>
                          <td> : <?php echo $array['mobile_no']; ?></td>
                        </tr>
                        <tr>
                          <th>Area </th>
                          <td> : <?php echo $array['area']; ?></td>
                        </tr>
                        <tr>
                          <th>Pincode </th>
                          <td> : <?php echo $array['pin_code']; ?></td>
                        </tr>
                      </table>

                      
                    </div>
                    
                    <div class="col-sm-6 line-height">

                      <table >
                        <tr>
                          <th> Age </th>
                          <td> : <?php echo $array['age']; ?></td>
                        </tr>
                        <tr>
                          <th>Experience </th>
                          <td> : <?php echo $array['experience']; ?></td>
                        </tr>
                        <tr>
                          <th>Expertise </th>
                          <td> : <?php echo $array['expertise']; ?></td>
                        </tr>
                        <tr>
                          <th>Qualification </th>
                          <td> : <?php echo $array['qualification']; ?></td>
                        </tr>
                        <tr>
                          <th>Gender </th>
                          <td> : <?php echo $array['gender']; ?></td>
                        </tr>
                      </table>

                  
                    </div>

                  </div>  
                  <div class="text-center">
                    <?php
                      echo "<a href='payment.php?id=".$array['id']."' class='btn btn-primary payment-btn'> Hire Me </a>";
                    ?>

                  </div>                
                </div>
            </div>
        </div>
    </div>
    </div>
  </body>
</html>
