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
    if ($_SESSION['adms_niveis_acesso_id'] == 1) {
        //Pesquisar os dados da tabela níveis_acesso_pagnas
        $result_niv_ac_pg = "SELECT nivacpg.dropdown, nivacpg.adms_niveis_acesso_id
        FROM adms_nivacs_pgs nivacpg
        WHERE nivacpg.id='$id' LIMIT 1";
    } else {
        $result_niv_ac_pg = "SELECT nivacpg.dropdown, nivacpg.adms_niveis_acesso_id
        FROM adms_nivacs_pgs nivacpg
        INNER JOIN adms_niveis_acessos nivac ON nivac.id=nivacpg.adms_niveis_acesso_id
        WHERE nivacpg.id='$id' AND nivac.ordem > '" . $_SESSION['ordem'] . "' LIMIT 1";
    }

    $resultado_niv_ac_pg = mysqli_query($conn, $result_niv_ac_pg);

    if ($resultado_niv_ac_pg and $resultado_niv_ac_pg->num_rows != 0) {
        $row_niv_ac_pg  = mysqli_fetch_assoc($resultado_niv_ac_pg);

        if ($row_niv_ac_pg['dropdown'] == 1) {
            $status = 2;
        } else {
            $status = 1;
        }
        $result_niv_pg_up = "UPDATE adms_nivacs_pgs SET
        dropdown='$status',
        modified=NOW()
        WHERE id='$id'";

        mysqli_query($conn, $result_niv_pg_up);

        if (mysqli_affected_rows($conn)) {
            $_SESSION['msg'] = "<div class='alert alert-success'>
            Situação do menu dropdown editado com sucesso!</div>";
            $url_destino = pg . '/listar/list_permissao?id='.$row_niv_ac_pg['adms_niveis_acesso_id'];
            header("Location: $url_destino");
        } else {
            $_SESSION['msg'] = "<div class='alert alert-danger'>
            Erro a situação do menu dropdown não editado com sucesso!</div>";
            $url_destino = pg . '/listar/list_permissao?id='.$row_niv_ac_pg['adms_niveis_acesso_id'];
            header("Location: $url_destino");
        }
    } else {
        $_SESSION['msg'] = "<div class='alert alert-danger'>
        Página não encontrada</div>";
        $url_destino = pg . '/listar/list_niv_aces';
        header("Location: $url_destino");
    }
} else {
    $_SESSION['msg'] = "<div class='alert alert-danger'>
    Página não encontrada</div>";
    $url_destino = pg . '/acesso/login';
    header("Location: $url_destino");
}
