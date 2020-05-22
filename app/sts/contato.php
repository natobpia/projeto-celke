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
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6 form-nome">
                            <label>Nome</label>
                            <input type="text" class="form-control" placeholder="Nome">
                        </div>
                        <div class="form-group col-md-6 form-email">
                            <label >Email</label>
                            <input type="email" class="form-control" placeholder="Seu melhor e-mail">
                        </div>
                    </div>
                    <div class="form-group form-assunto">
                        <label>Assunto</label>
                        <input type="text" class="form-control" placeholder="Assunto da mensagem">
                    </div>
                    <div class="form-group form-msg">
                        <label>Mensagem</label>
                        <textarea class="form-control" rows="5" placeholder="Digite sua mensagem..."></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>
        </div>	
    </main>
    <?php
    include_once 'app/sts/rodape.php';
    include_once 'app/sts/rodape_lib.php';
    ?>
</body>