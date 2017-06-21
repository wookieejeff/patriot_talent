<?php


$handle = fopen("units.txt", "r");

$addresses = array();
$residents = array();
if($handle)
{
   while($line = fgets($handle))
   {
      $split = preg_split("/\s+-\s+/", $line);
      array_push($addresses, $split[0]); 
      $residents[$split[0]] = $line;
   }
   sort($addresses, SORT_NATURAL);

   foreach($addresses as $address)
   {
      echo($residents[$address]);
   }
}
else
{
   die("Error opening file");
}

?>
