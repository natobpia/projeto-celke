<?php
    
    if(!isset($seguranca)){
        exit;
    }
    
    function limpaURL($conteudo){
        $formato_a = '"!@#$%¨&*(){}:;,\\\'<>º';
        $formato_b = '________________________';
        
        $conteudo_ct = strtr($conteudo, $formato_a, $formato_b);
        
        $conteudo_br = str_ireplace(" ", "", $conteudo_ct);
        
        $conteudo_st = strip_tags($conteudo_br);
        
        $conteudo_lp = trim($conteudo_st);
        
        return $conteudo_lp;
    }
    