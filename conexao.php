<?php

$host = "localhost";
$db = "starjobs";
$user = "root";
$pass = "";

$mysqli = new mysqli($host,$user,$pass,$db);

// Check connection
if ($mysqli -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
exit();
}

?>