<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");


$outp = "";
		$outp .= '{"Name",';
		$outp .= '"City",';
		$outp .= '"Country"}'; 
	}
$outp ='{"records":['.$outp.']}';

echo($outp);
?>
