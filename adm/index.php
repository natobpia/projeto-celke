<?php
$url = filter_input(INPUT_GET, 'url', FILTER_SANITIZE_STRING);
echo $url;
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        $file = 'app/adms/'.$url.'.php';
        if(file_exists($file)){
            include $file;
        }else{
            include 'app/adms/visualizar/home.php';
        }
        ?>
    </body>
</html>
