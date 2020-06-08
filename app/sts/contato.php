<?php
if (!isset($seguranca)) {
    exit;
}
include_once 'app/sts/header.php';
?>
<body>
    <?php
    include_once 'app/sts/menu.php';
    ?>
    <main role="main">
        <div class="jumbotron contato">
            <div class="container">
                <h2 class="display-4 text-center perg-resp-text" style="margin-bottom: 40px">Contato</h2>
                <?php 
                if(isset($_SESSION['msg'])){
                    echo $_SESSION['msg'];
                    unset($_SESSION['msg']);
                }
                ?>
                <form method="POST" action="<?php echo pg.'/proc_cad_contato';?>">
                    <div class="form-row">
                        <div class="form-group col-md-6 form-nome">
                            <label>Nome</label>
                            <input type="text" class="form-control" placeholder="Nome" name="nome" required>
                        </div>
                        <div class="form-group col-md-6 form-email">
                            <label >Email</label>
                            <input type="email" class="form-control" placeholder="Seu melhor e-mail" name="email" required>
                        </div>
                    </div>
                    <div class="form-group form-assunto">
                        <label>Assunto</label>
                        <input type="text" class="form-control" placeholder="Assunto da mensagem" name="assunto" required>
                    </div>
                    <div class="form-group form-msg">
                        <label>Mensagem</label>
                        <textarea class="form-control" rows="5" placeholder="Digite sua mensagem..." name="mensagem"></textarea>
                    </div>
                    <input type="submit" name="SendCadCont" class="btn btn-primary" value="Enviar">
                </form>
            </div>
        </div>	
    </main>
    <?php
    include_once 'app/sts/rodape.php';
    include_once 'app/sts/rodape_lib.php';
    ?>
</body>