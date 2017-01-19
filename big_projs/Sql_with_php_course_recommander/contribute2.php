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
			<h1>Submitted</h1>
			<p>Thank you! The information has been successfully recorded</p>
			<div class=large-container>
				<a href="./contribute1.php" class="half-entry primary-btn">Enter Another One</a>
			</div>
			<div class=btn-container>
				<a href="./finally.php" class="next primary-btn">Done</a>
			</div>
		</div>
	</div>
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