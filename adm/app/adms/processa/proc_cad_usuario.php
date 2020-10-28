<?php

if (!isset($seg)) {
    exit;
}
$SendCadUser = filter_input(INPUT_POST, 'SendCadUser', FILTER_SANITIZE_STRING);
if ($SendCadUser) {
    $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

    //Retirar campo da validação vazio
    $dados_apelido = $dados['apelido'];

    unset($dados['apelido']);
    //var_dump($dados);
    //validar nenhum campo vazio
    $erro = false;
    include_once 'lib/lib_vazio.php';
    include_once 'lib/lib_email.php';
    $dados_validos = vazio($dados);
    if (!$dados_validos) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>Necessário preencher todos os campos para cadastrar o usuário!</div>";
    } elseif (!validarEmail($dados_validos['email'])) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>E-mail inválido!</div>";
    } elseif (strlen($dados_validos['senha']) < 6) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>A senha deve ter no mínimo 6 caracteres!</div>";
    } elseif (stristr($dados_validos['senha'], "'")) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>Caracter ( ' ) utilizado na senha inválido!</div>";
    } elseif (strlen($dados_validos['usuario'] < 5)) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>O usuário deve ter no mínimo 5 caracteres!</div>";
    } elseif (stristr($dados_validos['usuario'], " ' ")) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>Caracter ( ' ) utilizado no usuário inválido!</div>";
    } else {
        //Proibir cadastro de e-mail duplicado
        $result_user_email = "SELECT id FROM adms_usuarios WHERE email='" . $dados_validos['email'] . "'";
        $resultado_user_email = mysqli_query($conn, $result_user_email);
        if (($resultado_user_email) and ($resultado_user_email->num_rows != 0)) {
            $erro = true;
            $_SESSION['msg'] = "<div class='alert alert-danger'>Este email já está cadastrado!</div>";
        }

        //Proibir cadastro de usuário duplicado
        $result_user_usuario = "SELECT id FROM adms_usuarios WHERE usuario='" . $dados_validos['usuario'] . "'";
        $resultado_user_usuario = mysqli_query($conn, $result_user_usuario);
        if (($resultado_user_usuario) and ($resultado_user_usuario->num_rows != 0)) {
            $erro = true;
            $_SESSION['msg'] = "<div class='alert alert-danger'>Este usuário já está cadastrado!</div>";
        }
    }

    //Houve erro em algum campo será redirecionado para o login, não há erro no formulário tenta cadastrar no banco
    if ($erro) {
        $dados['apelido'] = trim($dados_apelido);
        $_SESSION['dados'] = $dados;
        $url_destino = pg . '/cadastrar/cad_usuario';
        header("Location: $url_destino");
    } else {
        //Criptografar a senha
        $dados_validos['senha'] = password_hash($dados_validos['senha'], PASSWORD_DEFAULT);

        $result_cad_user = "INSERT INTO adms_usuarios (nome, email, usuario, senha, adms_niveis_acesso_id, adms_sits_usuario_id, created) VALUES (
        '" . $dados_validos['nome'] . "',
        '" . $dados_validos['email'] . "',
        '" . $dados_validos['usuario'] . "',
        '" . $dados_validos['senha'] . "',
        '" . $dados_validos['adms_niveis_acesso_id'] . "',
        '" . $dados_validos['adms_sits_usuario_id'] . "',
        NOW())";

        mysqli_query($conn, $result_cad_user);
        if (mysqli_insert_id($conn)) {
            unset($_SESSION['dados']);

            $_SESSION['msg'] = "<div class='alert alert-success'>Usuário cadastrado com sucesso!</div>";
            $url_destino = pg . '/listar/list_usuario';
            header("Location: $url_destino");
        } else {
            $dados['apelido'] = trim($$dados_apelido);
            $_SESSION['dados'] = $dados;
            $_SESSION['msg'] = "<div class='alert alert-danger'Erro: O usuário não foi cadastrado com sucesso!</div>";
            $url_destino = pg . '/cadastrar/cad_usuario';
            header("Location: $url_destino");
        }
    }
} else {
    $_SESSION['msg'] = "<div class='alert alert-danger'>Página não encontrada!</div>";
    $url_destino = pg . '/acesso/login';
    header("Location: $url_destino");
}
