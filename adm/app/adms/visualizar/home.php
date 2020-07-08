<?php
if (!isset($seguranca)) {
    exit;
}
include_once 'app/adms/include/head.php';
?>
<body>
    <?php
    include_once 'app/adms/include/header.php';
    echo "Bem-vindo a home<br>";
    echo "<a href='" . pg . "/acesso/sair'>Sair</a><br>";
    include_once 'app/adms/include/rodape_lib.php';
    ?>

</body>

