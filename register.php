<?php
	include("db_connect.php");
	session_start();
	
	if(isset($_POST['submit']))
	{	
		$name = $_POST['name'];
		$name = stripslashes($name);
		$name = addslashes($name);

		$email = $_POST['email'];
		$email = stripslashes($email);
		$email = addslashes($email);

		$password = $_POST['password'];
		$password = stripslashes($password);
		$password = addslashes($password);

		$college = $_POST['college'];
		$college = stripslashes($college);
		$college = addslashes($college);
		$str="SELECT email from user WHERE email='$email'";
		$result=mysqli_query($con,$str);
		
		if((mysqli_num_rows($result))>0)	
		{
            echo "<center><h3><script>alert('Sorry.. This email is already registered !!');</script></h3></center>";
            header("refresh:0;url=login.php");
        }
		else
		{
            $str="insert into user set name='$name',email='$email',password='$password',college='$college'";
			if((mysqli_query($con,$str)))	
			echo "<center><h3><script>alert('Congrats.. You have successfully registered !!');</script></h3></center>";
			header('location: welcome.php?q=1');
		}
    }
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Register | Online Quiz System</title>
		<link rel="stylesheet" href="scripts/bootstrap/bootstrap.min.css">
		<link rel="stylesheet" href="scripts/ionicons/css/ionicons.min.css">
		<link rel="stylesheet" href="css/form.css">
        <link rel="stylesheet" href="assets/css/register/register.css">
		<style type="text/css">
            body{
                  width: 100%;
                  background: url(image/book.png) ;
                  background-position: center center;
                  background-repeat: no-repeat;
                  background-attachment: fixed;
                  background-size: cover;
                }
          </style>
	</head>

	<body>
		<section class="login first grey">
			<div class="container register-box">
				<div class="box-wrapper register-flex">				
					<div class="box box-border">
						<div class="box-body register-alignment">
							<div class="register-color" >Register to </div>
							<div class="register-text">first time register as user? Sign up</div>
							<div class="register-quiz">Online Quiz System</div>
							<form method="post" action="register.php" enctype="multipart/form-data">
                                <div class="form-group">
									<input type="text" name="name" class="form-control register-form"  placeholder="Username" required />
								</div>
								<div class="form-group">
									<input type="email" name="email" class="form-control register-form"  placeholder="Email"  required />
								</div>
								<div class="form-group">
									<input type="password" name="password" class="form-control register-form"  placeholder="Password" required />
                                </div>
								<div class="form-group">
									<input type="text" name="college" class="form-control register-form"  placeholder="College" required />
								</div>
                                
								<div class="register-button-alignment">
									<button class="register-button" name="submit">Register</button>
								</div>
								<div class="register-text">Already have an account! <a href="login.php">Login</a> Here..</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>

		<script src="js/jquery.js"></script>
		<script src="scripts/bootstrap/bootstrap.min.js"></script>
	</body>
</html>
