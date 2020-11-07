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

function email_phpmailer($assunto, $mensagem, $mensagem_texto, $nome_destino = null, $email_destino, $conn)
{

    //Pesquisar as credenciais do e-mail
    $result_conf_email = "SELECT * FROM adms_conf_emails WHERE id=1 LIMIT 1";
    $resultado_conf_email = mysqli_query($conn, $result_conf_email);
    $row_conf_email = mysqli_fetch_assoc($resultado_conf_email);

    if($row_conf_email['usuario'] != ""){

    $mail = new PHPMailer(true);

    try {
        //Server settings
        //$mail->SMTPDebug = 2;                      // Enable verbose debug output
        $mail->isSMTP();                                            // Send using SMTP
        $mail->Host       = $row_conf_email['host'];                    // Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
        $mail->Username   = $row_conf_email['usuario'];                     // SMTP username
        $mail->Password   = $row_conf_email['senha'];                               // SMTP password
        $mail->SMTPSecure = $row_conf_email['smtpsecure'];         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
        $mail->Port       = $row_conf_email['porta'];                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

        //Recipients
        $mail->setFrom($row_conf_email['email'], $row_conf_email['nome']);
        $mail->addAddress($email_destino, $nome_destino);     // Add a recipient
        //$mail->addAddress('ellen@example.com');               // Name is optional
        $mail->addReplyTo($row_conf_email['email'], $row_conf_email['usuario']);
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
} else {
    $_SESSION['msgcad'] = "<div class='alert alert-danger'>Para enviar e-mail necessário inserir os dados do e-mail: Configurações -> E-mail!</div>";
}
}
