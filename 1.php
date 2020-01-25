<?php
$burung = 6969;
$lahir = 6969;
$persen = 0.11 * 6969;

for ($i = 1; $i<=441; $i++) {
    if ($i % 21 == 0) {
        $burung = $burung + $lahir - $persen;
        echo " hari " .$i. " jumlah Burung ". $burung;
        echo "<br>";
    }
}

?>