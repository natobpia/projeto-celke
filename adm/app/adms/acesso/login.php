<?php
if (!isset($seguranca)) {
    exit;
}

include_once 'app/adms/include/head_login.php';
?>

<body class="text-center">
    <form class="form-signin" method="POST" action="<?php echo pg.'/acesso/valida'; ?>">
        <img class="mb-4" src="<?php echo pg; ?>/assets/imagens/logo_login/logo_celke.png" alt="Celke" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Área Restrita</h1>
        <?php 
        if(isset($_SESSION['msg'])){
            echo $_SESSION['msg'];
            unset($_SESSION['msg']);
        }
        ?>
        <div class="form-group">
            <label>Usuário</label>
            <input type="text" name="usuario" class="form-control" placeholder="Digite o usuário" required>               
        </div>
        <div class="form-group">
            <label>Senha</label>
            <input type="password" name="senha" class="form-control" placeholder="Digite a senha" required>
        </div>
        <input class="btn btn-lg btn-primary btn-block" type="submit" value="Acessar" name="SendLogin">
        <p class="text-center">Esqueceu a senha?</p>
    </form>
</body>