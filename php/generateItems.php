<?php
// Mark Deegan
// 21 July 2015 16:43:35 IST
// PHP script to list the entries returned as facet categories
// mock-up at this stage

$linkDestination = $_GET['arg1'];

$x = 1;
$max_lines = $_GET['arg2'];

include './linkGeneration.php';
  
// print the first list item
echo "$firstPreamble$linkDestination $listItemOptions Java Programmes ($x)$commonTailPreamble Apply Java Programmes ($x) $commonLinkTail\n";
$x++;

// print all but the last list item
while($x < $max_lines) {
   echo "$generalPreamble$linkDestination $listItemOptions Java Programmes ($x)$commonTailPreamble Apply Java Programmes ($x) $commonLinkTail\n";
   $x++;
}

// print the last list item
echo "$lastPreamble$linkDestination $listItemOptions Java Programmes ($x)$commonTailPreamble Apply Java Programmes ($x) $commonLinkTail\n";

?>