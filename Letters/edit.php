<?php

include '../connect.php';
$letter=filterRequest("letter");
$mean=filterRequest("mean");
$letterId=filterRequest("letterId");


    $data=array(
        "letter_body"=>$letter,
        "letter_mean"=>$mean,
       
    );

    


updateData("letters",$data,"letter_Id =$letterId");

?>