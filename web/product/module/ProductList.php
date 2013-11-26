<?php

/*
	[插件名称] 自选产品列表
	[适用范围] 全站
*/

function ProductList(){

	global $fsql,$msql;

		
		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$shownums=$GLOBALS["PLUSVARS"]["shownums"];
		$ord=$GLOBALS["PLUSVARS"]["ord"];
		$sc=$GLOBALS["PLUSVARS"]["sc"];
		$showtj=$GLOBALS["PLUSVARS"]["showtj"];
		$cutword=$GLOBALS["PLUSVARS"]["cutword"];
		$cutbody=$GLOBALS["PLUSVARS"]["cutbody"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$catid=$GLOBALS["PLUSVARS"]["catid"];
		$projid=$GLOBALS["PLUSVARS"]["projid"];
		$tags=$GLOBALS["PLUSVARS"]["tags"];
		$pagename=$GLOBALS["PLUSVARS"]["pagename"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$picw=$GLOBALS["PLUSVARS"]["picw"];
		$pich=$GLOBALS["PLUSVARS"]["pich"];
		$fittype=$GLOBALS["PLUSVARS"]["fittype"];


		//地址栏参数

		if($pagename=="query" && strstr($_SERVER["QUERY_STRING"],".html")){
			$Arr=explode(".html",$_SERVER["QUERY_STRING"]);
			$nowcatid=$Arr[0];
		}elseif($_GET["catid"]>0){
			$nowcatid=$_GET["catid"];
		}else{
			$nowcatid=0;
		}


		//默认条件		
		$scl=" iffb='1' and catid!='0' ";

		if($showtj!="" && $showtj!="0"){
			$scl.=" and tj='1' ";
		}

		//显示分类规则:如果后台不指定分类,则显示当前所在分类,否则不限分类

		if($catid!=0 && $catid!=""){
			$catid=fmpath($catid);
			$scl.=" and catpath regexp '$catid' ";
		}elseif($nowcatid!=0 && $nowcatid!=""){
			$catid=fmpath($nowcatid);
			$scl.=" and catpath regexp '$catid' ";
		}

		//匹配专题
		if($projid!=0 && $projid!=""){
			$projid=fmpath($projid);
			$scl.=" and proj regexp '$projid' ";
		}



		//判断匹配标签
		if($tags!=""){
			$tags=$tags.",";
			$scl.=" and tags regexp '$tags' ";
		}


		//模版解释
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		$var=array(
			'coltitle' => $coltitle,
			'morelink' => $morelink
		);
		$str=ShowTplTemp($TempArr["start"],$var);

		$picnum=1;
		$fsql->query("select * from {P}_product_con where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$catpath=$fsql->f('catpath');
			$dtime=$fsql->f('dtime');
			$nowcatid=$fsql->f('catid');
			$ifnew=$fsql->f('ifnew');
			$ifred=$fsql->f('ifred');
			$ifbold=$fsql->f('ifbold');
			$author=$fsql->f('author');
			$source=$fsql->f('source');
			$cl=$fsql->f('cl');
			$src=$fsql->f('src');
			$cl=$fsql->f('cl');
			$prop1=$fsql->f('prop1');
			$prop2=$fsql->f('prop2');
			$prop3=$fsql->f('prop3');
			$prop4=$fsql->f('prop4');
			$prop5=$fsql->f('prop5');
			$prop6=$fsql->f('prop6');
			$prop7=$fsql->f('prop7');
			$prop8=$fsql->f('prop8');
			$prop9=$fsql->f('prop9');
			$prop10=$fsql->f('prop10');
			$prop11=$fsql->f('prop11');
			$prop12=$fsql->f('prop12');
			$prop13=$fsql->f('prop13');
			$prop14=$fsql->f('prop14');
			$prop15=$fsql->f('prop15');
			$prop16=$fsql->f('prop16');
			$prop17=$fsql->f('prop17');
			$prop18=$fsql->f('prop18');
			$prop19=$fsql->f('prop19');
			$prop20=$fsql->f('prop20');
			$memo=$fsql->f('memo');

			

			if($GLOBALS["CONF"]["CatchOpen"]=="1" && file_exists(ROOTPATH."product/html/".$id.".html")){
				$link=ROOTPATH."product/html/".$id.".html";
			}else{
				$link=ROOTPATH."product/html/?".$id.".html";
			}
	
			
			$dtime=date("Y-m-d",$dtime);

			if($ifbold=="1"){$bold=" style='font-weight:bold' ";}else{$bold="";}

			if($ifred!="0"){$red=" style='color:".$ifred."' ";}else{$red="";}

			if($cutword!="0"){$title=csubstr($title,0,$cutword);}
			if($cutbody!="0"){$memo=csubstr($memo,0,$cutbody);}


			if($src==""){$src="product/pics/nopic.gif";}
			
			$src=ROOTPATH.$src;


			//参数列
			$propstr="";

			$i=1;
			$msql->query("select * from {P}_product_prop where catid='$nowcatid' order by xuhao");
			while($msql->next_record()){
				$propname=$msql->f('propname');
				$pn="prop".$i;
				$pstr=str_replace("{#propname#}",$propname,$TempArr["m1"]);
				$pstr=str_replace("{#prop#}",$$pn,$pstr);

				$propstr.=$pstr;

			$i++;
			}



			//模版标签解释

			$var=array (
			'title' => $title, 
			'memo' => $memo,
			'propstr' => $propstr, 
			'dtime' => $dtime, 
			'red' => $red, 
			'bold' => $bold,
			'link' => $link,
			'target' => $target,
			'author' => $author, 
			'source' => $source,
			'cat' => $cat, 
			'src' => $src, 
			'picw' => $picw,
			'pich' => $pich,
			'cl' => $cl
			);
			$str.=ShowTplTemp($TempArr["list"],$var);


		$picnum++;

		}

		$var=array(
			'fittype' => $fittype
		);
		$str.=ShowTplTemp($TempArr["end"],$var);


		return $str;

}

?>