<?php
if (!isset($seguranca)) {
    exit;
}

include_once 'app/adms/include/head_login.php';
?>

<body class="text-center">
    <form class="form-signin" method="POST" action="">
        <img class="mb-4" src="<?php echo pg; ?>/assets/imagens/logo_login/logo_celke.png" alt="Celke" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Área Restrita</h1>

        <div class="form-group">
            <label>Usuário</label>
            <input type="text" class="form-control" placeholder="Digite o usuário">               
        </div>
        <div class="form-group">
            <label>Senha</label>
            <input type="password" class="form-control" placeholder="Digite a senha">
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Acessar</button>
        <p class="text-center">Esqueceu a senha?</p>
    </form>
</body>