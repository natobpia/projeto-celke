<?php

if (!isset($seguranca)) {
    exit;
}

unset($_SESSION['id']);
unset($_SESSION['nome']);
unset($_SESSION['email']);
unset($_SESSION['adms_niveis_acesso_id']);
unset($_SESSION['ordem']);

$_SESSION['msg'] = "<div class='alert alert-success'>Deslogado com sucesso</div>";
$url_destino = pg . '/acesso/login';
header("Location: $url_destino");
