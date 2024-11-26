<?php 


include '../connect.php';



$email=filterRequest("email");
$password=sha1($_POST["password"]);



// $stmt=$con->prepare("SELECT * FROM users WHERE user_email='$email' AND user_password='$password'");
// $stmt->execute();
// $count=$stmt->rowCount();
// Result($count);

getData("users","user_email=? AND user_password=?",array($email,$password));

?>

