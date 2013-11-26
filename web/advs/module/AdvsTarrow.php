<?php

/*
	[²å¼þÃû³Æ] Ë«¼ýÍ·Í¼Æ¬ÂÖ²¥(¿É¹²ÏíÉèÖÃ) 
	[ÊÊÓÃ·¶Î§] È«Õ¾
*/

function AdvsTarrow () { 

	global $msql;

	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$shownums=$GLOBALS["PLUSVARS"]["shownums"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	$groupid=$GLOBALS["PLUSVARS"]["groupid"];
	
	//Ä£°æ½âÊÍ
	$Temp=LoadTemp($tempname);
	$TempArr=SplitTblTemp($Temp);

	$var=array(
		'coltitle' => $coltitle
	);

	if($_COOKIE["PLUSADMIN"]!="SET"){
		$str="<script src='//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js'></script>";
	}

	$str.=ShowTplTemp($TempArr["start"],$var);

	$n=0;
	$msql->query("select * from {P}_advs_lb  where groupid='$groupid' order by xuhao limit 0,$shownums");
	while($msql->next_record()){
		$id=$msql->f('id');
		$src=$msql->f('src');
		$url=$msql->f('url');
		$title=$msql->f('title');
		$text=$msql->f('text');

		$src=ROOTPATH.$src;
		$var=array (
		'n' => $n, 
		'src' => $src, 
		'url' => $url
		);
		$str.=ShowTplTemp($TempArr["list"],$var);
		
		$n++;
	}

	$str.=$TempArr["end"];

	return $str;

	
}



?>