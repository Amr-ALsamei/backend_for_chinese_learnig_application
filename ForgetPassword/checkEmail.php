<?php 


include '../connect.php';

$email=filterRequest("email");
$verfiycode=rand(10000,99999);

$stmt=$con->prepare("SELECT * FROM users WHERE user_email=? ");
$stmt->execute(array($email));
$count=$stmt->rowCount();

Result($count);

if($count>0){
    $data=array(
    "user_veryfiycode"=>$verfiycode,
    );
    updateData("users",$data,"user_email='$email'",false);
   
    SendEmail($email,"Chinese language App","Verfiy Code  $verfiycode");
}



?>

