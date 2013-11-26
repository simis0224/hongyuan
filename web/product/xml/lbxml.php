<?php
define("ROOTPATH", "../../");
include(ROOTPATH."includes/common.inc.php");

$g=$_GET["g"];
$arr=explode("|",$g);
$catid=$arr[0];
$rp=$arr[1];
$showtj=$arr[2];
if($showtj!="" && $showtj!="0"){
	$scl=" and tj='1' ";
	$scl2=" where tj='1' ";
}
else{
	$scl="";
	$scl2="";
}

echo "<";
echo "?xml ";
echo "version='1.0'  encoding='utf-8' ";
echo "?";
echo ">\n";
echo "<bcaster autoPlayTime='3'>\n";
if($catid == 0){
	$msql->query("select * from {P}_product_con $scl2 order by id desc limit 0,5");
	while($msql->next_record()){
		$id=$msql->f('id');
		$src=$rp.$msql->f('src');
		$url=$rp."product/html/?".$id.".html";
		if($src != "")
			echo "<item item_url='".$src."'  link='".$url."'  itemtitle=''></item>\n";
	}
}
else{
	$tsql->query("select * from {P}_product_cat where catid='$catid'");
		while($tsql->next_record()){
			$pid = $tsql->f('pid');
			$catpath = $tsql->f('catpath');
				$fsql->query("select catid from {P}_product_cat where catpath regexp '$catpath'");
				while($fsql->next_record()){
					$catid = $fsql->f('catid');
					$msql->query("select * from {P}_product_con where catid='$catid' $scl order by id desc limit 0,5");
					while($msql->next_record()){
						$id=$msql->f('id');
						$src=$rp.$msql->f('src');
						$url=$rp."product/html/?".$id.".html";
						if($src != "")	
							echo "<item item_url='".$src."'  link='".$url."'  itemtitle=''></item>\n";
					}
				}		
		}
}
echo "</bcaster>";
?>
