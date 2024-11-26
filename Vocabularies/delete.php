<?php

include '../connect.php';

$vocabularyId=filterRequest("vocabularyId");




deleteData("vocabularies","vocabulary_Id=$vocabularyId");

?>