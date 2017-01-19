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

$query = "SELECT DISTINCT topics.topic_id, topics.topic
		FROM courses, course_topics, topics 
		WHERE topics.topic_id = course_topics.topic_id AND courses.course_id=course_topics.course_id AND courses.dept_code='{$dept}'
		ORDER BY topics.topic;";
$result = pg_query($query) or die('Query failed: ' . pg_last_error());

echo "<option value=\"none\">Select Interest</option>";
while($row=pg_fetch_array($result)) {
	echo "<option value='{$row['topic_id']}'>{$row['topic']}</option>";
}

if ($standalone) {
	pg_free_result($result);
	pg_close($dbconn);
}

?>