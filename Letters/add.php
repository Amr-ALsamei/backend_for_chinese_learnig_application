<?php

include '../connect.php';

$letter=filterRequest("letter");
$mean=filterRequest("mean");

$data=array(
    "letter_body"=>$letter,
    "letter_mean"=>$mean,
    
);

insertData("letters",$data);
?>