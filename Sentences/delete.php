<?php

include '../connect.php';

$sentenceId=filterRequest("sentenceId");




deleteData("sentences","sentence_Id=$sentenceId");

?>