<?php

if (!isset($seguranca)) {
    exit;
}

$SendCadCont = filter_input(INPUT_POST, 'SendCadCont', FILTER_SANITIZE_STRING);

if ($SendCadCont) {
   $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
   
   $result_cont = "INSERT INTO sts_contatos
   (nome, email, assunto, mensagem, created) VALUES
   ('".$dados['nome']."', '".$dados['email']."', '".$dados['assunto']."', '".$dados['mensagem']."', NOW())";
   
   mysqli_query($conn, $result_cont);
   if(mysqli_insert_id($conn)){
           $_SESSION['msg'] = "<div class = 'alert alert-success' role = 'alert'>Mensagem enviada com sucesso!
                            </div>";
    $url_destino = pg."/contato";
    header("Location: $url_destino");
   }else{
           $_SESSION['msg'] = "<div class = 'alert alert-danger' role = 'alert'>Erro ao enviar a mensagem!
                            </div>";
    $url_destino = pg."/contato";
    header("Location: $url_destino");
   }
} else {
    $_SESSION['msg'] = "<div class = 'alert alert-danger' role = 'alert'>Página não encontrado!
                            </div>";
    $url_destino = pg."/contato";
    header("Location: $url_destino");
}