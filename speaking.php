<?php
session_start();
?>
<!doctype html>
<html lang="en">

<head>
    <title>EPATS - Speaking Test</title>
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

<body>
    <div class="wrapper ">
        <div class="sidebar" data-color="purple" data-background-color="white">
            <div class="logo">
                <a href="#" class="simple-text logo-mini">
                    <img src="assets/img/logo.svg">
                </a>
                <a href="#" class="simple-text logo-normal">
                    English Proficiency <br />Adaptive Test Series
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="dashboard.php">
                            <i class="material-icons">person</i>
                            <p>Dashboard</p>
                        </a>
                    </li>

                    <li class="nav-item active s">
                        <a class="nav-link" href="quiz.php">
                            <i class="material-icons">ballot</i>
                            <p>Take Quiz</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="updateprofile.php">
                            <i class="material-icons">update</i>
                            <p>Update Profile</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="changepassword.php">
                            <i class="material-icons">https</i>
                            <p>Change Password</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="faq.php">
                            <i class="material-icons">record_voice_over</i>
                            <p>FAQs</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="help.php">
                            <i class="material-icons">donut_large</i>
                            <p>Help</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">
                            <i class="material-icons">power_settings_new</i>
                            <p>Log Out</p>
                        </a>
                    </li>
                    <!-- your sidebar here -->
                </ul>
            </div>
        </div> <!-- your sidebar here -->
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="javascript:void;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="material-icons">person</i>
                                    <?php
                                        // session_start();
                                        echo $_SESSION['login_user'];
                                        // echo $_SESSION['userid'];
                                    ?>
                                    <p class="d-lg-none d-md-block">
                                        Account
                                    </p>
                                </a>
                            </li>
                            <!-- your navbar here -->
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <!-- your navbar here -->
            <div class="content">
                <div class="container-fluid">
                    <!-- your content here -->
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">
                                        Speaking Test
                                        <p class="pull-right">Time Left : <span id="countdown"></span></p>
                                    </h4>
                                </div>
                                <div class="container">
                                    <div class="app">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <label class="bmd-label-floating" style="font-size: 18px;">
                                                        <?php
                                                        $servername = "localhost:3307";
                                                        $username = "root";
                                                        $password = "root";
                                                        $dbname = "epats";
                                                        // Create connection
                                                        $conn = new mysqli($servername, $username, $password,$dbname); 
                                                        $grp=$_SESSION['group'];
                                                        //print_r($grp);
                                                        $id=$_SESSION['userid'];
                                                        $qid=$_SESSION['questions'];
                                                        $sql2="select * from speaking_score where user_id=$id;";
                                                        if(mysqli_query($conn,$sql2))
                                                        {
                                                        $result = mysqli_query($conn, $sql2);

                                                        if (mysqli_num_rows($result) > 0) 
                                                        {
                                                            echo "<script>window.location.href='dashboard.php';
                                                                    //</script>";
                                                        }
                                                    }
                                                        echo "question 1 : qid: ".$qid;

                                                        $sql="select * from speaking where sid=$qid;";
                                                        if(mysqli_query($conn,$sql))
                                                        {
                                                        $result = mysqli_query($conn, $sql);

                                                        if (mysqli_num_rows($result) > 0) 
                                                        {
                                                            while($row = mysqli_fetch_assoc($result)) 
                                                            {

                                                                echo " Question is : ".$row['question'];
                                                            }
                                                        }
                                                    }
                                                
                                                    else
                                                    {
                                                        echo "error";
                                                    }

                                                        ?>
                                                    </label>
                                                </div>

                                            </div>



                                            <label for="male"><?php  $myfile ?></label>
                                            <form  id="speaking" method="post">
                                                <div class="input-single">

                                                    <textarea class="form-control" id="note-textarea" placeholder="Type Here" rows="6" name="answer" id="answer" value=" "> </textarea>
                                                </div>

                                                <button class="btn btn-lg btn-primary pull-right" name="submit" type="Submit">Submit</button>

                                                <?php

                                                if (isset($_POST["submit"]))
                                                        {
                                                    $txt = "";
                                                    $score = "";
                                                    $sentiment = "";
                                                    if(isset($_POST['answer']) ){
                                                    $txt = $_POST["answer"];
                                                    
                                                    $fp = fopen('lidn.txt', 'w');
                                                    fwrite($fp, $txt);
                                                    fclose($fp);
                                                    $nexttest = 3;
                                                    $score = shell_exec("python score.py ");
                                                    
                                                    $sentiment = shell_exec("python senti.py ");
                                                    // echo $sentiment;

                                                    $score = (int)$score;
                                                    $nexttest = shell_exec("python adapt.py 3 $score");
                                                }
                                                    //echo $nexttest;
                                                

                                                // echo $id;
                                                // $nexttest=5;
                                                            date_default_timezone_set('Asia/Kolkata');
                                                            $date = date( 'Y-m-d H:i:s ', time () );
                                                            $sql = "insert into speaking_score(sid,user_id,date_time,marks) values(".$qid.",".$id.",'".$date."',".$score.")";
                                                            // echo $sql;

                                                            if(mysqli_query($conn,$sql))
                                                            {   

                                                                // echo "success";
                                                                // $_SESSION['w2']= $nexttest;
                                                                //echo "<script>window.location.href='speaking2.php';
                                                                  //  </script>";
                                                                print_r($_SESSION['group']);
                                                                if($score > 70)
                                                                {
                                                                    $grp=$grp+1;
                                                                }
                                                                else
                                                                {
                                                                    $grp=$grp-1;
                                                                }

                                                                $_SESSION['group']=$grp;
                                                                print_r($_SESSION['group']);

                                                            }
                                                            else
                                                            {
                                                                echo "error1";
                                                            }
                                                        }
                                                        $grp=$_SESSION['group'];
                                                        //print_r($grp);
////////////////////////////////////////////////////////////////////////////////////////////////
                                                       a:if($grp == 1)
                                                        {
                                                            
                                                        $id=$_SESSION['userid'];
                                                        $qid=mt_rand(1,5);

                                                        }
                                                        if($grp == 2)
                                                        {
                                                            
                                                        $id=$_SESSION['userid'];
                                                        $qid=mt_rand(6,10);

                                                        }
                                                        if($grp == 3)
                                                        {
                                                            
                                                        $id=$_SESSION['userid'];
                                                        $qid=mt_rand(11,15);

                                                        }
                                                        if($grp == 4)
                                                        {
                                                            
                                                        $id=$_SESSION['userid'];
                                                        $qid=mt_rand(16,20);

                                                        }
                                                        if($grp == 5)
                                                        {
                                                            
                                                        $id=$_SESSION['userid'];
                                                        $qid=mt_rand(21,25);

                                                        }
                                                        if($grp == 6)
                                                        {
                                                            
                                                        $id=$_SESSION['userid'];
                                                        $qid=mt_rand(26,30);

                                                        }
                                                        if($grp == 7)
                                                        {
                                                            
                                                        $id=$_SESSION['userid'];
                                                        $qid=mt_rand(31,35);

                                                        }
                                                        //echo $qid;
                                                        //echo "string";
                                                        $check="select * from speaking_score where sid=$qid and user_id=$id;";
                                                        if(mysqli_query($conn,$check))
                                                        {//echo("here");
                                                            $result = mysqli_query($conn, $check);
                                                            // echo $result;

                                                            if(mysqli_num_rows($result) > 0)
                                                            { 
                                                                    goto a;
                                                            }

                                                            else
                                                            {
                                                                $_SESSION['question1']=$qid;


                                                            }
                                                            print_r($_SESSION['question1']);

                                                        }
                                                


///////////////////////////////////////////////////////////////////////////////////////////////////////

                                                        $conn->close();
                                                ?>




                                            </form>
                                            <button id="start-record-btn" class="btn btn-lg btn-primary pull-right" title="Start Recording">Start Recognition</button>
                                            <button id="pause-record-btn" class="btn btn-lg btn-primary pull-right" title="Pause Recording">Pause Recognition</button>
                                            <div class="clearfix"></div>
                                            <p id="recording-instructions">Instructions.</p>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-4">
                            <div class="card card-profile app">
                                <div class="card-body">
                                    <h3 class="card-title text-primary mt-2">SCORE CARD: </h3>
                                    <div class="card card-chart">
                                        <div class="card-body">
                                            <p class="card-title">
                                                <?php
                                                    echo $score;
                                                    //$myfile = fopen("marks2.txt", "w");
                                                    //fwrite($myfile, "Test1,");
                                                    //fwrite($myfile, $score);
                                                    //fwrite($myfile, ",");
                                                    //fclose($myfile);
                                                    echo $sentiment;

                                                ?>
                                            </p>
                                        </div>
                                        <div class="card-footer">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <button class="btn btn-lg btn-primary btn-block" id="start-record-btn" onclick="window.location.href = 'speaking2.php'">NEXT TEST</button>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <button class="btn btn-lg btn-primary btn-block" id="start-record-btn" type="Submit">EXIT TEST</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="script.js"></script>
<script src="assets/js/timer.js"></script>

<!-- Only used for the demos ads. Please ignore and remove. -->
<!-- <script src="https://cdn.tutorialzine.com/misc/enhance/v3.js" async></script> -->

</html>
