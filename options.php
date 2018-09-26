<?php
$addresses = array(
    'wwwdreamsoft@gmail.com',
    'ttkeino@gmail.com',
);
 
if (isset($_REQUEST['mes']) && !empty($_REQUEST['mes'])){
    if (empty($_REQUEST['span'])){
        $question = $_REQUEST['question'];
        $message = $_REQUEST['mes'];
        $send = "На сайте site.ru задали вопрос №".$question.": ".$message;
        $to= implode(', ', $addresses);
        $from = "no-replay@ru-bezh.ru";
        $subject = "Вопрос от сайта";
        $headers = "From: $from\r\nReplay-To: $from\r\nContent-type: text/plain; charset=utf-8\r\n";
        mail($to, $subject, $send, $headers);
    }
}
?>