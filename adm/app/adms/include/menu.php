<nav class="sidebar">
    <ul class="list-unstyled">
        <?php
        $result_menu = "SELECT nivpg.*,
        men.nome, men.icone,
        pg.nome_pagina, pg.endereco, pg.icone 
        FROM adms_nivacs_pgs nivpg
        INNER JOIN adms_menus men ON men.id=nivpg.adms_menu_id
        INNER JOIN adms_paginas pg ON pg.id=nivpg.adms_pagina_id
        WHERE nivpg.adms_niveis_acesso_id='" . $_SESSION['adms_niveis_acesso_id'] . "'
        AND nivpg.permissao=1 
        AND nivpg.lib_menu=1";
        $resultado_menu = mysqli_query($conn, $result_menu);

        while ($row_menu = mysqli_fetch_assoc($resultado_menu)) {
//            echo "ID: " . $row_menu['id'] . "<br>";
//            echo "<i class='" . $row_menu['icone'] . "'></i>" . $row_menu['nome'] . "<br>";
            echo "<li><a href='".pg."/".$row_menu['endereco']."'>
            <i class='" . $row_menu['icone'] . "'></i> " . $row_menu['nome'] . "</a></li>";
        }
        ?>

        <li>
            <a href="#submenu1" data-toggle="collapse">
                <i class="fas fa-user"></i> Usuário
            </a>
            <ul id="submenu1" class="list-unstyled collapse">
                <li><a href="listar.html"><i class="fas fa-users"></i> Usuários</a></li>
                <li><a href="#"><i class="fas fa-key"></i> Nível de Acesso</a></li>
            </ul>
        </li>
        <li>
            <a href="#submenu2" data-toggle="collapse"><i class="fas fa-list-ul"></i> Menu</a>
            <ul id="submenu2" class="list-unstyled collapse">
                <li><a href="#"><i class="fas fa-file-alt"></i> Páginas</a></li>
                <li><a href="#"><i class="fab fa-elementor"></i> Item de Menu</a></li>
            </ul>

        </li>
        <li><a href="#"> Item 1</a></li>
        <li><a href="#"> Item 2</a></li>
        <li><a href="#"> Item 3</a></li>
        <li class="active"><a href="#"> Item 4</a></li>
        <li><a href="#"><i class="fas fa-sign-out-alt"></i> Sair</a></li>
    </ul>
</nav>
