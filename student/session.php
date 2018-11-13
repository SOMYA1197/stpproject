<?php

session_start();
if (!isset($_SESSION['email'])) {

  print_r("Here i am "); die();
  header("location: ../login.php");
}

?>
