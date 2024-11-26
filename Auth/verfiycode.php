<?php

include "../connect.php";

$email=filterRequest("email");
$verfy=filterRequest("verfiycode");

$stmt=$con->prepare("SELECT * FROM users WHERE user_email='$email' AND user_veryfiycode='$verfy' ");

$stmt->execute();
$count=$stmt->rowCount();

if($count>0){
    $data=array(
        "user_aproov"=>"1"
    );

    updateData("users",$data,"user_email='$email'");

}else{
    printFailure("VerfiyCode not Correct");

}

?>