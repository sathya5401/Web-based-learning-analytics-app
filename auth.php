<?php
 session_start();
    if(!(isset($_SESSION['login_id'])))
    {
        header("location:login.php");
        // echo $_SESSION['login_id']
    }
    else
    {
        $name = $_SESSION['login_name'];
    }

    ?>