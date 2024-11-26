<?php
include './connect.php';
$userId=filterRequest("userId");

deleteData("users","user_Id =$userId");


?>