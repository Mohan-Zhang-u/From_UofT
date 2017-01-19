<?php
require('loginCheck.php');

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());
$query = "SELECT * FROM departments ORDER BY dept_name;";
$result = pg_query($query) or die('Query failed: ' . pg_last_error());

pg_query("CREATE TABLE IF NOT EXISTS user_skills(
			username TEXT, 
			dept_code TEXT REFERENCES departments(dept_code),
			skill_id INTEGER REFERENCES skills(skill_id),
			rank INTEGER CHECK ((rank >= 1 AND rank <=5) OR rank = NULL), 
			CONSTRAINT user_skills_fkey FOREIGN KEY (username) REFERENCES students(username) MATCH SIMPLE 
				ON UPDATE CASCADE 
				ON DELETE CASCADE
		);") or die('Query failed: ' . pg_last_error());

$query2 = "SELECT DISTINCT skills.skill_id, skills.skill, departments.dept_code, departments.dept_name, rank 
		FROM user_skills, skills, departments 
		WHERE user_skills.skill_id=skills.skill_id AND user_skills.username='{$_SESSION['un']}' AND user_skills.dept_code=departments.dept_code
		ORDER BY departments.dept_name, skills.skill;";
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
			<h1>Skills</h1>
			<p>Please select the skills you own and rate them in a scale of 1-5 (with 5 the highest)</p>
			<span class=red>+ Add Skill </span>
			<select id=departments class=spinner onchange="deptChange(this, 'skills')">
				<option value="none">Select Department</option>
				<?php
					while($row=pg_fetch_array($result)) {
						echo "<option value='{$row['dept_code']}'>{$row['dept_name']}</option>";
					}
				?>
			</select>
			<select id=skills class=spinner onchange="addInterest(this, 'skill-container', true)">
				<option value="none">Select Skill</option>
				<option value="Python">Python</option>
				<option value="Logic Analysis">Logic Analysis</option>
			</select>
			<div id=skill-container>
				<?php

					$dept = "";
					$preenter = "";

					while($row=pg_fetch_array($result2)) {
						if ($row['dept_code'] != $dept) {
							$preenter.= "</div></div><div class=entry><span class=entry-name>".$row['dept_name']."</span><span class=meta>".$row['dept_code']."</span><span class=entry-btn onclick=\"toggleDepartment(this)\">+</span><div>";
							$dept = $row['dept_code'];
						}
						$preenter.= "<div class=half-entry>".$row['skill']."<span class=meta>".$row['skill_id']."</span><span class=entry-cross onclick=\"deleteInterest(this.parentElement)\">&times;</span>";
						$preenter .= "<div class=counter><span onclick=\"counter(this)\">+</span><span>".$row['rank']."</span><span onclick=\"counter(this)\">-</span></div></div>";
					}
					if ($preenter!="") {
						echo substr($preenter, 12)."</div></div>";
					}
					
				?>
			</div>
			<div class=btn-container>
				<a href="interests.php" class="back secondary-btn">Back</a>
				<div onclick="submitSkills()" class="next primary-btn">Next</div>
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

<?php
	pg_free_result($result);
	pg_close($dbconn);
?>