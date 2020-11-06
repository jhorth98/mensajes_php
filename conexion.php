<?php
	$servidor = "127.0.0.1";
	$usuario = "mensajero";
	$clave = "10031158Jorge";
	$nombre_bd = "test";

	$enlace = mysqli_connect($servidor, $usuario, $clave, $nombre_bd);

	if (!$enlace) {
	    echo "Error: No se pudo conectar a la base de datos.";
	    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    	echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
	}else{
		echo "Conexión exitosa";
		mysqli_close($enlace);	
	}
?>