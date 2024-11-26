<?php

include '../connect.php';
$vocabulary=filterRequest("vocabulary");
$vocabularyId=filterRequest("vocabularyId");

 $data=array(
        "vocabulary_body"=>$vocabulary,
       
    );

    

updateData("vocabularies",$data,"vocabulary_Id=$vocabularyId");

?>