<div class = "navbar-containers"> 
	<div class = "navbar-title">
		 Online Quiz System
	</div>
	<div >
		<a href="logout.php" class="navbar-elements" ><?php echo " <span style='padding-right: 20px'>". $name."</span>"; ?>  Logout <i class="fa fa-power-off navbar-elements" style= "padding-left: 20px;"></i></a>
	</div>
</div>

	<!-- <nav class = "navbar navbar-header navbar-light bg-primary" >
			<div class = "container-fluid">
				<div class = "navbar-header">
					<p class = "navbar-text pull-right text-white"><h3>Simple Online Quiz System</h3></p>
				</div>
				<div class = "nav navbar-nav navbar-right">
					<a href="logout.php" class="text-dark"><?php echo $name ?> <i class="fa fa-power-off"></i></a>
				</div>
			</div>
		</nav> -->
		
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
				<a href="student_quiz_list.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-home"> </i></div>  Home
				</a>
			</div>
			<!-- <div id="sidebar-field">
				<a href="student_quiz_list.php" class="sidebar-item text-dark">
						<div class="sidebar-icon"><i class="fa fa-list"> </i></div>  Quiz List
				</a>
			</div> -->
		<?php endif; ?>

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