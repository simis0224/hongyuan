<?php

/*
	[�������] ͼƬ�ֲ�xml
	[���÷�Χ] ȫվ
*/

function ProductPicLb () { 

	global $msql;

	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	$catid=$GLOBALS["PLUSVARS"]["catid"];
	$picw=$GLOBALS["PLUSVARS"]["picw"];
	$pich=$GLOBALS["PLUSVARS"]["pich"];
	$showtj=$GLOBALS["PLUSVARS"]["showtj"];
	//ģ�����
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