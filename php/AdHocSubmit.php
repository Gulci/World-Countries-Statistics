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
	
	<div class="large-12 columns">
	
	<p><strong>Original Query:</strong><br>
	<textarea readonly><?php echo $_POST['query'];?></textarea></p>
	
	<p><strong>Results:</strong><br>

<?php

$mysqli = new mysqli("localhost", "standbx1", "entityrelational", "standbx1_bgarza");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$sql = $_POST['query'];
$result = $mysqli->query($sql);

if (!$result) {
	echo "There was an error with your query: <br><br>";
	printf($mysqli->error);
	die;
}

//converts type number to human readable text
//credit to: http://php.net/manual/en/mysqli-result.fetch-fields.php
function h_type2txt($type_id)
{
    static $types;

    if (!isset($types))
    {
        $types = array();
        $constants = get_defined_constants(true);
        foreach ($constants['mysqli'] as $c => $n) if (preg_match('/^MYSQLI_TYPE_(.*)/', $c, $m)) $types[$n] = $m[1];
    }

    return array_key_exists($type_id, $types)? $types[$type_id] : NULL;
}

if ($mysqli->field_count > 0) {

$fields = $result->fetch_fields();
//gets field info to populate table head

echo '<table class="results"><thead><tr>';

foreach ($fields as $val){
	echo '<th scope="column">'; 
	printf($val->name);
	echo ' (';
	printf(h_type2txt($val->type));
	echo ')';
	echo '</th>';
}

echo "</tr></thead>";

while(($row = $result->fetch_row())) {
	
	$NumPerRow = count($row);
	
	echo "<tr>";
	for ($i=0;$i<$NumPerRow;$i++){
		echo "<td>";
		printf($row[$i]);
		echo "</td>";
	}
	
}

} else { echo "The query was completed successfully. Result: "; echo $result; }

?>

	</p>
	</div>

	<script src="../js/vendor/jquery.js"></script>
    <script src="../js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>