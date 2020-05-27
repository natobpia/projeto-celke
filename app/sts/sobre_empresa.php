<?php
if (!isset($seguranca)) {
    exit;
}
include_once 'app/sts/header.php';
?>
<body>
    <?php
    include_once 'app/sts/menu.php';
    $result_sob_emp = "SELECT * FROM sts_sobs_emps WHERE sts_situacoe_id = 1 ORDER BY ordem";
    $resultado_sob_emp = mysqli_query($conn, $result_sob_emp);
    ?>

    <main role="main">
        <div class="jumbotron sobre-empresa" style="padding-bottom: 1rem; margin-bottom: 0px">
            <div class="container">
                <h2 class="display-4 text-center perg-resp-text" >Sobre a Empresa Celke</h2>
            </div>
        </div>
        <?php
        if (($resultado_sob_emp) AND ( $resultado_sob_emp->num_rows != 0)) {
            $cont_sob_emp = 1;
            while ($row_sob_emp = mysqli_fetch_assoc($resultado_sob_emp)) {

                if ($cont_sob_emp == 1) {
                    ?>
                    <div class="jumbotron sobre-empresa">                
                        <div class="container">
                            <div class="row featurette">
                                <div class="col-md-7 emp-text-mod-um">
                                    <h2 class="featurette-heading"><?php echo $row_sob_emp['titulo']; ?></h2>
                                    <p class="lead"><?php echo $row_sob_emp['descricao']; ?></p>
                                </div>
                                <div class="col-md-5 emp-img-mod-tres">
                                    <img class="featurette-image img-fluid mx-auto" src="<?php echo pg . '/assets/imagens/sob_emp/' . $row_sob_emp['id'] . '/' . $row_sob_emp['imagem']; ?>" alt="<?php echo $row_sob_emp['titulo']; ?>">
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    $cont_sob_emp = 2;
                } else {
                    ?>
                    <div class="jumbotron sobre-empresa">
                        <div class="container">
                            <div class="row featurette">
                                <div class="col-md-7 order-md-2 emp-text-mod-quatro">
                                    <h2 class="featurette-heading"><?php echo $row_sob_emp['titulo']; ?></h2>
                                    <p class="lead"><?php echo $row_sob_emp['descricao']; ?></p>
                                </div>
                                <div class="col-md-5 order-md-1 emp-img-mod-quatro">
                                    <img class="featurette-image img-fluid mx-auto" src="<?php echo pg . '/assets/imagens/sob_emp/' . $row_sob_emp['id'] . '/' . $row_sob_emp['imagem']; ?>" alt="<?php echo $row_sob_emp['titulo']; ?>">
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php
                    $cont_sob_emp = 1;
                }
                ?>

                <?php
            }
        }
        ?>
    </main>
    <?php
    include_once 'app/sts/rodape.php';
    include_once 'app/sts/rodape_lib.php';
    ?>
    <script>
        window.sr = ScrollReveal({reset: true});
        sr.reveal('.emp-text-mod-um', {
            duration: 1000,
            origin: 'right',
            distance: '20px'
        });
        sr.reveal('.emp-img-mod-um', {
            duration: 1000,
            origin: 'left',
            distance: '20px'
        });
        sr.reveal('.emp-text-mod-dois', {
            duration: 1000,
            origin: 'left',
            distance: '20px'
        });
        sr.reveal('.emp-img-mod-dois', {
            duration: 1000,
            origin: 'right',
            distance: '20px'
        });
        sr.reveal('.emp-text-mod-tres', {
            duration: 1000,
            origin: 'right',
            distance: '20px'
        });
        sr.reveal('.emp-img-mod-tres', {
            duration: 1000,
            origin: 'left',
            distance: '20px'
        });
        sr.reveal('.emp-text-mod-quatro', {
            duration: 1000,
            origin: 'left',
            distance: '20px'
        });
        sr.reveal('.emp-img-mod-quatro', {
            duration: 1000,
            origin: 'right',
            distance: '20px'
        });
    </script>
</body>