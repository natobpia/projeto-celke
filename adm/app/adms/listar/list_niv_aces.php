<?php
if (!isset($seguranca)) {
    exit;
}
include_once 'app/adms/include/head.php';
?>
<body>
    <?php
    include_once 'app/adms/include/header.php';
    ?>
    <div class="d-flex">
        <?php
        include_once 'app/adms/include/menu.php';

        echo "listar nível de acesso";

        include_once 'app/adms/include/rodape_lib.php';
        ?>
    </div>
</body>

