<?php
session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] != true || !isset($_SESSION['un'])) {
	header("Location: ./login.html"); /* Redirect browser */
	exit();
}
?>