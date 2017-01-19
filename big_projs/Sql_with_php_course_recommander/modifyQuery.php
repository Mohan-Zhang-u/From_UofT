<?php
require('loginCheck.php');

// Executes insert/update query sent from js. 
$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());
if (!isset($query)) {
	$query = explode(";", str_replace("<><un><>", $_SESSION['un'], $_POST['query']));
}

pg_query("BEGIN") or die("Could not start transaction\n");
$affected = 0;
foreach ($query as $q) {
	if (!$q == "") {
		$result = pg_query($q.";") or die('Query failed: ' . pg_last_error());
		$affected += pg_affected_rows($result);
	}
}
pg_query("COMMIT") or die("Transaction commit failed\n");

echo $affected;
pg_free_result($result);
pg_close($dbconn);
?>