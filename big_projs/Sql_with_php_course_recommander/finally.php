<?php
require('loginCheck.php');
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  	<meta content='width=device-width, initial-scale=1.0' name='viewport' />
  	<link rel="stylesheet" type="text/css" href="./bootstrap-min-min.css">
	<link rel="stylesheet" type="text/css" href="./theme.css">
	<script src="./scripts.js" type="text/javascript"></script>
</head>

<body>
	<div id=header>
		<div class=container>
			<div id=logo></div>
			<span onclick="logout()" class=primary-btn>Log Out</span>
		</div>
	</div>
	<div class=card>
		<div class=container>
			<h1>Next Up</h1>
			<p>How can we help you with next?</p>
			<div class=large-container>
				<a href="recommend1.php" class="half-entry primary-btn">Other Recommend Options</a>
				<a href="courses.php" class="half-entry primary-btn">Start Over</a>
			</div>
		</div>
	</div>
	<div class=banner>
		<h2>Wanna Help Us?</h2>
		<p>You can help by simply entering your course experiences!</p>
		<a href='contribute1.php' class=primary-btn>Take Me There!</a>
	</div>
<!-- 		<div class=banner>
		<h2>How Did we do?</h2>
	</div> -->
	<div class=footer>
		CSC343 Course Assignment<br>
		Dr. Marina Barsky<br>
		<br>
		Made By<br>
		Mohan Zhang &amp; Yanming Mai<br>
		<br>
		2016 Summer
	</div>
	<script type="text/javascript">initMain()</script>
</body>

</html>