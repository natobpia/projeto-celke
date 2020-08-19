<?php
if (!isset($seguranca)) {
    exit;
}
$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

if (!empty($id)) {

    $result_pg_vis = "SELECT pg.*,
    depg.id id_depg, depg.nome_pagina nome_depg
    FROM adms_paginas pg
    LEFT JOIN adms_paginas depg ON depg.id=pg.depend_pg
    WHERE pg.id=$id";
    $resultado_pg_vis = mysqli_query($conn, $result_pg_vis);
    if ($resultado_pg_vis and $resultado_pg_vis->num_rows != 0) {
        $row_pg_vis = mysqli_fetch_assoc($resultado_pg_vis);
        include_once 'app/adms/include/head.php';
?>

        <body>
            <?php
            include_once 'app/adms/include/header.php';
            ?>
            <div class="d-flex">
                <?php
                include_once 'app/adms/include/menu.php';

                ?>
                <div class="content p-1">
                    <div class="list-group-item">
                        <div class="d-flex">
                            <div class="mr-auto p-2">
                                <h2 class="display-4 titulo">Detalhe da Página</h2>
                            </div>
                            <div class="p-2">
                                <span class="d-none d-md-block">
                                    <?php
                                    $btn_list = carregar_btn('listar/list_pagina', $conn);
                                    if ($btn_list) {
                                        echo "<a href='" . pg . "/listar/list_pagina' class='btn btn-outline-info btn-sm'>
                            Listar
                            </a> ";
                                    }
                                    $btn_edit = carregar_btn('editar/edit_pagina', $conn);
                                    if ($btn_edit) {
                                        if ($resultado_niv_aces and $resultado_niv_aces->num_rows != 0) {
                                            echo "<a href='" . pg . "/editar/edit_pagina?id=" . $row_pg_vis['id'] . "' class='btn btn-outline-warning btn-sm'>
                                    Editar
                                    </a> ";
                                        }
                                    }
                                    $btn_apagar = carregar_btn('processa/apagar_pagina', $conn);
                                    if ($btn_apagar) {
                                        if ($resultado_niv_aces and $resultado_niv_aces->num_rows != 0) {
                                            echo "<a href='" . pg . "/processa/apagar_pagina?id=" . $row_pg_vis['id'] . "'' 
                                        class='btn btn-outline-danger btn-sm'
                                        data-confirm='Tem certeza de que deseja excluir o item selecionado?'>
                                    Apagar
                                    </a>";
                                        }
                                    }
                                    ?>
                                </span>
                                <div class="dropdown d-block d-md-none">
                                    <button class="btn btn-primary dropdown-toggle btn-sm" type="button" id="acoesListar" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Ações
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="acoesListar">
                                        <?php
                                        $btn_list = carregar_btn('listar/list_pagina', $conn);
                                        if ($btn_list) {
                                            echo "<a class='dropdown-item' href='" . pg . "/listar/list_pagina'>
                                                        Listar
                                                        </a>";
                                        }
                                        $btn_edit = carregar_btn('editar/edit_pagina', $conn);
                                        if ($btn_edit) {
                                            if ($resultado_niv_aces and $resultado_niv_aces->num_rows != 0) {
                                                echo "<a class='dropdown-item' href='" . pg . "/editar/edit_pagina?id=" . $row_pg_vis['id'] . "'>
                                                        Editar
                                                        </a>";
                                            }
                                        }
                                        $btn_apagar = carregar_btn('processa/apagar_pagina', $conn);
                                        if ($btn_apagar) {
                                            if ($resultado_niv_aces and $resultado_niv_aces->num_rows != 0) {
                                                echo "<a class='dropdown-item' href='" . pg . "/processa/apagar_pagina?id=" . $row_pg_vis['id'] . "'
                                            data-confirm='Tem certeza de que deseja excluir o item selecionado?'>
                                                        Apagar
                                                        </a>";
                                            }
                                        }
                                        ?>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <dl class="row">
                            <dt class="col-sm-3">ID</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['id']; ?></dd>

                            <dt class="col-sm-3">Nome Página</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['nome_pagina']; ?></dd>

                            <dt class="col-sm-3">Endereço</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['endereco']; ?></dd>

                            <dt class="col-sm-3">Observação</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['obs']; ?></dd>

                            <dt class="col-sm-3">Palavra chave</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['keywords']; ?></dd>

                            <dt class="col-sm-3">Descrição</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['description']; ?></dd>

                            <dt class="col-sm-3">Autor</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['author']; ?></dd>

                            <dt class="col-sm-3">Pública</dt>
                            <dd class="col-sm-9"><?php
                                                    if ($row_pg_vis['lib_pub'] == 1) {
                                                        echo "<span class='badge badge-success'>Sim</span>";
                                                    } else {
                                                        echo "<span class='badge badge-danger'>Não</span>";
                                                    }
                                                    ?></dd>

                            <dt class="col-sm-3">Ícone</dt>
                            <dd class="col-sm-9"><?php
                                                    if (!empty($row_pg_vis['icone'])) {
                                                        echo "<i class='" . $row_pg_vis['icone'] . "'></i> : " . $row_pg_vis['icone'];
                                                    } else {
                                                        echo "Vazio";
                                                    }
                                                    ?></dd>

                            <dt class="col-sm-3">Depende</dt>
                            <dd class="col-sm-9"><?php 
                            if($row_pg_vis['id_depg'] != 0) {
                                echo  "<a href='" . pg . "/visualizar/vis_pagina?id=" . $row_pg_vis['id_depg'] . "'>".$row_pg_vis['nome_depg']."</a>"; 
                            } else {
                                echo "<span class='badge badge-danger'>Não</span>";
                            } ?></dd>
                            <dt class="col-sm-3">Grupo</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['adms_grps_pg_id']; ?></dd>

                            <dt class="col-sm-3">Tipo</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['adms_tps_pg_id']; ?></dd>

                            <dt class="col-sm-3">Indexar</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['adms_robot_id']; ?></dd>

                            <dt class="col-sm-3">Situação</dt>
                            <dd class="col-sm-9"><?php echo $row_pg_vis['adms_sits_pg_id']; ?></dd>

                            <dt class="col-sm-3">Data do Cadastro</dt>
                            <dd class="col-sm-9"><?php echo date('d/m/Y H:i:s', strtotime($row_pg_vis['created'])); ?></dd>

                            <dt class="col-sm-3">Data Modificado</dt>
                            <dd class="col-sm-9"><?php
                                                    if (!empty($row_pg_vis['modified'])) {
                                                        echo date('d/m/Y H:i:s', strtotime($row_pg_vis['modified']));
                                                    } else {
                                                        echo "Não foi modificado";
                                                    }
                                                    ?></dd>
                        </dl>
                    </div>
                </div>
                <?php
                include_once 'app/adms/include/rodape_lib.php';
                ?>

            </div>
        </body>

<?php
    } else {
        $_SESSION['msg'] = "<div class='alert alert-danger'>
        Página não encontrada</div>";
        $url_destino = pg . '/listar/list_pagina';
        header("Location: $url_destino");
    }
} else {
    $_SESSION['msg'] = "<div class='alert alert-danger'>
    Página não encontrada</div>";
    $url_destino = pg . '/acesso/login';
    header("Location: $url_destino");
}
