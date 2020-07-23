<?php

if (!isset($seguranca)) {
    exit;
}
include_once 'lib/lib_vazio.php';

$SendCadNivAc = filter_input(INPUT_POST,
        'SendCadNivAc',
        FILTER_SANITIZE_STRING);

if ($SendCadNivAc) {
    $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
    
    //validar nenhum campo vazio
    $erro = false;
    $dados_validos = vazio($dados);
    
    if(!$dados_validos){
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>
        Necessário preencher todos os campos para cadastrar
        o nível de acesso</div>";
    }
    //Houve erro em algum campo será redirecionado para o login,
    //se não há erro no formulário tenta cadastrar no banco.
    if($erro){
        $url_destino = pg . '/cadastrar/cad_niv_aces';
        header("Location: $url_destino");  
    }else{
        echo "cadastrar";
    }
    
} else {
    $_SESSION['msg'] = "<div class='alert alert-danger'>
    Página não encontrada</div>";
    $url_destino = pg . '/acesso/login';
    header("Location: $url_destino");
}
