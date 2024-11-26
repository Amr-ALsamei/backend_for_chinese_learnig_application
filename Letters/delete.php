<?php

include '../connect.php';

$letterId=filterRequest("letterId");




deleteData("letters","letter_Id =$letterId");

?>