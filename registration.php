
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Registration</title>
    <?php require 'bootstrap.php'; ?>  
    <style>
        .choose{
            width: 600px;
            margin: 0 auto;
        }
        .choose-me{
            width: 300px;
            height: 300px;
            padding: 30px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .choose-me img{
            width: 80%;
            height: 210px;
        }
        .choose-me h5{            
              margin: 10px;
        }
        
        .heading{
            margin: 30px;
        }

    </style> 
</head>
<body>
    <div class="choose">
        <div class="row">
            <div class="col-sm-12 ">
                <h2 class="text-center heading">Registeration For</h2>
            </div>
            <div class="col-sm-6">
                <a href="student-registration.php">
                <div class="choose-me">
                    <img src="images/student.png" alt="">
                    <br>
                    <h5 class="text-center">Student</h5>
                </div>

                </a>
            </div>
            <div class="col-sm-6">
                <a href="tutor_registeration.php">
                <div class="choose-me">
                    <img src="images/teacher.jpg" alt="">
                    <br>
                    <h5 class="text-center">Teacher</h5>
                </div>
                </a>
            </div>
        </div>

    </div>
</body>
</html>
    