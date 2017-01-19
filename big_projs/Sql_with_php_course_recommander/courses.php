<?php
require('loginCheck.php');

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());
$query = "SELECT * FROM \"courses\" ORDER BY dept_code, course_number;";
$result = pg_query($query) or die('Query failed: ' . pg_last_error());

pg_query("CREATE TABLE IF NOT EXISTS taken_courses(username TEXT, course_id INTEGER REFERENCES courses(course_id), CONSTRAINT taken_courses_fkey FOREIGN KEY (username) REFERENCES students(username) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE);") or die('Query failed: ' . pg_last_error());
$query2 = "SELECT * FROM taken_courses, courses WHERE taken_courses.course_id=courses.course_id AND username='{$_SESSION['un']}' ORDER BY dept_code, course_number;";
$result2 = pg_query($query2) or die('Query failed: ' . pg_last_error());
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
			<h1>Courses Taken</h1>
			<p>Welcome! To start, Please select the courses you have taken so far</p>
			<span class=red>+ Add Course </span>
			<select id=add-course class=spinner onchange="addCourse(this)">
				<option value="none">Select Course</option>
				<?php
					while($row=pg_fetch_array($result)) {
						echo "<option value='{$row['course_id']}'>{$row['dept_code']}{$row['course_number']}</option>";
					}
				?>
			</select>
			<div id=course-container>
				<?php
					while($row=pg_fetch_array($result2)) {
						echo "<div class=half-entry>".$row['dept_code'].$row['course_number']."<span class=meta>".$row['course_id']."</span><span class=entry-cross onclick=\"deleteCourse(this.parentElement)\">&times;</span></div>";
					}
				?>
			</div>
			<div class=btn-container>
				<div onclick="submitCourses()" class="next primary-btn">Next</div>
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
	<script type="text/javascript"></script>
</body>

</html>

<?php
	pg_free_result($result);
	pg_close($dbconn);
?>