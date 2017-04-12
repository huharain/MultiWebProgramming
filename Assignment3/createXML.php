<?php
header("Content-type:text/xml");
header("Access-Control-Allow-Origin: *");

$dbconn = mysqli_connect("localhost", "root", "", "myK");
mysqli_select_db($dbconn, "myK");
$query = mysqli_query($dbconn, "select * from listofgames");

// Create SimpleXMLElement instance.
$xml = new SimpleXMLElement('<list/>');
while ($row = mysqli_fetch_assoc($query)) {
     $product = $xml->addChild("product");
     $product->addChild("gameId", $row["id"]);
     $product->addChild("gametitle", htmlspecialchars($row["title"]));
     $product->addChild("gamepic", htmlspecialchars($row["picture"]));
     $product->addChild("gameprice", $row["gprice"]);
     $product->addChild("discount", $row["discount"]);
}

mysqli_close($dbconn);
echo $xml->asXML();
?>