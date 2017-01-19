<?php

if (!isset($dept)) {
	if (!isset($_GET['dept'])) {
		exit();
	}
	$dept=$_GET['dept'];
}

$standalone = false;
if (!isset($dbconn)) {
	$standalone = true;
	$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());
}

$query = "SELECT DISTINCT skills.skill_id, skills.skill
		FROM courses, course_skills, skills
		WHERE skills.skill_id=course_skills.skill_id AND courses.course_id=course_skills.course_id AND courses.dept_code = '{$dept}'
		ORDER BY skills.skill;";
$result = pg_query($query) or die('Query failed: ' . pg_last_error());

echo "<option value=\"none\">Select Skill</option>";
while($row=pg_fetch_array($result)) {
	echo "<option value='{$row['skill_id']}'>{$row['skill']}</option>";
}

if ($standalone) {
	pg_free_result($result);
	pg_close($dbconn);
}

?>