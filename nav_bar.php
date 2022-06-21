<div class = "navbar-containers"> 
	<div class = "navbar-title">
		 Online Quiz System
	</div>
	<div >
	
		<span><?php echo " <span style='padding-right: 20px;color:white;'>". $name."</span>"; ?></span>
		<a href="logout.php" class="navbar-elements" >  Logout <i class="fa fa-power-off navbar-elements" style="padding-left:10px;"></i></a>
	</div>
</div>
<!-- 
	 <nav class = "navbar navbar-header navbar-light bg-primary" >
			<div class = "container-fluid">
				<div class = "navbar-header"></div>
				<div class = "nav navbar-nav">
					<div style="
						justify-content:space-between;
						display:flex;
						padding-right: 30px;
					">
					<i class="fa fa-power-off navbar-elements" style= "padding-left: 10px;align-self: center;"></i>
					
					</div>
				</div>
			</div>
		</nav>  -->
		
			<?php if($_SESSION['login_user_type'] != 3): ?>
			<?php if($_SESSION['login_user_type'] == 1): ?>
				<div id="sidebar" class="bg-light">
			<div id="sidebar-field">
				<a href="home.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-home"> </i></div>   Home
				</a>
			</div>
			<div id="sidebar-field">
				<a href="faculty.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-users"> </i></div>  Lecturer List
				</a>
			</div>
		<?php endif; ?>
		<div id="sidebar" class="bg-light">
			<div id="sidebar-field">
				<a href="student.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-user-circle-o"> </i></div>  Student List
				</a>
			</div>
			<div id="sidebar-field">
				<a href="quiz.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-list-alt"> </i></div>  Quiz List
				</a>
			</div>
			<div id="sidebar-field">
				<a href="history.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-database"> </i></div>  Quiz Records
				</a>
			</div>
			<?php else: ?>
				<div id="sidebar" class="bg-light">
			<div id="sidebar-field">
				<a href="home.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-home"> </i></div>  Home
				</a>
			</div>
			<div id="sidebar-field">
				<a href="student_quiz_list.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-list"> </i></div>  Quiz List
				</a>
			</div> 
		<?php endif; ?>

		</div>
			</div>
		<script>
			$(document).ready(function(){
				var loc = window.location.href;
				loc.split('{/}')
				$('#sidebar a').each(function(){
				// console.log(loc.substr(loc.lastIndexOf("/") + 1),$(this).attr('href'))
					if($(this).attr('href') == loc.substr(loc.lastIndexOf("/") + 1)){
						$(this).addClass('active')
					}
				})
			})
			
		</script>
