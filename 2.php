<?php  
$var = array('a','b','g','e');
arrayfunction($var);
function arrayfunction($a) {
        sort($a);
        echo "huruf terkecil dan terbsesar adalah <br>";
        echo ("['".$a[0]."','".$a[count($a)-1]."']");
}

echo "<br>";
echo "<br>";

$var = array('a'=>0,'b'=>1,'g'=>2,'e'=>3);
arrayfunctions($var);
function arrayfunctions($a) {
        sort($a);
        echo "huruf terkecil dan terbsesar data lain adalah <br>";
        echo ("['".$a[0]."','".$a[3]."']");
}

?>