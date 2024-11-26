<?php

include '../connect.php';
$sentence=filterRequest("sentence");
$sentenceId=filterRequest("sentenceId");







    $data=array(
        "sentence_body"=>$sentence,
       
    );

    


updateData("sentences",$data,"sentence_Id =$sentenceId");

?>