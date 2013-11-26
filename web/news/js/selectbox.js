var nowOpenedSelectBox = "";
var mousePosition = "";

function selectThisValue(thisId,thisIndex,thisValue,thisString) {
    var objId = thisId;
    var nowIndex = thisIndex;
    var valueString = thisString;
    var sourceObj = document.getElementById(objId);
    var nowSelectedValue = document.getElementById(objId+"SelectBoxOptionValue"+nowIndex).value;
    hideOptionLayer(objId);
    if (sourceObj) sourceObj.value = nowSelectedValue;
    settingValue(objId,valueString);
    selectBoxFocus(objId);
    if (sourceObj.onchange) sourceObj.onchange();
}

function settingValue(thisId,thisString) {
    var objId = thisId;
    var valueString = thisString;
    var selectedArea = document.getElementById(objId+"selectBoxSelectedValue");
    if (selectedArea) 
	{
		if(navigator.appName.indexOf("Explorer") > -1)
			selectedArea.innerText = valueString;
		else
			selectedArea.textContent = valueString;
	}
}

function viewOptionLayer(thisId) {
    var objId = thisId;
    var optionLayer = document.getElementById(objId+"selectBoxOptionLayer");
    if (optionLayer) optionLayer.style.display = "";
    nowOpenedSelectBox = objId;
    setMousePosition("inBox");
}

function hideOptionLayer(thisId) {
    var objId = thisId;
    var optionLayer = document.getElementById(objId+"selectBoxOptionLayer");
    if (optionLayer) optionLayer.style.display = "none";
}

function setMousePosition(thisValue) {
    var positionValue = thisValue;
    mousePosition = positionValue;
}

function clickMouse() {
    if (mousePosition == "out") hideOptionLayer(nowOpenedSelectBox);
}

function selectBoxFocus(thisId) {
    var objId = thisId;
    var obj = document.getElementById(objId + "selectBoxSelectedValue");
    obj.className = "selectBoxSelectedAreaFocus";
    obj.focus();
}

function selectBoxBlur(thisId) {
    var objId = thisId;
    var obj = document.getElementById(objId + "selectBoxSelectedValue");
    obj.className = "selectBoxSelectedArea";

}

function makeSelectBox(thisId, imgsrc) {
    var downArrowSrc = imgsrc + "news/templates/images/down.jpg";
    var downArrowSrcWidth = 13;
    var optionHeight = 20;
    var optionMaxNum = 6;
    var optionInnerLayerHeight = "";
    var objId = thisId;
    var obj = document.getElementById(objId);
    var selectBoxWidth = parseInt(obj.style.width);
    var selectBoxHeight = parseInt(obj.style.height);
    if (obj.options.length > optionMaxNum) optionInnerLayerHeight = "height:"+ (optionHeight * optionMaxNum) + "px";
    newSelect  = "<div><table id='" + objId + "selectBoxOptionLayer' cellpadding='0' cellspacing='0' border='0' style='position:absolute;z-index:100;display:none;' onMouseOver=\"viewOptionLayer('"+ objId + "')\" onMouseOut=\"setMousePosition('out')\">";
    newSelect += "    <tr>";
    newSelect += "        <td height='" + selectBoxHeight + "px' style='cursor:pointer;' onClick=\"hideOptionLayer('"+ objId + "')\"></td>";
    newSelect += "    </tr>";
    newSelect += "    <tr>";
    newSelect += "        <td height='0'></td>";
    newSelect += "    </tr>";
    newSelect += "    <tr>";
    newSelect += "        <td bgcolor='#D3D3D3'>";
    newSelect += "        <div class='selectBoxOptionInnerLayer' style='width:" + (selectBoxWidth) + "px;" + optionInnerLayerHeight + "'>";
    newSelect += "        <table cellpadding='0' cellspacing='0' border='0' width='100%' style='table-layout:fixed;word-break:break-all;'>";
    for (var i=0 ; i < obj.options.length ; i++) {
        var nowValue = obj.options[i].value;
        var nowText = obj.options[i].text;
        newSelect += "            <tr>";
        newSelect += "                <td onMouseOver=this.style.backgroundColor='#eee';this.style.color='#8c8c8c';return true;  onMouseOut=this.style.backgroundColor='#ffffff';this.style.color='#8c8c8c';return true; bgcolor=#d2a67f height='" + optionHeight + "px' class='selectBoxOption' onMouseOver=\"this.className='selectBoxOptionOver'\" onMouseOut=\"this.className='selectBoxOption'\" onClick=\"selectThisValue('"+ objId + "'," + i + ",'" + nowValue + "','" + nowText + "')\" style='cursor:pointer;' >" + nowText + "</td>";
        newSelect += "                <input type='hidden' id='"+ objId + "SelectBoxOptionValue" + i + "' value='" + nowValue + "'>";
        newSelect += "            </tr>";
    }
    newSelect += "        </table>";
    newSelect += "        </div>";
    newSelect += "        </td>";
    newSelect += "    </tr>";
    newSelect += "</table>";
    newSelect += "<table cellpadding='0' cellspacing='0' border='0' onClick=\"viewOptionLayer('"+ objId + "')\" style='cursor:pointer;border:1px #474747 solid;'>";
    newSelect += "    <tr>";
    newSelect += "       <td><div id='" + objId + "selectBoxSelectedValue' class='selectBoxSelectedArea' style='width:" + (selectBoxWidth - downArrowSrcWidth - 3) + "px;height:" + (selectBoxHeight - 2) + "px;overflow:hidden;' onBlur=\"selectBoxBlur('" + objId + "')\" ></div></td>";
    newSelect += "       <td><img src='" + downArrowSrc + "' width='" + downArrowSrcWidth + "' border='0'></td>";
    newSelect += "    </tr>";
    newSelect += "</table>";
    newSelect += "        </td>";
    newSelect += "    </tr>";
    newSelect += "</table></div>";
    document.write(newSelect);
    
    var haveSelectedValue = false;
    for (var i=0 ; i < obj.options.length ; i++) {
        if (obj.options[i].selected == true) {
            haveSelectedValue = true;
            settingValue(objId,obj.options[i].text);
        }
    }
    if (!haveSelectedValue) settingValue(objId,obj.options[0].text);

}


document.onmousedown = clickMouse;
