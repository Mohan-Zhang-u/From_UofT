<?php
require('loginCheck.php');

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());
$query = "SELECT * FROM departments ORDER BY dept_name;";
$result = pg_query($query) or die('Query failed: ' . pg_last_error());

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
			<h1>Your Experience</h1>
			<p>Please fill in information based on your previous course experience. The information you provide will be kept confidential. Rate/Rank are of 1-5 (with 5 the highest)</p>
			<span class=red>+ Add Existing Course </span>
			<select id=departments class=spinner onchange="deptChange(this, 'course')">
				<option value="*">All Departments</option>
				<?php
					while($row=pg_fetch_array($result)) {
						echo "<option value='{$row['dept_code']}'>{$row['dept_name']}</option>";
					}
				?>
			</select>
			<select id=course class=spinner onchange="addContribute(this)">
				<?php
					$dept = '*';
					include("courseSpinner.php");
				?>
			</select><br>
			<span class=red>+ Or Write Your Own </span><input type=text class="spinner cown" placeholder="e.g. ANT100">
				<span class="entry-btn add" onclick="addContribute(this.previousElementSibling, true)">+</span>
			<div id=contribute-container></div>
			<span id=noti>Please fill in all required fields.</span>
			
			<div class=btn-container>
				<a href="finally.php" class="back secondary-btn">Cancel</a>
				<div onclick="submitContribute()" class="next primary-btn">Submit</div>
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
	<script type="text/javascript">
	var mapping={};
	var grades = [];
	<?php
	// Give JS necessary lookup library.
		$depts = pg_query("SELECT * FROM departments") or die('Query failed: ' . pg_last_error());
		while ($row = pg_fetch_array($depts)) {
			echo "mapping['".$row['dept_code']."'] = '".$row['dept_name']."';";
		}
		$courses = pg_query("SELECT * FROM courses") or die('Query failed: ' . pg_last_error());
		while ($row = pg_fetch_array($courses)) {
			echo "mapping['".$row['dept_code'].$row['course_number']."'] = [".$row['course_id'].",'".$row['course_name']."'];";
		}
		$grades = pg_query("SELECT letter_grade FROM letter_grades;");
		while ($row = pg_fetch_array($grades)) {
			echo "grades.push('".$row['letter_grade']."');";
		}
	?>
		
	</script>
</body>

</html>