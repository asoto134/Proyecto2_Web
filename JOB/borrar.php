<?php

$fh = fopen('reporte_diario.txt', 'a');
fclose($fh);
$borrar=unlink('reporte_diario.txt');
echo "<script type='text/javascript'>"; 
echo "window.close()"; 
echo "</script>"; 
exit();



?>