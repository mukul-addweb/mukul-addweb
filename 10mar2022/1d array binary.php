<?php 
$arr = array(5,4,6,8,7);
$b= 10;
$flag=0;
for($i=0;$i<count($arr);$i++){
    if($arr[$i]==$b){
        $flag=1;
        break;
    }
}
if($flag==1)
    echo "value is - ".$i;
else
    echo "value not found";
?>