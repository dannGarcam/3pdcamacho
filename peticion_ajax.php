<?php
include 'conexion.php';
$conn = conectar();
$query = ("SELECT apaterno,amaterno,nombre,correo,telefono FROM usuarios ORDER BY apaterno ASC");
$process = pg_query($conn, $query);
if  (!$process) {
	echo "La consulta es incorrecta,no se encontraron los datos correspondientes";
	} else {
		echo '<table border="1"><tr><th>Apellido</th><th>Nombre</th><th>Correo</th><th>Telefono</th></tr>';while ($row = pg_fetc($process)) {
		echo '<tr><td>'.$row[0].' '.$row[1].'</td><td>'.$row[2].'</td><td>'.$row[3].'</td></tr>';	}
		echo '</table>';
	}
pg_close($conn);
?>
