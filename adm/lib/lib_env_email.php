<?php
/*if (!isset($seg)) {
    exit;
}*/

// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Load Composer's autoloader
require 'lib/vendor/autoload.php';

function email_phpmailer($assunto, $mensagem, $mensagem_texto, $nome_destino = null, $email_destino)
{

    $mail = new PHPMailer(true);

    try {
        //Server settings
        //$mail->SMTPDebug = 2;                      // Enable verbose debug output
        $mail->isSMTP();                                            // Send using SMTP
        $mail->Host       = 'srv84.prodns.com.br';                    // Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
        $mail->Username   = 'aulacurso@celke.com.br';                     // SMTP username
        $mail->Password   = 'we6tcZpR4V';                               // SMTP password
        $mail->SMTPSecure = 'ssl';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
        $mail->Port       = 465;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

        //Recipients
        $mail->setFrom('aulacurso@celke.com.br', 'Cesar - Celke');
        $mail->addAddress($email_destino, $nome_destino);     // Add a recipient
        //$mail->addAddress('ellen@example.com');               // Name is optional
        //$mail->addReplyTo('info@example.com', 'Information');
        //$mail->addCC('cc@example.com');
        //$mail->addBCC('bcc@example.com');

        // Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

        // Content
        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = $assunto;
        $mail->Body    = $mensagem;
        $mail->AltBody = $mensagem_texto;

        $mail->send();
        return true;
    } catch (Exception $e) {
        return false;
    }
}
