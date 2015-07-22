<?php
// Mark Deegan
// 21 July 2015 16:43:35 IST
// PHP script to list the entries returned as facet categories
// mock-up at this stage

$argument1 = $_GET['arg1'];

$x = 1;
$max_lines = $_GET['arg2'];;

include './linkGeneration.php';
  
// print the first list item
echo "$firstPreamble$argument1 rel=\"nofollow\" class=\"facetapi-inactive\" id=\"facetapi-link--56\"> Java Programmes ($x)<span class=\"element-invisible\"> Apply Java Programmes ($x) filter</span></a></li>\n";
$x++;

// print all but the last list item
while($x < $max_lines) {
   echo "$generalPreamble$argument1 rel=\"nofollow\" class=\"facetapi-inactive\" id=\"facetapi-link--56\"> Java Programmes ($x)<span class=\"element-invisible\"> Apply Java Programmes ($x) filter</span></a></li>\n";
   $x++;
}

// print the last list item
echo "$lastPreamble$argument1 rel=\"nofollow\" class=\"facetapi-inactive\" id=\"facetapi-link--56\"> Java Programmes ($x)<span class=\"element-invisible\"> Apply Java Programmes ($x)</span></a></li>\n";

?>