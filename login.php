

<!DOCTYPE html>
<html>
	<head>
		<?php include('header.php') ?>
        <?php 
        session_start();
        if(isset($_SESSION['login_id'])){
            header('Location:home.php');
        }
        ?>
		<title>Login |  Online Quiz System</title>
        <link rel="stylesheet" href="assets/css/login/login.css">
    </head>
    <body>
		<section class="login first grey">
            <img src="https://cdn.wallpapersafari.com/32/24/GLWRuH.jpg" alt="test" class="login-img">
			<div style="padding:50px">
                <div class="container login-box">
                    <div class="box-wrapper login-flex">				
                        <div class="box box-border">
                            <div class="box-body login-alignment">
                                <div class="login-color" >Online Quiz System</div>
                                <div class="login-quiz">Login</div>
                                <form id="login-frm">
                                    <div class="form-group">
                                        <input type="username" name="username" class="form-control login-form"  placeholder="Username"  required />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control login-form"  placeholder="Password" required />
                                    </div>
                                    
                                    <div class="login-button-alignment">
                                        <button class="login-button" name="submit">Login</button>
                                    </div>
                                    <p> <a href=register.php> Register account </p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</section>

		<script src="js/jquery.js"></script>
		<script src="scripts/bootstrap/bootstrap.min.js"></script>
	</body>
	

        <script>
            $(document).ready(function(){
                $('#login-frm').submit(function(e){
                    e.preventDefault()
                    $('#login-frm button').attr('disable',true)
                    $('#login-frm button').html('Please wait...')

                    $.ajax({
                        url:'./login_auth.php',
                        method:'POST',
                        data:$(this).serialize(),
                        error:err=>{
                            console.log(err)
                            alert('An error occured');
                            $('#login-frm button').removeAttr('disable')
                            $('#login-frm button').html('Login')
                        },
                        success:function(resp){
                            if(resp == 1){
                                location.replace('home.php')
                            }else{
                                alert("Incorrect username or password.")
                                $('#login-frm button').removeAttr('disable')
                                $('#login-frm button').html('Login')
                            }
                        }
                    })

                })
            })
        </script>
</html>
