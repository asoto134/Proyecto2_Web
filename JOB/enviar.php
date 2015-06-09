<?php
include_once 'class.phpmailer.php';
include_once 'class.smtp.php';
  $mail = new PHPMailer();
    $mail->SMTPSecure = 'tls';
    $mail->Username = "proyecto2web@hotmail.com";
    $mail->Password = "TECbases2";
    $mail->AddAddress("assa2909@gmail.com");
    $mail->FromName = "Asociación Ornitologica de Costa Rica";
    $mail->Subject = "Reporte diario";
    $mail->Body = "En el archivo encontrará las aves clasificadas como Desconocidas";
    $mail->Host = "smtp.live.com";
    $mail->Port = 587;
    $mail->IsSMTP();
    $mail->SMTPAuth = true;
    $mail->From = $mail->Username;
    $mail->addAttachment("reporte_diario.txt");
    if(!$mail->Send()) {
    //echo $body;

    echo 'Mailer Error: ' . $mail->ErrorInfo;}

else{
	echo 'Solo queda esperar';
}
echo "<script type='text/javascript'>"; 
echo "window.close()"; 
echo "</script>"; 
exit();
 
?>

