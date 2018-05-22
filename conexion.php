<?php
function conectar(){
	$conn = pg_connect("host=127.0.0.1 port=5432 dbname=tercerexamenbd user=rexamen3_user password=hola123.,");
	return $conn;
}
?>
