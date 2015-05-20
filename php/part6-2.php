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
<th scope="column" width="75"><b>--------------------</b></th>
    </tr>
    <tr>
    <th scope="column" width="75">Original SQL Query</th>
    </tr>
    <tr>
<th scope="column" width="75"><b>--------------------</b></th>
    </tr>
    <tr>
	<td>SELECT majorCity.name<br>
	FROM majorCity<br>
	WHERE majorCity.majorCityID IN <br>
	&nbsp&nbsp&nbsp(SELECT capital.capitalID<br>
     &nbsp&nbsp&nbspFROM capital<br>
     &nbsp&nbsp&nbspWHERE capital.capitalID IN<br> 
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp ( SELECT isCapitalOf.capitalID<br>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbspFROM isCapitalOf <br>
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbspWHERE isCapitalOf.countryID IN <br>
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	( SELECT participatesIn.countryID <br>
        	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  FROM participatesIn <br>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  WHERE participatesIn.organizationID IN <br>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	( SELECT organization.organizationID <br>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp      FROM organization <br>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   WHERE organization.name = 'North Atlantic Treaty Organization' <br>
			&nbsp&nbsp&nbsp)&nbsp&nbsp&nbsp)&nbsp&nbsp&nbsp)<br>
GROUP BY name<br>
ORDER BY name ASC<br>
)</td>	
<tr>
<th scope="column" width="75"><b>--------------------</b></th>
    </tr>    
    <tr>
<th scope="column" width="75"><b>QUERY RESULTS:</b></th>
    </tr>	
    <tr>
<th scope="column" width="75"><b>--------------------</b></th>
    </tr>	
    <tr>
    <th scope="column" width="75">Name</th>
    </tr>
    </thead>

    <tbody>

<?php

$mysqli = new mysqli("localhost", "standbx1", "entityrelational", "standbx1_bgarza");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$sql = "SELECT majorCity.name
FROM majorCity
WHERE majorCity.majorCityID IN 
	(SELECT capital.capitalID
     FROM capital
     WHERE capital.capitalID IN 
       ( SELECT isCapitalOf.capitalID
         FROM isCapitalOf
         WHERE isCapitalOf.countryID IN 
         	( SELECT participatesIn.countryID
        	  FROM participatesIn
              WHERE participatesIn.organizationID IN 
              	( SELECT organization.organizationID
                  FROM organization
                  WHERE organization.name = 'North Atlantic Treaty Organization'
                  )))
GROUP BY name
ORDER BY name ASC
)";
$result = $mysqli->query($sql);

// http://php.net/manual/en/mysqli-result.fetch-array.php for reference
while(($row = $result->fetch_array(MYSQL_ASSOC))) {

	echo "<tr>";
		echo "<td><span class='round label'>" . $row['name'] . "</span></td>";
		
		
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