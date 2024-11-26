<?php 
include '../connect.php';

$username=filterRequest("username");
$password=sha1($_POST["password"]);
$email=filterRequest("email");
$phone=filterRequest("phone");
$verfiycode=rand(10000,99999);

$stmt=$con->prepare("SELECT * FROM users WHERE user_email=? OR user_phone=?");
$stmt->execute(array($email,$phone));
$count=$stmt->rowCount();
if($count>0){
    printFailure("phone OR Email");
}else{
   $data=array(
    "user_Name"=>$username,
    "user_email"=>$email,
    "user_password"=>$password,
    "user_phone"=>$phone,
    "user_veryfiycode"=>$verfiycode,
    
   );
//    SendEmail($email,"Chinese language App","Verfiy Code  $verfiycode");
   insertData("users",$data);

}


?>