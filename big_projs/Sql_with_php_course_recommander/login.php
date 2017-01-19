<?php
if (isset($_GET['logout'])) {
	session_start();
    session_unset();
    session_destroy();
    exit();
}
if (!isset($_POST['un']) || $_POST['un']=="" || !isset($_POST['pw'])) {
	echo 'false';
	exit();
}
$un = $_POST['un'];
$pw = $_POST['pw'];

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());

$query = "SELECT students.username, password FROM students LEFT JOIN users ON students.username = users.username WHERE students.username='$un';";
$result = pg_query($query) or die('Query failed: ' . pg_last_error());
$realPw = pg_fetch_array($result)['password'];

if (!$realPw || $realPw==$pw) {
	session_start();
	$_SESSION['loggedin'] = true;
	$_SESSION['un'] = $un;
	echo 'true';
	return;
}

echo 'false';

?>