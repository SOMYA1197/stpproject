<?php
require "../config/dbconnect.php";

session_start();


$msg = "";

if(isset($_POST['submit'])){
    $amount = $_POST['amount'];
      $payment_mode = $_POST['payment'];
        $date = $_POST['date'];
          $description = $_POST['description'];

          if(!empty($amount) || !empty($payment_mode) || !empty($date) || !empty($description)  )  {

            $sql = "INSERT INTO payment (amount, payment_mode, date, description)
            VALUES('$amount','$payment_mode','$date','$description') ";

              $query = mysqli_query($conn,$sql);
              if ($query) {
                // $msg = "succesfully registered";
                echo "<script> alert('SUCCEFULLY REGISTERED'); </script>";
              }
              else {
              echo "<script> alert('REGISTERATION FAILED'); </script>";
            }

          }else{
            $msg = "some field is empty";
          }

  }
  ?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  <link rel="stylesheet" href="../asset/css/custom.css">

  <?php require('bootstrap.php'); ?>

  </head>
  <body class="pay">

    <div class="payment">



    <form class=""  method="post">

                <h1 style=" text-align: center">Payment</h1><br><br>

                  <div class="form-group">
                    <label for="amount">Amount:</label>
                    <input type="number" class="form-control" name="amount" id="amount" required>
                  </div>

                  Payment Mode<br>
                  <div class="form-check-inline">
                    <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="payment" value="paytm">paytm
                    </label>
                  </div>
                  <div class="form-check-inline">
                    <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="payment" value="debit">debit
                    </label>
                  </div>
                  <br><br>

                  <div class="form-group">
                    <label for="date">Date:</label>
                    <input type="date" class="form-control" name="date" id="date" required>
                  </div>

                  <div class="form-group">
                    <label for="description">Description</label>
                    <textarea name="description" class="form-control" placeholder="Enter Description" rows="7" cols="30"></textarea>

                  </div>

                  <button type="submit" name="submit"  class="btn btn-primary">SUBMIT</button><br>

                    <span style="color:red;"><?php // echo $msg; ?></span>



    </form>
  </div>
  </body>
</html>
