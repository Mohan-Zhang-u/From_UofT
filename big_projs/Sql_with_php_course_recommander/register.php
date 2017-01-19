<?php

if (!isset($_POST['un']) || $_POST['un']=="") {
	echo 'Username is empty';
	exit();
}

function nullCheck($str, $quote) {
	$quote = isset($quote)? $quote:"";
	return (empty($str)? "NULL": $quote.$str.$quote);
}

$un = $_POST['un'];
$pw = isset($_POST['pw'])? $_POST['pw']:'';
$age = isset($_POST['age'])? $_POST['age']:'';
$gender = isset($_POST['gender'])? $_POST['gender']:'';
$cty = isset($_POST['cty'])? $_POST['cty']:'';

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());

pg_query(
	"CREATE TABLE IF NOT EXISTS users(
		username text NOT NULL,
    	password text NOT NULL,
    	CONSTRAINT users_username_fkey FOREIGN KEY (username)
        REFERENCES students(username) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
    	)"
    ) or die("Could not init user table\n");

pg_query("BEGIN") or die("Could not start transaction\n");
pg_query("INSERT INTO students VALUES ('$un',1,".nullCheck($age, "").",".nullCheck($gender, "'").",".nullCheck($cty,"'").");") or die('Username occupied');
$result = pg_query("INSERT INTO users VALUES ('$un', '$pw');") or die('Query failed: ' . pg_last_error());
pg_query("COMMIT") or die("Could not start transaction\n");

if (pg_affected_rows($result)!=0) {
	echo 'true';
	return;
}

echo 'Error encountered. Please try again';

?>