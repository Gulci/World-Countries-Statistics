<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>World Countries Statistics</title>
    <link rel="stylesheet" href="../css/foundation.css" />
	<link rel="stylesheet" href="./css/relations.css" />
    <script src="../js/vendor/modernizr.js"></script>
  </head>
  <body>
  
  <nav class="top-bar" data-topbar role="navigation">
	  <ul class="title-area">
		<li class="name">
		  <h1><a href="http://standb.x10host.com/">World Countries Statistics</a></h1>
		</li>
		 <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
		<li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
	  </ul>

	  <section class="top-bar-section">
		<!-- Right Nav Section -->
		

		<!-- Left Nav Section -->
		
	  </section>
	</nav>
	
	<section class="relationTable">
	<table class="relation">

    <thead>
    <tr>
    <th scope="column" width="35">Country ID (int)</th>
    <th scope="column" width="75">Continent (char)</th>
    </tr>
    </thead>

    <tbody>

<?php

$mysqli = new mysqli("localhost", "standbx1", "entityrelational", "standbx1_bgarza");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$sql = "SELECT * FROM locatedInContinent ORDER BY countryID";
$result = $mysqli->query($sql);

// http://php.net/manual/en/mysqli-result.fetch-array.php for reference
while(($row = $result->fetch_array(MYSQL_ASSOC))) {

	echo "<tr>";
		echo "<td><span class='round label'>" . $row['countryID'] . "</span></td>";
		echo "<td><span class='round label'>" . $row['continentName']."</span></td>";
		
}

?>

	</section>

	<script src="../js/vendor/jquery.js"></script>
    <script src="../js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>