<?php 
$x = 1;
$max_lines = 5;
  
// print the first list item
echo "<li class=\"collapsed first\"><a href=\"~mark\" rel=\"nofollow\" class=\"facetapi-inactive\" id=\"facetapi-link--56\"> Java Programmes ($x)<span class=\"element-invisible\"> Apply Secondary general education filter ($x)</span></a></li>\n";
$x++;

// print all but the last list item
while($x < $max_lines) {
   echo "<li class=\"collapsed leaf\"><a href=\"~mark\" rel=\"nofollow\" class=\"facetapi-inactive\" id=\"facetapi-link--56\"> Java Programmes ($x)<span class=\"element-invisible\"> Apply Secondary general education filter ($x)</span></a></li>\n";
   $x++;
}

// print the last list item
echo "<li class=\"collapsed last\"><a href=\"~mark\" rel=\"nofollow\" class=\"facetapi-inactive\" id=\"facetapi-link--56\"> Java Programmes ($x)<span class=\"element-invisible\"> Apply Secondary general education filter ($x)</span></a></li>\n";

?>