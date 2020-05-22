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
        <div class="jumbotron blog">
            <div class="container">
                <h2 class="display-4 text-center perg-resp-text" style="margin-bottom: 40px">Blog</h2>
                <div class="row">
                    <div class="col-md-8 blog-main">
                        <div class="row featurette">
                            <div class="col-md-7 order-md-2 blog-text">
                                <a href="artigo.html" >
                                    <h2 class="featurette-heading">Oh yeah, it’s that good</h2>
                                </a>
                                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. 
                                    Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
                                    <a href="artigo.html" >Continuar lendo</a>
                                </p>
                            </div>
                            <div class="col-md-5 order-md-1 blog-image">
                                <a href="artigo.html" >
                                    <img src="imagens/produto.jpg" class="geaturette-image img-fluid mx-auto" alt="Produto">
                                </a>
                            </div>
                        </div>

                        <hr class="featurette-divider">
                        <div class="row featurette">
                            <div class="col-md-7 order-md-2 blog-text">
                                <h2 class="featurette-heading">Oh yeah, it’s that good</h2>
                                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. 
                                    Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                            </div>
                            <div class="col-md-5 order-md-1 blog-image">
                                <img src="imagens/produto.jpg" class="geaturette-image img-fluid mx-auto" alt="Produto">
                            </div>
                        </div>

                        <hr class="featurette-divider">
                        <div class="row featurette">
                            <div class="col-md-7 order-md-2 blog-text">
                                <h2 class="featurette-heading">Oh yeah, it’s that good</h2>
                                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. 
                                    Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                            </div>
                            <div class="col-md-5 order-md-1 blog-image">
                                <img src="imagens/produto.jpg" class="geaturette-image img-fluid mx-auto" alt="Produto">
                            </div>
                        </div>

                        <hr class="featurette-divider">
                        <div class="row featurette">
                            <div class="col-md-7 order-md-2 blog-text">
                                <h2 class="featurette-heading">Oh yeah, it’s that good</h2>
                                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                            </div>
                            <div class="col-md-5 order-md-1 blog-image">
                                <img src="imagens/produto.jpg" class="geaturette-image img-fluid mx-auto" alt="Produto">
                            </div>
                        </div>

                        <hr class="featurette-divider">
                        <div class="row featurette">
                            <div class="col-md-7 order-md-2 blog-text">
                                <h2 class="featurette-heading">Oh yeah, it’s that good</h2>
                                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                            </div>
                            <div class="col-md-5 order-md-1 blog-image">
                                <img src="imagens/produto.jpg" class="geaturette-image img-fluid mx-auto" alt="Produto">
                            </div>
                        </div>

                        <hr class="featurette-divider">
                        <nav aria-label="paginacao-blog">
                            <ul class="pagination justify-content-center">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item active" aria-current="page">
                                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <aside class="col-md-4 blog-sidebar">
                        <div class="p-4 mb-3 bg-light rounded">
                            <h4 class="font-italic">Sobre</h4>
                            <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
                        </div>

                        <div class="p-4">
                            <h4 class="font-italic">Recentes</h4>
                            <ol class="list-unstyled mb-0">
                                <li><a href="#">March 2014</a></li>
                                <li><a href="#">February 2014</a></li>
                                <li><a href="#">January 2014</a></li>
                                <li><a href="#">December 2013</a></li>
                                <li><a href="#">November 2013</a></li>
                                <li><a href="#">October 2013</a></li>
                                <li><a href="#">September 2013</a></li>
                                <li><a href="#">August 2013</a></li>
                                <li><a href="#">July 2013</a></li>
                                <li><a href="#">June 2013</a></li>
                                <li><a href="#">May 2013</a></li>
                                <li><a href="#">April 2013</a></li>
                            </ol>
                        </div>

                        <div class="p-4">
                            <h4 class="font-italic">Destaques</h4>
                            <ol class="list-unstyled">
                                <li><a href="#">October 2013</a></li>
                                <li><a href="#">January 2014</a></li>
                                <li><a href="#">May 2013</a></li>
                            </ol>
                        </div>
                    </aside><!-- /.blog-sidebar -->	
                </div>					
            </div>
        </div>	
    </main>
    <?php
    include_once 'app/sts/rodape.php';
    include_once 'app/sts/rodape_lib.php';
    ?>
</body>