
//////////////////////////////////////////////////////
//  www.weiunion.com
//  author: zhunix
//////////////////////////////////////////////////////
var Tuilink_XMLHttpReq;  
function tuilink_createXMLHttpRequest() {  
    try {  
        Tuilink_XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");//IE高版本创建XMLHTTP  
    }  
    catch(E) {  
        try {  
            Tuilink_XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");//IE低版本创建XMLHTTP  
        }  
        catch(E) {  
            Tuilink_XMLHttpReq = new XMLHttpRequest();//兼容非IE浏览器，直接创建XMLHTTP对象  
        }  
    }  
  
}  
function tuilink_sendAjaxRequest(url) {  
    tuilink_createXMLHttpRequest();                                //创建XMLHttpRequest对象  
    Tuilink_XMLHttpReq.open("get", url, true);  
    Tuilink_XMLHttpReq.onreadystatechange = tuilink_processResponse; //指定响应函数  
    Tuilink_XMLHttpReq.send(null);  
}  

function strJsonToJsonByEval(jsonData){   
                var json = eval("(" + jsonData +")");//转换为json对象     
                return json;  
            } 
//回调函数  
function tuilink_record_callback(linkdata)
{
    var str = linkdata.keywords;
//var newstr = $('body').html().replace(eval('/'+str+'/g'),'<a href="" title="buy it">'+str+'</a>');
//alert(document.getElementsByTagName("body")[0].innerHTML);
//alert(document.domain);
//alert(eval("/(>[^<>]*)"+str+"([^<>]*<[/]{1}[^aA]{1})/ig"));
var newstr=document.getElementsByTagName("body")[0].innerHTML.replace(eval("/(<[b-zB-Z]{1}[^<>]*>[^<>]*)"+str+"([^<>]*<[a-zA-Z\\\/]{1}[^<>]*>)/ig"),"$1"+'<a href="http://www.tuiunion.com/tuilink/redirect/'+linkdata.id+'/?domain='+document.domain+'" title="'+linkdata.info+'"  target="_black">'+str+'</a>'+"$2");
document.getElementsByTagName("body")[0].innerHTML="";
document.getElementsByTagName("body")[0].innerHTML=newstr;
}


function tuilink_processResponse() {  
    if (Tuilink_XMLHttpReq.readyState == 4) {  
        if (Tuilink_XMLHttpReq.status == 200) {  
            var text = Tuilink_XMLHttpReq.responseText;  
  
            /** 
             *实现回调 
             */  
            var jsonDatatext = strJsonToJsonByEval(window.decodeURI(text));  
            //alert(jsonDatatext.success);
            // var cp = document.getElementById("cp");  
            // cp.innerHTML = "";  
            // var values = text.split("|");  
            // for (var i = 0; i < values.length; i++) {  
            //     var temp = document.createElement("option");  
            //     temp.text = values[i];  
            //     temp.value = values[i];  
            //     cp.options.add(temp);  
            // }  
            if (jsonDatatext.success)
            {
                for(var prop in jsonDatatext.link) {       
                   //var tmpjsonDatatext = strJsonToJsonByEval(jsonDatatext.link[prop]);   
                   //alert(jsonDatatext.link[prop].keywords);    
                   tuilink_record_callback(jsonDatatext.link[prop]);
                }; 
            }      
  
  
        }  
    }  
  
} 


var tuilink_whenReady = (function() {               //这个函数返回whenReady()函数
    var funcs = [];             //当获得事件时，要运行的函数
    var ready = false;          //当触发事件处理程序时,切换为true
    
    //当文档就绪时,调用事件处理程序
    function handler(e) {
        if(ready) return;       //确保事件处理程序只完整运行一次
        
        //如果发生onreadystatechange事件，但其状态不是complete的话,那么文档尚未准备好
        if(e.type === 'onreadystatechange' && document.readyState !== 'complete') {
            return;
        }
        
        //运行所有注册函数
        //注意每次都要计算funcs.length
        //以防这些函数的调用可能会导致注册更多的函数
        for(var i=0; i<funcs.length; i++) {
            funcs[i].call(document);
        }
        //事件处理函数完整执行,切换ready状态, 并移除所有函数
        ready = true;
        funcs = null;
    }
    //为接收到的任何事件注册处理程序
    if(document.addEventListener) {
        document.addEventListener('DOMContentLoaded', handler, false);
        document.addEventListener('readystatechange', handler, false);            //IE9+
        window.addEventListener('load', handler, false);
    }else if(document.attachEvent) {
        document.attachEvent('onreadystatechange', handler);
        window.attachEvent('onload', handler);
    }
    //返回whenReady()函数
    return function whenReady(fn) {
        if(ready) { fn.call(document); }
        else { funcs.push(fn); }
    }
})();


tuilink_whenReady(function(){


tuilink_sendAjaxRequest("http://www.tuiunion.com/tuilink/gettuilinklist?domain="+document.domain);
=======
//////////////////////////////////////////////////////
//  www.weiunion.com
//  author: zhunix
//////////////////////////////////////////////////////
var Tuilink_XMLHttpReq;  
function tuilink_createXMLHttpRequest() {  
    try {  
        Tuilink_XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");//IE高版本创建XMLHTTP  
    }  
    catch(E) {  
        try {  
            Tuilink_XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");//IE低版本创建XMLHTTP  
        }  
        catch(E) {  
            Tuilink_XMLHttpReq = new XMLHttpRequest();//兼容非IE浏览器，直接创建XMLHTTP对象  
        }  
    }  
  
}  
function tuilink_sendAjaxRequest(url) {  
    tuilink_createXMLHttpRequest();                                //创建XMLHttpRequest对象  
    Tuilink_XMLHttpReq.open("get", url, true);  
    Tuilink_XMLHttpReq.onreadystatechange = tuilink_processResponse; //指定响应函数  
    Tuilink_XMLHttpReq.send(null);  
}  

function strJsonToJsonByEval(jsonData){   
                var json = eval("(" + jsonData +")");//转换为json对象     
                return json;  
            } 
//回调函数  
function tuilink_record_callback(linkdata)
{
    var str = linkdata.keywords;
//var newstr = $('body').html().replace(eval('/'+str+'/g'),'<a href="" title="buy it">'+str+'</a>');
//alert(document.getElementsByTagName("body")[0].innerHTML);
//alert(document.domain);
//alert(eval("/(>[^<>]*)"+str+"([^<>]*<[/]{1}[^aA]{1})/ig"));
var newstr=document.getElementsByTagName("body")[0].innerHTML.replace(eval("/(<[b-zB-Z]{1}[^<>]*>[^<>]*)"+str+"([^<>]*<[a-zA-Z\\\/]{1}[^<>]*>)/ig"),"$1"+'<a href="http://www.tuiunion.com/tuilink/redirect/'+linkdata.id+'/?domain='+document.domain+'" title="'+linkdata.info+'"  target="_black">'+str+'</a>'+"$2");
document.getElementsByTagName("body")[0].innerHTML="";
document.getElementsByTagName("body")[0].innerHTML=newstr;
}


function tuilink_processResponse() {  
    if (Tuilink_XMLHttpReq.readyState == 4) {  
        if (Tuilink_XMLHttpReq.status == 200) {  
            var text = Tuilink_XMLHttpReq.responseText;  
  
            /** 
             *实现回调 
             */  
            var jsonDatatext = strJsonToJsonByEval(window.decodeURI(text));  
            //alert(jsonDatatext.success);
            // var cp = document.getElementById("cp");  
            // cp.innerHTML = "";  
            // var values = text.split("|");  
            // for (var i = 0; i < values.length; i++) {  
            //     var temp = document.createElement("option");  
            //     temp.text = values[i];  
            //     temp.value = values[i];  
            //     cp.options.add(temp);  
            // }  
            if (jsonDatatext.success)
            {
                for(var prop in jsonDatatext.link) {       
                   //var tmpjsonDatatext = strJsonToJsonByEval(jsonDatatext.link[prop]);   
                   //alert(jsonDatatext.link[prop].keywords);    
                   tuilink_record_callback(jsonDatatext.link[prop]);
                }; 
            }      
  
  
        }  
    }  
  
} 


var tuilink_whenReady = (function() {               //这个函数返回whenReady()函数
    var funcs = [];             //当获得事件时，要运行的函数
    var ready = false;          //当触发事件处理程序时,切换为true
    
    //当文档就绪时,调用事件处理程序
    function handler(e) {
        if(ready) return;       //确保事件处理程序只完整运行一次
        
        //如果发生onreadystatechange事件，但其状态不是complete的话,那么文档尚未准备好
        if(e.type === 'onreadystatechange' && document.readyState !== 'complete') {
            return;
        }
        
        //运行所有注册函数
        //注意每次都要计算funcs.length
        //以防这些函数的调用可能会导致注册更多的函数
        for(var i=0; i<funcs.length; i++) {
            funcs[i].call(document);
        }
        //事件处理函数完整执行,切换ready状态, 并移除所有函数
        ready = true;
        funcs = null;
    }
    //为接收到的任何事件注册处理程序
    if(document.addEventListener) {
        document.addEventListener('DOMContentLoaded', handler, false);
        document.addEventListener('readystatechange', handler, false);            //IE9+
        window.addEventListener('load', handler, false);
    }else if(document.attachEvent) {
        document.attachEvent('onreadystatechange', handler);
        window.attachEvent('onload', handler);
    }
    //返回whenReady()函数
    return function whenReady(fn) {
        if(ready) { fn.call(document); }
        else { funcs.push(fn); }
    }
})();


tuilink_whenReady(function(){


tuilink_sendAjaxRequest("http://www.tuiunion.com/tuilink/gettuilinklist?domain="+document.domain);
})