<?php
include './connect.php';
$userId=filterRequest("userId");
$score=filterRequest("score");

$stmt=$con->prepare("SELECT * FROM scores WHERE score_userId=?");
$stmt->execute(array($userId));
$result=$stmt->fetch(PDO::FETCH_ASSOC);
$count=$stmt->rowCount();
if($count>0){
    $oldScore=$result['total_scores'];
    $newScore=$oldScore + $score;
    $data=array(
        "score_userId"=>$userId,
        "total_scores"=>$newScore);
    updateData("scores",$data,"score_userId=$userId");

   
    // sendGCM("تنبيه","لقد نجحت في تجاوز هذا الدرس","user$userId","none","none");
}else{
    $data=array(
        "score_userId"=>$userId,
        "total_scores"=>$score
        
    );
    
    insertData("scores",$data);

}




insertNotify("لقد أكملت الدرس"," لقد نجحت في تجاوز هذا الدرس وحققت نقاط $newScore XP",$userId, "user$userId","non","Chinese Learning Account");

// insertNotify("لقد أكملت الدرس","لقد نجحت في تجاوز هذا الدرس وحققت $score XP",$Userid,"user$Userid","non","Chinese Learning Account");
// sendGCM("تنبيه","لقد نجحت في تجاوز هذا الدرس","user$userId","none","none");

?>