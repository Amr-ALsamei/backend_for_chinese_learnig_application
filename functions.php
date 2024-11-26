<?php

// ==========================================================
//  Copyright Reserved Amr Alsamei 
// ==========================================================

define("MB", 1048576);

function filterRequest($requestname)
{
  return  htmlspecialchars(strip_tags($_POST[$requestname]));
}

function getAllData($table, $where = null, $values = null,$Json=true)
{
    global $con;
    $data = array();
    if($where==null){
        $stmt = $con->prepare("SELECT  * FROM $table");
    }else{
        $stmt = $con->prepare("SELECT  * FROM $table WHERE   $where ");
    }
    
    $stmt->execute($values);
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $count  = $stmt->rowCount();
    if($Json==true){
        if ($count > 0){
        echo json_encode(array("status" => "success", "data" => $data));
    } else {
        echo json_encode(array("status" => "failure"));
    }
    return $count;
   }else{
    if($count>0){
        return array("status" => "success", "data" => $data);

    }else{
        return array("status" => "failure");
    }
   }
}

function getData($table, $where = null, $values = null,$json=true)
{
    global $con;
    $data = array();
    $stmt = $con->prepare("SELECT  * FROM $table WHERE   $where ");
    $stmt->execute($values);
    $data = $stmt->fetch(PDO::FETCH_ASSOC);
    $count  = $stmt->rowCount();
    if($json==true){
      if ($count > 0){
        echo json_encode(array("status" => "success", "data" => $data));
    } else {
        echo json_encode(array("status" => "failure"));
    }}else{
        return $count;
    }
    
}

function insertData($table, $data, $json = true)
{
    global $con;
    foreach ($data as $field => $v)
        $ins[] = ':' . $field;
    $ins = implode(',', $ins);
    $fields = implode(',', array_keys($data));
    $sql = "INSERT INTO $table ($fields) VALUES ($ins)";

    $stmt = $con->prepare($sql);
    foreach ($data as $f => $v) {
        $stmt->bindValue(':' . $f, $v);
    }
    $stmt->execute();
    $count = $stmt->rowCount();
    if ($json == true) {
    if ($count > 0) {
        echo json_encode(array("status" => "success"));
    } else {
        echo json_encode(array("status" => "failure"));
    }
  }
    return $count;
}


function updateData($table, $data, $where, $json = true)
{
    global $con;
    $cols = array();
    $vals = array();

    foreach ($data as $key => $val) {
        $vals[] = "$val";
        $cols[] = "`$key` =  ? ";
    }
    $sql = "UPDATE $table SET " . implode(', ', $cols) . " WHERE $where";

    $stmt = $con->prepare($sql);
    $stmt->execute($vals);
    $count = $stmt->rowCount();
    if ($json == true) {
    if ($count > 0) {
        echo json_encode(array("status" => "success"));
    } else {
        echo json_encode(array("status" => "failure"));
    }
    }
    return $count;
}

function deleteData($table, $where, $json = true)
{
    global $con;
    $stmt = $con->prepare("DELETE FROM $table WHERE $where");
    $stmt->execute();
    $count = $stmt->rowCount();
    if ($json == true) {
        if ($count > 0) {
            echo json_encode(array("status" => "success"));
        } else {
            echo json_encode(array("status" => "failure"));
        }
    }
    return $count;
}

function imageUpload($dir,$imageRequest)
{
  global $msgError;
  if(isset($_FILES[$imageRequest])){
    $imagename  = rand(1000, 10000) . $_FILES[$imageRequest]['name'];
  $imagetmp   = $_FILES[$imageRequest]['tmp_name'];
  $imagesize  = $_FILES[$imageRequest]['size'];
  $allowExt   = array("jpg", "png", "gif", "mp3", "pdf","svg");
  $strToArray = explode(".", $imagename);
  $ext        = end($strToArray);
  $ext        = strtolower($ext);

  if (!empty($imagename) && !in_array($ext, $allowExt)) {
    $msgError = "EXT";
  }
  if ($imagesize > 2 * MB) {
    $msgError = "size";
  }
  if (empty($msgError)) {
    move_uploaded_file($imagetmp,  $dir."/". $imagename);
    return $imagename;
  } else {
    return "fail";
  }
  }else{
    return "empty";
  }
}



function deleteFile($dir, $imagename)
{
    if (file_exists($dir . "/" . $imagename)) {
        unlink($dir . "/" . $imagename);
    }
}

function checkAuthenticate()
{
    if (isset($_SERVER['PHP_AUTH_USER'])  && isset($_SERVER['PHP_AUTH_PW'])) {
        if ($_SERVER['PHP_AUTH_USER'] != "wael" ||  $_SERVER['PHP_AUTH_PW'] != "wael12345") {
            header('WWW-Authenticate: Basic realm="My Realm"');
            header('HTTP/1.0 401 Unauthorized');
            echo 'Page Not Found';
            exit;
        }
    } else {
        exit;
    }

    // End 
 
}

function   printFailure($message="None"){
    echo json_encode(array("status"=>"failure","Message"=>$message));
   
}

function   printSuccess($message="None"){
    echo json_encode(array("status"=>"success","Message"=>$message));
    
}

function   Result($count){
    if($count>0){
     printSuccess();
    }else{
        printFailure();
    }
    
}

function SendEmail($to,$title,$body){
    
    require_once 'app/mail.php';
    $mail->setFrom('support@gmail.com', 'Chinese_Language Application');
    $mail->addAddress($to, 'Joe User'); 
    $mail->Subject = 'verification Code';
    $mail->Body    = $body;
//     $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

$mail->send();
// $header="From: Support@amralsameiabolith.com"."\n"."CC:amreagle1234@gmail.com";
// mail($to,$title,$body,$header);

}


/////////////////Notification/////////////////////
function sendGCM($title, $message, $topic, $pageid, $pagename)
{


    // $url = 'https://fcm.googleapis.com/fcm/send';
    $url='https://fcm.googleapis.com/v1/projects/chinese-project-d1f60/messages:send';

    $fields=array(
        "message"=> array(
            "topic"=> $topic,
            'priority' => 'high',
            'content_available' => true,
            'notification' => array(
            "body" =>  $message,
            "title" =>  $title,
            "click_action" => "FLUTTER_NOTIFICATION_CLICK",
            "sound" => "default"
    
        ),
        'data' => array(
            "pageid" => $pageid,
            "pagename" => $pagename
        )
        )
      );


    $fields = json_encode($fields);
    $headers = array(
        'Authorization: Bearer' . "ya29.c.c0ASRK0GZmIcNNNMCZHiFph_htpkzhCWSEV49IvzfHslqyv31Y2Gn2LJJZKzquJsFLIt5dEixsFIqN8sQ7qF9VFJTBvDZt28x3_UQrsajgu4rAyFHplKIerO-B5Qpyit9GfPx8wsA2JLOU40LRLvvUSTzGjhbsaHbJEUFIbZJSFq7FXtnROaG7MRD-13rSQs5JiYNv5S4FBDH9aWNvr_X4Gb21ClY0BijOtgSZc4lju05bVqTMkaxyd0QmKQ-sJVOiQBOZruUU04kJnZwkbaN5qRsao6QyyadmB-IWq0I_rg8UeyiXBwoJDeWRoTX5wl9Gz58H7PQUzAKXFxhShFdp1tJjKZzizeHdUrV_8bxWFEqlELLb4LV0dERCE385Kwwe3YjdI5aJFjUs7so5_gRpYzZaMRnOUm7dpvtjdmJM68u6d1ljuZRbiMsr57rFhycmdOg3I2xZ1otvUF2i_7xh3B0QrrJRpbJIy7zY4U0-QO07-p60X_7pROJvceMd6q2gRbS2qM17dBB133pFbUIzylRjYadRubU8FQ5llx6Xd5QcvVfjafrXrJvU99-6fq34lv2hqyI3Za1Y9xpQ7inrb5JRbVnMMU7sSl09UxSSpW62q4ufF2Y-sQkx1uFsgS5MMZWbJVFIgYbleWUju02J4rza_Z5I1Um7U4jw-zOcq3xyOkyzbvB7WgV_rpSqX7of228pFmFM631JzpFcXbUjjFu1xSUvMjbojdptqWUvgqeaOqqkR_4Oh1SeV_Wy9I2xgr7sS3s-R1ekdBSofXY0hrBOM5QdFVQiixfu-5Qb3Sr6pnqJQOvem5IzvcqaJSzZ33ioc6OhV_fqYW3dc-7hyFBncMwphcv7ZZIMe2QwWp1m4a3iwydRkW8BbR0x0RrMzBooblg01c6tru8Wuw6971O_5yFvdSzI38kgjx1Jyh9ssfoYFvU3sXjVIvjx814R_ve3io7XcqgIviX2ftn-fmqgFf1cSgyuoRdFoQMpO9XuJ-7whWtklq",
        'Content-Type: application/json'
    );

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);

    $result = curl_exec($ch);
    
    return  $result;
    curl_close($ch);
}

////////Notification//////////////////////////
function insertNotify($title,$body,$userid,$topic,$pageid,$pagename){
    global $con;
    $stmt=$con->prepare("INSERT INTO `nnotifications`( `notifications_title`, `notifications_body`, `notifications_userId`) VALUES (?,?,?)");
    $stmt->execute(array($title,$body,$userid));

    sendGCM($title,$body,$topic,$pageid,$pagename);
    $count=$stmt->rowCount();
    return $count;

}



