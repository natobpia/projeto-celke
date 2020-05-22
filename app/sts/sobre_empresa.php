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
        <div class="jumbotron sobre-empresa">
            <h2 class="display-4 text-center perg-resp-text" style="margin-bottom: 40px">Sobre a Empresa Celke</h2>
            <div class="container">
                <div class="row featurette">
                    <div class="col-md-7 emp-text-mod-um">
                        <h2 class="featurette-heading">Sobre empresa um</h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5 emp-img-mod-um">
                        <img class="featurette-image img-fluid mx-auto" src="imagens/produto.jpg">
                    </div>
                </div>
            </div>
        </div>
        <div class="jumbotron sobre-empresa">
            <div class="container">
                <div class="row featurette">
                    <div class="col-md-7 order-md-2 emp-text-mod-dois">
                        <h2 class="featurette-heading">Sobre empresa dois</h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5 order-md-1 emp-img-mod-dois">
                        <img class="featurette-image img-fluid mx-auto" src="imagens/imagem_um.jpg">
                    </div>
                </div>
            </div>
        </div>
        <div class="jumbotron sobre-empresa">                
            <div class="container">
                <div class="row featurette">
                    <div class="col-md-7 emp-text-mod-um">
                        <h2 class="featurette-heading">Sobre empresa três</h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5 emp-img-mod-tres">
                        <img class="featurette-image img-fluid mx-auto" src="imagens/produto.jpg">
                    </div>
                </div>
            </div>
        </div>
        <div class="jumbotron sobre-empresa">
            <div class="container">
                <div class="row featurette">
                    <div class="col-md-7 order-md-2 emp-text-mod-quatro">
                        <h2 class="featurette-heading">Sobre empresa quatro</h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5 order-md-1 emp-img-mod-quatro">
                        <img class="featurette-image img-fluid mx-auto" src="imagens/imagem_um.jpg">
                    </div>
                </div>
            </div>
        </div>
    </main>
    <?php
    include_once 'app/sts/rodape.php';
    include_once 'app/sts/rodape_lib.php';
    ?>
</body>