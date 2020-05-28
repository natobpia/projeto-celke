<?php
if (!isset($seguranca)) {
    exit;
}

include_once 'app/sts/header.php';
?>
<body>
    <?php
    include_once 'app/sts/menu.php';

    //Receber o número da página
    $pagina_atual = filter_input(INPUT_GET, 'pagina', FILTER_SANITIZE_NUMBER_INT);
    $pagina = (!empty($pagina_atual)) ? $pagina_atual : 1;

    //Setar a quantidade de itens por pagina
    $qnt_result_pg = 1;

    //Calcular o inicio visualização
    $inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;

    $result_art = "SELECT id, titulo, descricao, imagem, slug FROM sts_artigos
    WHERE sts_situacoe_id = 1 
    ORDER BY id DESC
    LIMIT $inicio, $qnt_result_pg";

    $resultado_art = mysqli_query($conn, $result_art);
    ?>
    <main role="main">
        <div class="jumbotron blog">
            <div class="container">
                <h2 class="display-4 text-center perg-resp-text" style="margin-bottom: 40px">Blog</h2>
                <div class="row">
                    <div class="col-md-8 blog-main">
                        <?php
                        while ($row_artigo = mysqli_fetch_assoc($resultado_art)) {
                            ?>
                            <div class="row featurette">
                                <div class="col-md-7 order-md-2 blog-text">
                                    <a href="<?php echo pg . '/artigo/' . $row_artigo['slug']; ?>" >
                                        <h2 class="featurette-heading"><?php echo $row_artigo['titulo']; ?></h2>
                                    </a>
                                    <p class="lead"><?php echo $row_artigo['descricao']; ?>
                                        <a href="<?php echo pg . '/artigo/' . $row_artigo['slug']; ?>" >Continuar lendo</a>
                                    </p>
                                </div>
                                <div class="col-md-5 order-md-1 blog-image">
                                    <a href="<?php echo pg . '/artigo/' . $row_artigo['slug']; ?>" >
                                        <img src="<?php echo pg . '/assets/imagens/artigo/' . $row_artigo['id'] . '/' . $row_artigo['imagem']; ?>"  class="geaturette-image img-fluid mx-auto" alt="<?php echo $row_artigo['titulo']; ?>">
                                    </a>
                                </div>
                            </div>

                            <hr class="featurette-divider">
                        <?php } ?>

                        <?php
                        $result_pg = "SELECT COUNT(id) AS num_result FROM sts_artigos WHERE sts_situacoe_id = 1";
                        $resultado_pg = mysqli_query($conn, $result_pg);
                        $row_pg = mysqli_fetch_assoc($resultado_pg);
                        //echo $row_pg['num_result'];
                        //Quantidade de pagina
                        $quantidade_pg = ceil(($row_pg['num_result'] / $qnt_result_pg));

                        //Limitar os link's antes depois
                        $max_links = 2;
                        echo "<nav aria-label='paginacao-blog'>";
                        echo "<ul class='pagination justify-content-center'>";
                        echo "<li class='page-item'>";
                        echo "<a class='page-link' href='" . pg . "/blog?pagina=1' tabindex='-1' aria-disabled='true'>Primeira</a>";
                        echo "</li>";

                        for ($pag_ant = $pagina - $max_links; $pag_ant <= $pagina - 1; $pag_ant++) {
                            if ($pag_ant >= 1) {
                                echo "<li class='page-item'><a class='page-link' href='" . pg . "/blog?pagina=$pag_ant'>$pag_ant</a></li>";
                            }
                        }

                        echo "<li class = 'page-item active' aria-current = 'page'>";
                        echo "<a class = 'page-link' href = '#'>$pagina <span class = 'sr-only'>(current)</span></a>";
                        echo "</li>";

                        for ($pag_dep = $pagina + 1; $pag_dep <= $pagina + $max_links; $pag_dep++) {
                            if ($pag_dep <= $quantidade_pg) {
                                echo "<li class='page-item'><a class='page-link' href='" . pg . "/blog?pagina=$pag_dep'>$pag_dep</a></li>";
                            }
                        }

                        echo "<li class='page-item'>";
                        echo "<a class='page-link' href='" . pg . "/blog?pagina=$quantidade_pg'>Next</a>";
                        echo "</li>";

                        echo "</ul>";
                        echo "</nav>";
                        ?>

                    </div>
                    <aside class="col-md-4 blog-sidebar">
                        <?php
                        $result_blog_sobre = "SELECT * FROM sts_blogs_sobre WHERE sts_situacoe_id = 1 LIMIT 1";
                        $resultado_blog_sobre = mysqli_query($conn, $result_blog_sobre);
                        if ($resultado_blog_sobre AND $resultado_blog_sobre->num_rows != 0) {
                            $row_blog_sobre = mysqli_fetch_assoc($resultado_blog_sobre);
                            ?>
                            <div class="p-4 mb-3 bg-light rounded">
                                <h4 class="font-italic"><?php echo $row_blog_sobre['titulo']; ?></h4>
                                <p class="mb-0"><?php echo $row_blog_sobre['descricao']; ?></p>
                            </div>
                            <?php
                        }

                        $result_art_rec = "SELECT id, titulo, slug FROM sts_artigos
                        WHERE sts_situacoe_id = 1 ORDER BY id DESC LIMIT 6";
                        $resultado_art_rec = mysqli_query($conn, $result_art_rec);
                        ?>

                        <div class="p-4">
                            <h4 class="font-italic">Recentes</h4>
                            <ol class="list-unstyled mb-0">
                                <?php
                                while ($row_art_rec = mysqli_fetch_assoc($resultado_art_rec)) {
                                    echo "<li><a href='" . pg . "/artigo/" . $row_art_rec['slug'] . "'>" . $row_art_rec['titulo'] . "</a></li>";
                                }
                                ?>
                            </ol>
                        </div>

                        <?php
                        $result_art_dest = "SELECT titulo, slug FROM sts_artigos
                        WHERE sts_situacoe_id = 1 ORDER BY qnt_acesso DESC LIMIT 6";
                        $resultado_art_dest = mysqli_query($conn, $result_art_dest);
                        ?>

                        <div class="p-4">
                            <h4 class="font-italic">Destaques</h4>
                            <ol class="list-unstyled">
                                <?php
                                while ($row_art_dest = mysqli_fetch_assoc($resultado_art_dest)) {
                                    echo "<li><a href='" . pg . "/artigo/" . $row_art_dest['slug'] . "'>" . $row_art_dest['titulo'] . "</a></li>";
                                }
                                ?>
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

    <script>
        window.sr = ScrollReveal({reset: true});
        sr.reveal('.blog-text', {
            duration: 1000,
            origin: 'right',
            distance: '20px'
        });
        sr.reveal('.blog-image', {
            duration: 1000,
            origin: 'left',
            distance: '20px'
        });
    </script>
</body>