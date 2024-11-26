<?php

include './connect.php';


// getAllData("community","user_aproov=1 ORDER BY total_scores DESC");

$stmt=$con->prepare("SELECT  users.* ,scores.total_scores FROM users
INNER JOIN scores ON users.user_Id=scores.score_userId WHERE user_aproov=1 ORDER BY total_scores DESC");
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
$count=$stmt->rowCount();

if ($count > 0){
    echo json_encode(array("status" => "success", "data" => $data));
} else {
    echo json_encode(array("status" => "failure"));
}
?>

