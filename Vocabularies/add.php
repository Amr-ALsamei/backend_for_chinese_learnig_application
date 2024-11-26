<?php
include '../connect.php';

$vocabulary=filterRequest("vocabulary");

$data=array(
    "vocabulary_body"=>$vocabulary,
    
);

insertData("vocabularies",$data);
?>