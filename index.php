<?php
$nombre_procacidad =  "FORTUNES.txt";
$lineas = file($nombre_procacidad, FILE_IGNORE_NEW_LINES);
if ($_SERVER["QUERY_STRING"] != null ){
    header('Content-Type: text/plain');    
    echo $lineas[array_rand($lineas)];
    exit();
}
?>
<html>
<head>
<title>Fortunes en español</title>
</head>
<body>
<h1> <?php echo $lineas[array_rand($lineas)]; ?> </h1>
</body>
</html>
