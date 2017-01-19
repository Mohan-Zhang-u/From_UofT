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


$query = "SELECT DISTINCT course_id, course_number, dept_code
		FROM courses ".
		($dept == '*'? "":"WHERE dept_code = '{$dept}' ")
		."ORDER BY dept_code, course_number;";
$result = pg_query($query) or die('Query failed: ' . pg_last_error());

echo "<option value=\"none\">Select Course</option>";
while($row=pg_fetch_array($result)) {
	echo "<option value='{$row['course_id']}'>{$row['dept_code']}{$row['course_number']}</option>";
}

if ($standalone) {
	pg_free_result($result);
	pg_close($dbconn);
}

?>