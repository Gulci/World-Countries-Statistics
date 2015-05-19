<?php

$mysqli = new mysqli("localhost", "standbx1", "entityrelational", "standbx1_bgarza");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$sql = "SELECT * FROM country ORDER BY countryID";
$result = $mysqli->query($sql);

//http://php.net/manual/en/mysqli-result.fetch-array.php
while(($row = $result->fetch_array(MYSQL_ASSOC))) {

	echo $row["countryID"];

}

?>