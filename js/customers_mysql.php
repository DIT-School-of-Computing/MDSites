<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("myServer", "myUser", "myPassword", "Northwind");

$result = $conn->query("SELECT CompanyName, City, Country FROM Customers");

$outp = "[";
    $outp .= '{"Name",';
    $outp .= '"City",';
    $outp .= '"Country"}'; 
}
$outp .="]";

echo($outp);
?>