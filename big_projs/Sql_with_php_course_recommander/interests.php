<?php
require('loginCheck.php');

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());
$query = "SELECT * FROM departments ORDER BY dept_name;";
$result = pg_query($query) or die('Query failed: ' . pg_last_error());

pg_query("CREATE TABLE IF NOT EXISTS interested_in_topics(
			username TEXT, 
			dept_code TEXT REFERENCES departments(dept_code),
			topic_id INTEGER REFERENCES topics(topic_id),
			rank INTEGER CHECK ((rank >= 1 AND rank <=5) OR rank = NULL), 
			CONSTRAINT interested_in_topics_fkey FOREIGN KEY (username) REFERENCES students(username) MATCH SIMPLE 
				ON UPDATE CASCADE 
				ON DELETE CASCADE
		);") or die('Query failed: ' . pg_last_error());

$query2 = "SELECT DISTINCT topics.topic_id, topics.topic, departments.dept_code, departments.dept_name, rank FROM interested_in_topics, topics, departments 
		WHERE interested_in_topics.topic_id=topics.topic_id AND interested_in_topics.username='{$_SESSION['un']}' AND interested_in_topics.dept_code=departments.dept_code
		ORDER BY departments.dept_name, topics.topic;";
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
			<h1>Interests</h1>
			<p>Please select the topics you are interested in</p>
			<span class=red>+ Add Interest </span>
			<select id=departments class=spinner onchange="deptChange(this, 'interests')">
				<option value="none">Select Department</option>
				<?php
					while($row=pg_fetch_array($result)) {
						echo "<option value='{$row['dept_code']}'>{$row['dept_name']}</option>";
					}
				?>
			</select>
			<select id=interests class=spinner onchange="addInterest(this, 'interest-container', true)">
				<option value="none">Select Interest</option>
			</select>
			<div id=interest-container>
				<?php

					$dept = "";
					$preenter = "";

					while($row=pg_fetch_array($result2)) {
						if ($row['dept_code'] != $dept) {
							$preenter.= "</div></div><div class=entry><span class=entry-name>".$row['dept_name']."</span><span class=meta>".$row['dept_code']."</span><span class=entry-btn onclick=\"toggleDepartment(this)\">+</span><div>";
							$dept = $row['dept_code'];
						}
						$preenter.= "<div class=half-entry>".$row['topic']."<span class=meta>".$row['topic_id']."</span><span class=entry-cross onclick=\"deleteInterest(this.parentElement)\">&times;</span>";
						$preenter .= "<div class=counter><span onclick=\"counter(this)\">+</span><span>".$row['rank']."</span><span onclick=\"counter(this)\">-</span></div></div>";
					}
					if ($preenter!="") {
						echo substr($preenter, 12)."</div></div>";
					}
					
				?>
			</div>
			<div class=btn-container>
				<a href="courses.php" class="back secondary-btn">Back</a>
				<div onclick="submitInterests()" class="next primary-btn">Next</div>
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