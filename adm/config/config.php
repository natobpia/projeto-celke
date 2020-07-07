<?php

if (!isset($seguranca)) {
    exit;
}

$url_host = filter_input(INPUT_SERVER, 'HTTP_HOST');
define('pg', "http://localhost/celke/adm");
