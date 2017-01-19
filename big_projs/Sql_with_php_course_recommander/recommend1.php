<?php
require('loginCheck.php');

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());

// Prepare tables/views
pg_query("CREATE TABLE IF NOT EXISTS topsimilar (username TEXT REFERENCES students(username), distance NUMERIC);") or die('Query failed: ' . pg_last_error());
pg_query("DELETE FROM topsimilar;") or die('Query failed: ' . pg_last_error());
pg_query("CREATE OR REPLACE VIEW stud_interest_skill AS 
		SELECT students.username, 
			string_agg(DISTINCT topic_interests.topic_id:: character varying || '-' || topic_interests.interest_before :: character varying  , '|') AS topic,
			string_agg(DISTINCT skill_rankings.skill_id:: character varying || '-' || skill_rankings.rank_before :: character varying  , '|') AS skill
		FROM students LEFT JOIN topic_interests ON students.username = topic_interests.username LEFT JOIN skill_rankings ON students.username = skill_rankings.username
		GROUP BY students.username
		ORDER BY students.username;") or die('Query failed: ' . pg_last_error());

// Get all user data
$user_row = pg_query("SELECT students.username, students.age, students.gender, students.native_country,
			string_agg(DISTINCT interested_in_topics.topic_id:: character varying || '-' || interested_in_topics.rank :: character varying  , '|') AS topic,
			string_agg(DISTINCT user_skills.skill_id:: character varying || '-' || user_skills.rank :: character varying  , '|') AS skill
		FROM students LEFT JOIN interested_in_topics ON students.username = interested_in_topics.username LEFT JOIN user_skills ON students.username = user_skills.username
		WHERE students.username='".$_SESSION['un']."'
		GROUP BY students.username
		ORDER BY students.username;") or die('Query failed: ' . pg_last_error());
$all_user_rows = pg_query("SELECT * FROM students, stud_interest_skill WHERE students.username = stud_interest_skill.username AND students.username<>'".$_SESSION['un']."';") or die('Query failed: ' . pg_last_error());
$average_demo = pg_query("SELECT avg(age) AS age, avg(CASE WHEN gender='f' THEN 0 ELSE (CASE WHEN gender='m' THEN 1 ELSE 0.5 END) END) AS gender FROM students;");
$user_data = pg_fetch_array($user_row);
$average = pg_fetch_array($average_demo);

// insert distances
pg_query("BEGIN");
while ($one_user_data = pg_fetch_array($all_user_rows)) {
	$dist = 0;

	// Age
	// If not exist replace with avg, take difference squared.
	$user_age = $user_data['age']?: $average['age'];
	$one_user_age = $one_user_data['age']?: $average['age'];
	$dist += pow($user_age-$one_user_age, 2);

	// Gender
	// If male then 1 if female then 0 else replace with avg, take difference squared.
	switch ($user_data['gender']) {
		case 'm':$user_gender = 1;break;
		case 'f':$user_gender = 0;break;
		default:$user_gender = $average['gender'];
	}
	switch ($one_user_data['gender']) {
		case 'm':$one_user_gender = 1;break;
		case 'f':$one_user_gender = 0;break;
		default:$one_user_gender = $average['gender'];
	}
	$dist+=pow($user_gender-$one_user_gender, 2);

	// Country
	// if match (case insensitive) then 0 else 1
	$dist+= strcasecmp ($user_data['native_country'],$one_user_data['native_country'])==0? 0:1;

	// Topics
	// foreach active user topic if also found in one user then take difference squared else 5 squared, take average
	$one_user_topic = [];
	foreach (explode('|', $one_user_data['topic']?:'') as $topic) {
		if ($topic=='') continue;
		$topicx = explode('-', $topic);
		if ($topicx=='') continue;
		$one_user_topic[$topicx[0]] = intval($topicx[1]);
	}
	$counter = 0;
	$diff = 0;
	foreach (explode('|', $user_data['topic']?:'') as $topic) {
		if ($topic=='') continue;
		$topicy = explode('-', $topic);
		if ($topicy=='') continue;
		$diff+= pow(array_key_exists($topicy[0], $one_user_topic)? intval($topicy[1]) - $one_user_topic[$topicy[0]] : 5, 2);
		$counter++;
	}
	$dist +=$diff/max(1, $counter);

	// Skills
	// foreach active user skill if also found in one user then take difference squared else 5 squared, take average
	$one_user_skill = [];
	foreach (explode('|', $one_user_data['skill']?:'') as $skill) {
		if ($skill=='') continue;
		$skillx = explode('-', $skill);
		if ($skillx=='') continue;
		$one_user_skill[$skillx[0]] = intval($skillx[1]);
	}
	$counter = 0;
	$diff = 0;
	foreach (explode('|', $user_data['skill']?:'') as $skill) {
		if ($skill=='') continue;
		$skilly = explode('-', $skill);
		if ($skilly=='') continue;
		$diff+= pow(array_key_exists($skilly[0], $one_user_skill)? intval($skilly[1]) - $one_user_skill[$skilly[0]] : 5, 2);
		$counter++;
	}
	$dist +=$diff/max(1, $counter);

	pg_query("INSERT INTO topsimilar VALUES('".$one_user_data['username']."', ".$dist.");") or die('Query failed: ' . pg_last_error());
}
pg_query("COMMIT");
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
			<h1>Recommendations</h1>
			<p>Please select how we can recommend courses to you. You want courses that...</p>
			<div class=large-container>
				<a href="recommend2.php?mode=grade" class="half-entry primary-btn">Have Best Predicted Grades</a>
				<a href="recommend2.php?mode=interest" class="half-entry primary-btn">Promote Your Interests</a>
				<a href="recommend2.php?mode=skill" class="half-entry primary-btn">Improve Your Skills</a>
				<a href="recommend2.php?mode=happy" class="half-entry primary-btn">Make You Happy</a>
			</div>
			<div class=btn-container>
				<a href="skills.php" class="back secondary-btn">Back</a>
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
	pg_close($dbconn);
?>