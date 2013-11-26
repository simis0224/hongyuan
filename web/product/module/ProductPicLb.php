<?php

/*
	[插件名称] 图片轮播xml
	[适用范围] 全站
*/

function ProductPicLb () { 

	global $msql;

	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	$catid=$GLOBALS["PLUSVARS"]["catid"];
	$picw=$GLOBALS["PLUSVARS"]["picw"];
	$pich=$GLOBALS["PLUSVARS"]["pich"];
	$showtj=$GLOBALS["PLUSVARS"]["showtj"];
	//模版解释
	$Temp=LoadTemp($tempname);

	$var=array (
	'catid' => $catid, 
	'picw' => $picw, 
	'pich' => $pich,
	'showtj' => $showtj
	);
	
	$str=ShowTplTemp($Temp,$var);

	return $str;

	
}



?>