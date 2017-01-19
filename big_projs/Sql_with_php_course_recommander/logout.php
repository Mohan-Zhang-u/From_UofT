<?php
session_start();
$_SESSION['loggedin'] = true;
$_SESSION['un'] = $un;
echo 'true';
?>