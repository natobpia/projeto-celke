<?php
if (!isset($seg)) {
    exit;
}

$result_edit_video = "SELECT * FROM sts_videos WHERE id='1' LIMIT 1";
$resultado_edit_video = mysqli_query($conn, $result_edit_video);
//Verificar se encontrou a página no banco de dados
if (($resultado_edit_video) AND ( $resultado_edit_video->num_rows != 0)) {
    $row_edit_video = mysqli_fetch_assoc($resultado_edit_video);
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
                            <h2 class="display-4 titulo">Editar Vídeo</h2>
                        </div>                        
                    </div><hr>
                    <?php
                    if (isset($_SESSION['msg'])) {
                        echo $_SESSION['msg'];
                        unset($_SESSION['msg']);
                    }
                    ?>
                    <form method="POST" action="<?php echo pg; ?>/processa/proc_sts_edit_video" enctype="multipart/form-data">                          
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>
                                    <span class="text-danger">*</span> Titulo
                                </label>
                                <input name="titulo" type="text" class="form-control" placeholder="Titulo do Vídeo" value="<?php
                                if (isset($_SESSION['dados']['titulo'])) {
                                    echo $_SESSION['dados']['titulo'];
                                } elseif (isset($row_edit_video['titulo'])) {
                                    echo $row_edit_video['titulo'];
                                }
                                ?>">
                            </div>
                            <div class="form-group col-md-6">
                                <label>
                                    <span class="text-danger">*</span> Descrição
                                </label>
                                <input name="descricao" type="text" class="form-control" placeholder="Descrição do Vídeo" value="<?php
                                if (isset($_SESSION['dados']['descricao'])) {
                                    echo $_SESSION['dados']['descricao'];
                                } elseif (isset($row_edit_video['descricao'])) {
                                    echo $row_edit_video['descricao'];
                                }
                                ?>">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label>
                                    <span class="text-danger">*</span> Link do Vídeo Um
                                </label>
                                <textarea name="video_um" class="form-control" rows="5" placeholder="Nome do vídeo um"><?php
                                if (isset($_SESSION['dados']['video_um'])) {
                                    echo $_SESSION['dados']['video_um'];
                                } elseif (isset($row_edit_video['video_um'])) {
                                    echo $row_edit_video['video_um'];
                                }
                                ?>
                                </textarea>
                            </div>

                            <div class="form-group col-md-4">
                                <label>
                                    <span class="text-danger">*</span> Link do Vídeo Dois
                                </label>
                                <textarea name="video_dois" class="form-control" rows="5" placeholder="Nome do vídeo um"><?php
                                if (isset($_SESSION['dados']['video_dois'])) {
                                    echo $_SESSION['dados']['video_dois'];
                                } elseif (isset($row_edit_video['video_dois'])) {
                                    echo $row_edit_video['video_dois'];
                                }
                                ?>
                                </textarea>
                            </div>

                            <div class="form-group col-md-4">
                                <label>
                                    <span class="text-danger">*</span> Link do Vídeo Três
                                </label>
                                <textarea name="video_tres" class="form-control" rows="5" placeholder="Nome do vídeo um"><?php
                                if (isset($_SESSION['dados']['video_tres'])) {
                                    echo $_SESSION['dados']['video_tres'];
                                } elseif (isset($row_edit_video['video_tres'])) {
                                    echo $row_edit_video['video_tres'];
                                }
                                ?>
                                </textarea>
                            </div>
                        </div>
                        <p>
                            <span class="text-danger">* </span>Campo obrigatório
                        </p>
                        <input name="SendEditVideo" type="submit" class="btn btn-warning" value="Salvar">
                    </form>
                </div>    
            </div>

            <?php
            include_once 'app/adms/include/rodape_lib.php';
            ?>
        </div>
    </body>
    <?php
    unset($_SESSION['dados']);
} else {
    $_SESSION['msg'] = "<div class='alert alert-danger'>Vídeos não encontrados!</div>";
    $url_destino = pg . '/visualizar/home';
    header("Location: $url_destino");
}
