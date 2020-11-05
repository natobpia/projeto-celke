<?php
if (!isset($seg)) {
    exit;
}

$SendCadLogin = filter_input(INPUT_POST, 'SendCadLogin', FILTER_SANITIZE_STRING);
if (!empty($SendCadLogin)) {
    $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
    $_SESSION['dados'] = $dados;

    //Validar se nenhum campo está vazio
    $erro = false;
    include_once 'lib/lib_vazio.php';
    include_once 'lib/lib_email.php';
    $dados_validos = vazio($dados);
    if (!$dados_validos) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>Necessário preencher todos os campos para cadastrar o usuário!</div>";
    } elseif (!validarEmail($dados_validos['email'])) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>E-mail inválido!</div";
    } elseif (strlen($dados_validos['senha']) < 6) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>A senha deve ter no mínimo 6 caracteres!</div";
    } elseif (stristr($dados_validos['senha'], "'")) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>Caracter ( ' ) utilizado na senha inválido!</div";
    } elseif (strlen($dados_validos['usuario']) < 5) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>O usuário deve ter no mínimo 5 caracteres!</div";
    } elseif (stristr($dados_validos['usuario'], "'")) {
        $erro = true;
        $_SESSION['msg'] = "<div class='alert alert-danger'>Caracter ( ' ) utilizado no usuário inválido!</div";
    } else {
        //Proibir cadastro de e-mail duplicado
        $result_user_email = "SELECT id FROM adms_usuarios WHERE email='" . $dados_validos['email'] . "'";
        $resultado_user_email = mysqli_query($conn, $result_user_email);
        if ($resultado_user_email and $resultado_user_email->num_rows != 0) {
            $erro = true;
            $_SESSION['msg'] = "<div class='alert alert-danger'>Este e-mail já está cadastrado!</div>";
        }

        //Proibir cadastro de usuário duplicado
        $result_user_dupli = "SELET id FROM adms_usuarios WHERE usuarios='" . $dados_validos['usuario'] . "'";
        $resultado_user_dupli = mysqli_query($conn, $result_user_dupli);
        if ($resultado_user_dupli and $resultado_user_dupli->num_rows != 0) {
            $erro = true;
            $_SESSION['msg'] = "<div class='alert alert-danger'>Este usuário já está cadastrado!</div>";
        }
    }

    if (!$erro) {
        $dados_validos['senha'] = password_hash($dados_validos['senha'], PASSWORD_DEFAULT);

        $result_user_perm = "SELECT * FROM adms_cads_usuarios LIMIT 1";
        $resultado_user_perm = mysqli_query($conn, $result_user_perm);
        $row_user_perm = mysqli_fetch_assoc($resultado_user_perm);

        $result_cad_user = "INSERT INTO adms_usuarios (nome, email, usuario, senha,  adms_niveis_acesso_id, adms_sits_usuario_id, created) VALUES (
            '" . $dados_validos['nome'] . "',
            '" . $dados_validos['email'] . "',
            '" . $dados_validos['usuario'] . "',
            '" . $dados_validos['senha'] . "',
            '" . $row_user_perm['adms_niveis_acesso_id'] . "',
            '" . $row_user_perm['adms_sits_usuario_id'] . "',
            NOW())";

            mysqli_query($conn, $result_cad_user);
            if (mysqli_insert_id($conn)) {
                unset($_SESSION['dados']);

                $_SESSION['msgcad'] = "<div class='alert alert-success'>Usuário cadastrado com sucesso!</div>";
                $url_destino = pg. '/acesso/login';
                header("Location: $url_destino");
            } else {
                unset($_SESSION['dados']);

                $_SESSION['msgcad'] = "<div class='alert alert-success'>Erro: O usuário não foi cadastrado com sucesso!</div>";
                $url_destino = pg. '/cadastrar/cad_user_login';
                header("Location: $url_destino");
            }
    }
}
include_once 'app/adms/include/head_login.php';
?>

<body class="text-center">
    <form class="form-signin" method="POST" action="">

        <h1 class="h3 mb-3 font-weight-normal">Novo Cadastro</h1>
        <?php
        if (isset($_SESSION['msg'])) {
            echo $_SESSION['msg'];
            unset($_SESSION['msg']);
        }
        ?>
        <div class="form-group">
            <label>Nome</label>
            <input name="nome" type="text" class="form-control" placeholder="Nome completo" required value="<?php
                                                                                                            if (isset($_SESSION['dados']['nome'])) {
                                                                                                                echo $_SESSION['dados']['nome'];
                                                                                                            }
                                                                                                            ?>">
        </div>

        <div class="form-group">
            <label>E-mail</label>
            <input name="email" type="email" class="form-control" placeholder="Seu melhor e-mail" required value="<?php
                                                                                                                    if (isset($_SESSION['dados']['email'])) {
                                                                                                                        echo $_SESSION['dados']['email'];
                                                                                                                    }
                                                                                                                    ?>">
        </div>

        <div class="form-group">
            <label>Usuário</label>
            <input name="usuario" type="text" class="form-control" placeholder="Nome do usuário" required value="<?php
                                                                                                                    if (isset($_SESSION['dados']['usuario'])) {
                                                                                                                        echo $_SESSION['dados']['usuario'];
                                                                                                                    }
                                                                                                                    ?>">
        </div>

        <div class="form-group">
            <label>Senha</label>
            <input name="senha" type="password" class="form-control" placeholder="A senha deve ter 6 caracteres" required value="<?php
                                                                                                                                    if (isset($_SESSION['dados']['senha'])) {
                                                                                                                                        echo $_SESSION['dados']['senha'];
                                                                                                                                    }
                                                                                                                                    ?>">
        </div>

        <input type="submit" class="btn btn-lg btn-success btn-block" value="Cadastrar" name="SendCadLogin">
        <p class="text-center">
            Lembrou?
            <a href="<?php echo pg . '/acesso/login'; ?>">Clique aqui </a>para logar.
        </p>
        <?php
        unset($_SESSION['dados']);
        ?>
    </form>
</body>