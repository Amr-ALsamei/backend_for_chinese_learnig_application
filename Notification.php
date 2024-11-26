<?php

include './connect.php';
$userId=filterRequest("userId");

getAllData("nnotifications","notifications_userId=$userId ORDER BY notifications_Id DESC");

?>
