<?php



$dom = new DOMDocument("1.0");
$node = $dom->createElement("markers");
$parnode = $dom->appendChild($node);

// $connection=mysql_connect ('localhost', $username, $password);
// if (!$connection) {  die('Not connected : ' . mysql_error());}
//
// $db_selected = mysql_select_db($database, $connection);
// if (!$db_selected) {
//   die ('Can\'t use db : ' . mysql_error());
// }
  require ("./modele/connectBD.php");
$query = "SELECT * FROM annonce;
$result = mysql_query($query);
if (!$result) {
  die('Invalid query: ' . mysql_error());
}

header("Content-type: text/xml");

while ($row = @mysql_fetch_assoc($result)){
  $node = $dom->createElement("marker");
  $newnode = $parnode->appendChild($node);
  $newnode->setAttribute("name",$row['NomAnnonce']);
  $newnode->setAttribute("address", $row['AdrAnnonce']);
  $newnode->setAttribute("lat", $row['Latitude']);
  $newnode->setAttribute("lng", $row['Longitude']);
  $newnode->setAttribute("type", $row['IdCategorie']);
}

echo $dom->saveXML();
