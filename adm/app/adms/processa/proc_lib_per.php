<?php

if (!isset($seguranca)) {
    exit;
}
include_once 'lib/lib_vazio.php';

$id = filter_input(
    INPUT_GET,
    'id',
    FILTER_SANITIZE_STRING
);

if (!empty($id)) {
    //Pesquisar os dados da tabela adms_nivacs_pgs
    $result_niv_ac_pg = "SELECT nivacpg.permissao, nivacpg.adms_niveis_acesso_id, nivacpg.adms_pagina_id
        FROM adms_nivacs_pgs nivacpg
        INNER JOIN adms_niveis_acessos nivac ON nivac.id=nivacpg.adms_niveis_acesso_id
        WHERE nivacpg.id='$id' AND nivac.ordem > '" . $_SESSION['ordem'] . "' LIMIT 1";

    $resultado_niv_ac_pg = mysqli_query($conn, $result_niv_ac_pg);

    if ($resultado_niv_ac_pg and $resultado_niv_ac_pg->num_rows != 0) {
        $row_niv_ac_pg = mysqli_fetch_assoc($resultado_niv_ac_pg);

        if ($row_niv_ac_pg['permissao'] == 1) {
            $status = 2;
        } else {
            $status = 1;
        }

        $result_niv_pg_up = "UPDATE adms_nivacs_pgs SET
            permissao='$status',
            modified=NOW()
            WHERE id='$id'";

        $resultado_niv_pg_up = mysqli_query($conn, $result_niv_pg_up);
        if (mysqli_affected_rows($conn)) {
            $alteracao = true;
        } else {
            $alteracao = false;
        }

        $result_pg_dep = "SELECT nivacpg.id
        FROM adms_paginas pg
        LEFT JOIN adms_nivacs_pgs nivacpg ON nivacpg.adms_pagina_id=pg.id
        WHERE pg.depend_pg='" . $row_niv_ac_pg['adms_pagina_id'] . "'
        AND nivacpg.adms_niveis_acesso_id='" . $row_niv_ac_pg['adms_niveis_acesso_id'] . "' ";

        $resultado_pg_dep = mysqli_query($conn, $result_pg_dep);

        if ($resultado_pg_dep and $resultado_pg_dep->num_rows != 0) {
            while ($row_pg_dep = mysqli_fetch_assoc($resultado_pg_dep)) {
                $result_niv_pg_up = "UPDATE adms_nivacs_pgs SET
                permissao='$status',
                modified=NOW()
                WHERE id='" . $row_pg_dep['id'] . "'";
                $resultado_niv_pg_up = mysqli_query($conn, $result_niv_pg_up);
            }
            if (mysqli_affected_rows($conn)) {
                $alteracao = true;
            } else {
                $alteracao = false;
            }
        }
        if ($alteracao) {
            $_SESSION['msg'] = "<div class='alert alert-success'>
                Permissão editada com sucesso!</div>";
            $url_destino = pg . "/listar/list_permissao?id=" . $row_niv_ac_pg['adms_niveis_acesso_id'];
            header("Location: $url_destino");
        } else {
            $_SESSION['msg'] = "<div class='alert alert-danger'>
                Erro ao editar permissão!</div>";
            $url_destino = pg . "/listar/list_permissao?id=" . $row_niv_ac_pg['adms_niveis_acesso_id'];
            header("Location: $url_destino");
        }
    } else {
        $_SESSION['msg'] = "<div class='alert alert-danger'>
            Nível de acesso não encontrado</div>";
        $url_destino = pg . '/listar/list_niv_aces';
        header("Location: $url_destino");
    }
} else {
    $_SESSION['msg'] = "<div class='alert alert-danger'>
    Página não encontrada</div>";
    $url_destino = pg . '/acesso/login';
    header("Location: $url_destino");
}
