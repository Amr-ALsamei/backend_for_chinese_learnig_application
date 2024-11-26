<?php
include './connect.php';
$userId=filterRequest("id");
 sendGCM2("تنبيه","لقد نجحت في تجاوز هذا الدرس","user$userId","none","none");
 

 

 
 

// {
//     "to": "/topics/news",
//     "notification": {
//       "title": "Breaking News",
//       "body": "New news story available."
//     },
//     "data": {
//       "story_id": "story_12345"
//     }
//   }
//   {
//     "message": {
//       "topic": "news",
//       "notification": {
//         "title": "Breaking News",
//         "body": "New news story available."
//       },
//       "data": {
//         "story_id": "story_12345"
//       }
//     }
//   }

//   $fields=array(
//     "message"=> array(
//         "topic"=> $topic,
//         'priority' => 'high',
//         'content_available' => true,
//         'notification' => array(
//         "body" =>  $message,
//         "title" =>  $title,
//         "click_action" => "FLUTTER_NOTIFICATION_CLICK",
//         "sound" => "default"

//     ),
//     'data' => array(
//         "pageid" => $pageid,
//         "pagename" => $pagename
//     )
//     )
//   );

// $fields = array(
//     "to" => '/topics/' . $topic,
//     'priority' => 'high',
//     'content_available' => true,

//     'notification' => array(
//         "body" =>  $message,
//         "title" =>  $title,
//         "click_action" => "FLUTTER_NOTIFICATION_CLICK",
//         "sound" => "default"

//     ),
//     'data' => array(
//         "pageid" => $pageid,
//         "pagename" => $pagename
//     )

// );


?>