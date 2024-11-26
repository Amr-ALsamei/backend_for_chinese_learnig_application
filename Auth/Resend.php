<?php

include "../connect.php";

$email=filterRequest("email");
$verfiycode=rand(10000,99999);
 $data=array(
    "user_veryfiycode"=>$verfiycode
 );
updateData("users",$data,"user_email ='$email'");
   SendEmail($email,"Verfiy Code Chinese App","Verfiy Code  $verfiycode");

// printSuccess();
?><?php

include "../connect.php";

$email=filterRequest("email");
$verfiycode=rand(10000,99999);
 $data=array(
    "user_veryfiycode"=>$verfiycode
 );
updateData("users",$data,"user_email ='$email'");
   SendEmail($email,"Verfiy Code Chinese App","Verfiy Code  $verfiycode");

// printSuccess();
?>