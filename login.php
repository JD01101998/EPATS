<!DOCTYPE html5>
<html lang="en">

<head>
    <title>EPATS - Student Login</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <link rel="icon" href="assets/img/logo.svg">
    <!-- Material Kit CSS -->
    <link href="assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
    <link href="assets/demo/demo.css" rel="stylesheet" />
</head>

<body style="background: #ffffff;">
    <div class="wrapper">
        <div class="content">
            <div class="container-fluid">
                <!-- your content here -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="card" style="position: relative; top: 30%; left: 5%;">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title">Login</h4>
                                <p class="card-category">Don't have an account? <a href="signup.php">Sign Up Now!</a></p>
                            </div>
                            <div class="card-body">
                                <form method="post">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Email address</label>
                                                <input type="email" name="email_id" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Password</label>
                                                <input type="password" name="password" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>

                                    <button type="submit" name="submit" class="btn btn-primary pull-left">Login</button>


                                    <?php

                                        session_start();
                                        $servername = "localhost:3307";
                                        $username = "root";
                                        $password = "root";
                                        $dbname = "epats";
                                        // Create connection
                                        $conn = new mysqli($servername, $username, $password,$dbname);

                                        if (isset($_POST["submit"]))
                                        {
                                            $s1=$_POST['email_id'];
                                            $s2=$_POST['password'];
                                            $sql = "SELECT * FROM login_details WHERE email_id = '$s1' AND password = '$s2' ";

                                        if(mysqli_query($conn,$sql))
                                        {
                                            $result = mysqli_query($conn, $sql);
                                            // echo $result;

                                        if(mysqli_num_rows($result) > 0)
                                        {   $s="SELECT * FROM user_details WHERE email_id = '$s1'";
                                            $res=mysqli_query($conn,$s);
                                            while($row = mysqli_fetch_assoc($res))
                                            {
                                                $user=$row['name'];
                                                $id=$row['user_id'];
                                                $email=$row['email_id'];
                                                $_SESSION['login_user']= $user; 
                                                $_SESSION['userid']= $id; 
                                                $_SESSION['email']= $email;
            
                                                echo "<script>window.location.href='dashboard.php';
                                                </script>";
                                            }
                                            
                                            
                                         
                                        }


                                        else
                                        {

                                           echo '<script type="text/javascript">alert("Email or Password may be invalid. Please Check Your Credentials");
                                                </script>';

                                        }
                                        $conn->close();
                                        }
                                        }
                                    ?>
                                </form>
                            </div>
                            <div class="card-footer">
                                <p>Are you an admin? <a href="adminlogin.php">Log In Here!</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <img src="assets/img/3327590.jpg" class="img-fluid">
                        <h2 class="text-center">English Proficiency Adaptive Test Series</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="assets/demo/demo.js"></script>

</html>
