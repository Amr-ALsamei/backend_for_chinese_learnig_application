<?php

include '../connect.php';

$sentence=filterRequest("sentence");

$data=array(
    "sentence_body"=>$sentence,
    
);

insertData("sentences",$data);
?>