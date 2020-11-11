<?php
	$servidor = "127.0.0.1";
	$usuario = "mensajero";
	$clave = "10031158Jorge";
	$nombre_bd = "test";

	$enlace = new mysqli($servidor, $usuario, $clave, $nombre_bd);
    $GLOBALS['enlace'] = $enlace;
 

    //smtp
	$GLOBALS['smtp_host'] = "smtp.mailtrap.io";
	$GLOBALS['smtp_user'] = "ddee0897e73e83";
	$GLOBALS['smtp_pass'] = "fcf90e4c4cdd7e";
    $GLOBALS['smtp_port'] = 2525;
    

    if (!$enlace) {
        echo "Error: No se pudo conectar a la base de datos.";
        //echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
        //echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    }else{
        //echo "Conexión exitosa"; 
	}
?>