<?php
if (!isset($seguranca)) {
    exit;
}
$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
if (!empty($id)) {
    //Recebendo o número da página

    $pagina_atual = filter_input(INPUT_GET, 'pagina', FILTER_SANITIZE_NUMBER_INT);
    $pagina = (!empty($pagina_atual) ? $pagina_atual : 1);

    $qnt_result_pg = 50;

    $inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;

    if ($_SESSION['adms_niveis_acesso_id'] == 1) {
        $result_niv_ac = "SELECT nivpg.*,
        pg.nome_pagina, pg.obs
        FROM adms_nivacs_pgs nivpg
        INNER JOIN adms_paginas pg ON pg.id=nivpg.adms_pagina_id
        WHERE nivpg.adms_niveis_acesso_id='$id' 
        ORDER BY nivpg.ordem ASC LIMIT $inicio, $qnt_result_pg";
    } else {
    }
    $resultado_niv_ac = mysqli_query($conn, $result_niv_ac);

    //Verificar se encontro algum cadastro

    if ($resultado_niv_ac and $resultado_niv_ac->num_rows != 0) {

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
                                <?php
                                $result_nome_nivac = "SELECT nome FROM adms_niveis_acessos WHERE id='$id' LIMIT 1";
                                $resultado_nome_nivac = mysqli_query($conn, $result_nome_nivac);
                                $row_nome_nivac = mysqli_fetch_assoc($resultado_nome_nivac);
                                ?>
                                <h2 class="display-4 titulo">Listar Permissões - <?php echo $row_nome_nivac['nome'] ?></h2>
                            </div>
                            <div class="p-2">
                                <?php
                                $btn_cad = carregar_btn('listar/list_niv_aces', $conn);
                                if ($btn_cad) {
                                    echo "<a href='" . pg . "/listar/list_niv_aces'
                            class='btn btn-outline-info btn-sm'>Listar</a>";
                                }
                                ?>
                            </div>
                        </div>
                        <?php
                        if (isset($_SESSION['msg'])) {
                            echo $_SESSION['msg'];
                            unset($_SESSION['msg']);
                        }
                        ?>
                        <div class="table-responsive">
                            <table class="table table-striped table-hover table-bordered">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Página</th>
                                        <th class="d-none d-sm-table-cell">Permissão</th>
                                        <th class="d-none d-sm-table-cell">Menu</th>
                                        <th class="d-none d-sm-table-cell">Dropdown</th>
                                        <th class="d-none d-sm-table-cell">Ordem</th>
                                        <th class="text-center">Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    while ($row_niv_ac = mysqli_fetch_assoc($resultado_niv_ac)) {
                                    ?>
                                        <tr>
                                            <th><?php echo $row_niv_ac['id']; ?></th>
                                            <td>
                                                <span tabindex="0" data-placement="top" data-toggle="tooltip" title="<?php echo $row_niv_ac['obs']; ?>">
                                                    <i class="fas fa-question-circle"></i>
                                                </span>
                                                <?php echo $row_niv_ac['nome_pagina']; ?>
                                            </td>
                                            <td class="d-none d-sm-table-cell"><?php echo $row_niv_ac['permissao']; ?></td>
                                            <td class="d-none d-sm-table-cell"><?php echo $row_niv_ac['lib_menu']; ?></td>
                                            <td class="d-none d-sm-table-cell"><?php echo $row_niv_ac['dropdown']; ?></td>
                                            <td class="d-none d-sm-table-cell"><?php echo $row_niv_ac['ordem']; ?></td>
                                            <td class="text-center">
                                                <span class="d-none d-md-block">
                                                    <?php
                                                    $btn_vis = carregar_btn('visualizar/vis_pagina', $conn);
                                                    if ($btn_vis) {
                                                        echo "<a href='" . pg . "/visualizar/vis_pagina?id=" . $row_niv_ac['id'] . "' 
                                                        class='btn btn-outline-primary btn-sm'>
                                                        Visualizar
                                                        </a> ";
                                                    }
                                                    $btn_edit = carregar_btn('editar/edit_pagina', $conn);
                                                    if ($btn_edit) {
                                                        echo "<a href='" . pg . "/editar/edit_pagina?id=" . $row_niv_ac['id'] . "' 
                                                        class='btn btn-outline-warning btn-sm'>
                                                        Editar
                                                        </a> ";
                                                    }
                                                    $btn_apagar = carregar_btn('processa/apagar_pagina', $conn);
                                                    if ($btn_apagar) {
                                                        echo "<a href='" . pg . "/processa/apagar_pagina?id=" . $row_niv_ac['id'] . "''
                                                        class='btn btn-outline-danger btn-sm'
                                                        data-confirm='Tem certeza de que deseja excluir o item selecionado?'>
                                                        Apagar</a>";
                                                    }
                                                    ?>
                                                </span>
                                                <div class="dropdown d-block d-md-none">
                                                    <button class="btn btn-primary dropdown-toggle btn-sm" type="button" id="acoesListar" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Ações
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="acoesListar">
                                                        <?php
                                                        $btn_vis = carregar_btn('visualizar/vis_pagina', $conn);
                                                        if ($btn_vis) {
                                                            echo "<a class='dropdown-item' href='" . pg . "/visualizar/vis_pagina?id=" . $row_niv_ac['id'] . "'>
                                                        Visualizar
                                                        </a>";
                                                        }
                                                        $btn_edit = carregar_btn('editar/edit_pagina', $conn);
                                                        if ($btn_edit) {
                                                            echo "<a class='dropdown-item' href='" . pg . "/editar/edit_pagina?id=" . $row_niv_ac['id'] . "'>
                                                        Editar
                                                        </a>";
                                                        }
                                                        $btn_apagar = carregar_btn('processa/apagar_pagina', $conn);
                                                        if ($btn_apagar) {
                                                            echo "<a class='dropdown-item' href='" . pg . "/processa/apagar_pagina?id=" . $row_niv_ac['id'] . "'
                                                            data-confirm='Tem certeza de que deseja excluir o item selecionado?'>
                                                        Apagar
                                                        </a>";
                                                        }
                                                        ?>

                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    <?php
                                    }
                                    ?>

                                </tbody>
                            </table>
                            <?php
                            $result_pg = "SELECT COUNT(id) AS num_result
                            FROM adms_nivacs_pgs
                            WHERE adms_niveis_acesso_id='$id'";

                            $resultado_pg = mysqli_query($conn, $result_pg);
                            $row_pg = mysqli_fetch_assoc($resultado_pg);
                            //echo $row_pg['num_result'];
                            //Quantidade de páginas.
                            $quantidade_pg = ceil($row_pg['num_result'] / $qnt_result_pg);
                            //Limitar os links antes depois
                            $max_links = 2;
                            echo "<nav aria-label='paginacao-blog'>";
                            echo "<ul class='pagination pagination-sm justify-content-center'>";
                            echo "<li class='page-item'>";
                            echo "<a class='page-link' href='" . pg . "/listar/list_permissao?id=$id&pagina=1' tabindex='-1'>Primeira</a>";
                            echo "</li>";

                            for ($pag_ant = $pagina - $max_links; $pag_ant <= $pagina - 1; $pag_ant++) {
                                if ($pag_ant >= 1) {
                                    echo "<li class='page-item'><a class='page-link' 
                                href='" . pg . "/listar/list_permissao?id=$id&pagina=$pag_ant'>$pag_ant</a></li>";
                                }
                            }

                            echo "<li class='page-item active'>";
                            echo "<a class='page-link' href='#'>$pagina</a>";
                            echo "</li>";

                            for ($pag_dep = $pagina + 1; $pag_dep <= $pagina + $max_links; $pag_dep++) {
                                if ($pag_dep <= $quantidade_pg) {
                                    echo "<li class='page-item'><a class='page-link' 
                                href='" . pg . "/listar/list_permissao?id=$id&pagina=$pag_dep'>$pag_dep</a></li>";
                                }
                            }

                            echo "<li class='page-item'>";
                            echo "<a class='page-link' href='" . pg . "/listar/list_permissao?id=$id&pagina=$quantidade_pg'>Última</a>";
                            echo "</li>";
                            echo "</ul>";
                            echo "</nav>";
                            ?>
                        </div>
                    </div>

                    <?php
                    include_once 'app/adms/include/rodape_lib.php';
                    ?>
                </div>
            </div>
        </body>
<?php
    } else {
        $_SESSION['msg'] = "<div class='alert alert-danger'>Permissão não
        encontrada</div>";
        $url_destino = pg . '/listar/list_niv_aces';
        header("Location: $url_destino");
    }
} else {
    $_SESSION['msg'] = "<div class='alert alert-danger'>Página não
    encontrada</div>";
    $url_destino = pg . '/acesso/login';
    header("Location: $url_destino");
}
