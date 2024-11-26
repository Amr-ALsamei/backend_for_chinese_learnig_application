<?php

include "../connect.php";

$email=filterRequest("email");
$verfy=filterRequest("verfiycode");

$stmt=$con->prepare("SELECT * FROM users WHERE user_email='$email' AND user_veryfiycode='$verfy' ");

$stmt->execute();
$count=$stmt->rowCount();

Result($count);

?><?php

include "../connect.php";

$email=filterRequest("email");
$verfy=filterRequest("verfiycode");

$stmt=$con->prepare("SELECT * FROM users WHERE user_email='$email' AND user_veryfiycode='$verfy' ");

$stmt->execute();
$count=$stmt->rowCount();

Result($count);

?>