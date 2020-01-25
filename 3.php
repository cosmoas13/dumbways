<?php  
drawLine('selamat');
function drawLine($a){

    $j = strlen($a);
    for( $i=0; $i<$j; $i++){
        for($k=0; $k<=$i;$k++){
            if($k==$i){
                $l=substr($a,$k, 1);
                echo ($l);
            }else{
                echo "&nbsp&nbsp&nbsp&nbsp";
            }
        }
        echo("<br>");
    }
}
?>