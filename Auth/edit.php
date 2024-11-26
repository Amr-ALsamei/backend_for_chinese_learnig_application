<?php 
include '../connect.php';

$username=filterRequest("username");

$userid=filterRequest("userid");

$stmt=$con->prepare("SELECT * FROM users WHERE  user_Id=?");
$stmt->execute(array($userid));
$count=$stmt->rowCount();
if($count>0){
    
   $data=array(
    "user_Name"=>$username,
    
   );
 updateData("users",$data,"user_Id=$userid");
   
}


?>