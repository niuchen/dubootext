<%@ page language="java" import="com.common.bean.T_USERS_INFO" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

 %>
<!DOCTYPE html>
<html>
<head>
 <title>学前教育安全动态监管云平台-登录页</title>
  <meta charset='utf-8'>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=3, minimum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="God chau team in Shanghai">
     <link rel="icon" href="<%=basePath%>logfile/images//favicon.ico">
    <link href="<%=basePath%>css/style_login.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<%=basePath%>logfile/css/toubu.css">
    
    
</head>
<body>
<iframe id="downForm"  style="display:none;"></iframe>
 <!--header begin-->
 <!--header begin-->
<!--[if lt IE 8]>
<p class="browserupgrade">您正在使用一个<strong>过时的</strong>浏览器。 请点击此链接<a href="http://browsehappy.com/" target="_blank">升级更新您的浏览器</a>来提高您的用户体现。</p>
<![endif]-->
<!-- 头部 -->

<%-- <div class="header1 header-wrap">
    <header>
        <div class="header-left">
              <a href="<%=basePath%>/szwq_portal/index.htm" class="logo"> <img src="<%=basePath%>logfile/images/logo_home.png" alt="学前教育安全动态监管云平台logo" width='60' ></a>
              <text class="logo-info">濮阳市华龙区  <i class="circle"></i> 学前教育安全动态监管云平台</text>
 
        </div>
        <div class="header-right">
            <ul>
               <!--  <li><a href="/szwq_portal/index.htm">首页</a></li> -->
                <li><a href="/szwq_admin/" class="btn-login">管理员登录</a></li>
            </ul>
        </div>
    </header>
</div>  --%>
<div class="header-wrap clearfix">
	<a href="<%=basePath%>/szwq_portal/index.htm" class="logo"><img src="<%=basePath%>logfile/images/logo_home.png" height="50" /></a>
	<span class="text">濮阳市华龙区 <i class="circle"></i>学前教育安全动态监管云平台</span>
	<div class="click-wrap">
		<span class="down-load">客户端下载</span>
		<a href="http://anquan.itongyiyuan.com:8888/szoa_admin" class="admini-login">管理员登录</a>
	</div>
</div>
<!--header end-->
<!--banner begin-->
    <div class="banner-wrap  global-w">
        <div class="banner-inner login-inner">
        <div class="login-mark">
			<div class="inner">
				<img src="<%=basePath%>logfile/images/yunpingtai_bg_bottom.png" class="bg_bottom">
				<img src="<%=basePath%>logfile/images/yunpingtai_bg_two.png" class="bg_two">
				<img src="<%=basePath%>logfile/images/yunpingtai_bg_head.png" class="bg_head">
			</div>
		</div>
		<div class="login-wrap">

			<div class="top-title">云平台登录</div>
			<div class="item">
				<input type="text" id="userName" value=""   onkeydown="doSubmit(event);" placeholder="输入用户名"  class="login-name" />
			</div>
			 <div id ="pas" class="login-psw item" style="display:none;" ><input class="login-pwd" id="password" type="password" value=""  onblur="showHidepassword2()" onkeydown="doSubmit(event);" placeholder="输入密码"/> </div>
			<div class="item" id="spas">
				<input type="text" id="showpassword" value="" onfocus="showHidePassword()" onkeydown="doSubmit(event);" placeholder="输入密码"  class="login-pwd"/>
			</div>
			<div id="qy_num_li" class="login-company" style="display:none;">
				<select  id="qy_num"  style="width:265px" onchange="bao()" onkeydown="doSubmit(event);">
				<option value=""   selected>请选择企业</option>
				</select>
			</div>
			<div class="err-msg"></div>    
			<div class="item last-item">
				<button id="denglus" class="btn" onclick="return login();">登录</button>
			</div>
		</div>

          <!--   <form>
                <div class="login-box">
                    <h1>用户登录</h1>
                    <div class="login-content">
                        <ul class="login-input">
                           <li class="login-user"><input  id="userName" type="text" value=""  onfocus="if (value =='请输入用户名'){value =''}" onblur="if (value ==''){value='请输入用户名'}" onkeydown="doSubmit(event);"> </li>
                           <li id ="pas" class="login-psw" style="display:none;" ><input  id="password" type="password" value=""  onblur="showHidepassword2()" onkeydown="doSubmit(event);"/> </li>
                            <li id="spas" class="login-psw"><input id="showpassword" type="text"  value="请输入密码" onfocus="showHidePassword()" onkeydown="doSubmit(event);"> </li>
							<li id="qy_num_li" class="login-company" style="display:none;">
								<select  id="qy_num"  style="width:265px" onchange="bao()" onkeydown="doSubmit(event);">
								<option value=""   selected>请选择企业</option>
								</select>
							</li>                          
                        </ul>
                    </div>

                    <a  class="button-login" id="denglus"  href="javascript:void(0);"  onclick="return login();">登 录</a>
                </div>
            </form>  -->

        </div>
    </div>
<!--banner end-->
<!--foot begin-->
      <div class="footer footer-wrap">
        <!--<div class="footer-inner">
            <div class="tel fl notice">
                <p>使用须知：<br/>本系统建议使用IE浏览器6.0以上版本访问；<a href="#" class="dw-link">IE7下载  IE8下载</a><br/>本系统中体验更多Flash效果请您安装：Adobe Flash Player<br/>本系统在宽屏显示环境下效果最佳。</p>
            </div>
            <div class="tel fl separate">
                <p>平台投诉与建议电话</p>
                <h1>13607654220</h1>
                <p>公司服务支撑热线</p>
                <h1>18337191746</h1>
            </div>
        </div>-->
        <div class="footer-content">
            <div class="footer-con">
                <p>河南宇信通讯科技有限公司</p>
                <p>Copyright © itongyiyuan.com. All rights reserved | 豫B2-20060015-11号</p>

            </div>
        </div>
    </div>
<!--foot end-->
<!--客户端下载弹窗-->
		<div class="global-shadow Hide">
			<div class="code-wrap clearfix">
				<div class="top-colse">
					<span class="colse"></span>
				</div>
				<div class="item item1 left">
					<img src="<%=basePath%>logfile/images/ewm.png" width="250" height="250" />
					<div class="versions">iPhone版本</div>
					<p>版本2.1.5 2018-02-02</p>
					<p>请使用手机扫码下载</p>
				</div>
				<div class="item left">
					<img src="<%=basePath%>logfile/images/ewm.png" width="250" height="250" />
					<div class="versions">Android版本</div>
					<p>版本2.1.5 2018-02-02</p>
					<p>请使用手机扫码下载</p>
				</div>
			</div>
		</div>
    
     <script src="<%=basePath%>jquery-1.9.1/jquery.js"></script>
      <script type="text/javascript" src="<%=basePath%>js/layer/layer.js"></script>
      
<script type="text/javascript">
	$(function() {
		var headH = $('.header-wrap').outerHeight(true);
		var footerH = $('.footer-wrap').outerHeight(true);
		var winH = $(document).outerHeight(true);
		$('.global-w,.banner-inner').height(winH - headH - footerH);
	});
	//回车登录
	 $("body").keydown(function() {
	  if (event.keyCode == "13") {
		  login()
	  }
	});  

	//弹窗
	$(".down-load").on("click",function(){
		$(".global-shadow").fadeIn();
	});
	$(".colse").on("click",function(){
		$(".global-shadow").fadeOut();
	});

	//用户名输入框默认获得焦点
	 var tagfall = document.getElementById('tagfall');
	//按回车键提交
	function doSubmit(event){
	        
			/* if(event.keyCode==13 ||tagfall.tage!=true){//ie
					login();
			} */
	}
	
	 

	function showHidePassword(){
	
	var text_value = document.getElementById('showpassword').value;
		if (text_value == document.getElementById('showpassword').defaultValue) {
		    document.getElementById('spas').style.css = "login-psw";
		    document.getElementById('pas').style.css = "login-psw";	
		    document.getElementById('spas').style.display = "none";
		    document.getElementById('pas').style.display = "block";
		    document.getElementById("password").focus();
		}
 	}
	
	
	function showHidepassword2(){
	
	var text_value =document.getElementById('password').value;
	   if (text_value == "") {
	  	document.getElementById('spas').style.css = "login-psw";
	    document.getElementById('pas').style.css = "login-psw";
	 	document.getElementById('spas').style.display = "block";
	 	document.getElementById('pas').style.display = "none";
	   }
	}
	
	function bao(){ 
	/* var selectIndex = document.getElementById("qy_num").selectedIndex;//获得是第几个被选中了
	var vl = document.getElementById("qy_num").value;
	document.getElementById("qy_num").options[selectIndex].text = vl;*/
	}
	
	
		
   function setCookie(cname, cvalue, exdays) {
   var d = new Date();
   d.setTime(d.getTime() + (exdays*24*60*60*1000));
   var expires = "expires="+d.toUTCString();
   document.cookie = cname + "=" + cvalue + "; " + expires;
   }
//获取cookie
   function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1);
    if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
    }
    return "";
   }	

 //清除cookie 
   function clearCookie(name) { 
    setCookie(name, "", -1); 
   } 



	function login(){
	 
		var userName  = $("#userName").val(); 
 		if(userName == ""||userName=="请输入用户名"){
 			$(".err-msg").text("用户名不能为空");
			return;
		}
 	 
		var userPassword = $("#password").val();
 		if(userPassword == ""||userPassword == "请输入密码"){
 			$(".err-msg").text("密码不能为空");
			return;
		}
 	 
		var v_qy_Num = $("#qy_num").val();
	 
		layer.load(2);
		 $.ajax({
		 	url:'<%=basePath%>loginaction/loginTag.htm',
		 	type:"post",
			data:{
				userName:userName.replace(/(^\s*)|(\s*$)/g, ""),
				userPassword:userPassword,
				v_qy_Num:v_qy_Num,
			},
			dataType : 'json',
			success:function(r){
				    if(!r.tag){//返回错误信息
				    	if(r.dqy){//因为用户名密码错误
				    	layer.closeAll('loading');
				    	$(".err-msg").text(r.message);
						return;
				    	}else{//因为没有输入企业编码
				    		var qynum_li = document.getElementById('qy_num_li');
				    		qynum_li.style.display='block';
				    		var sel = r.sel;
				    		var qynum = document.getElementById("qy_num");
				    		var v_qy_Name =null;
				    		var option=document.getElementById("qy_num").options.length;
				    		if(option<=1){
					    		for(var i=0;i<sel.length;i++){
								v_qy_Num = sel[i].v_qy_num.split(",");
								v_qy_Name = sel[i].v_qy_name.split(",");
								document.getElementById("qy_num").options.add(new Option(v_qy_Name,v_qy_Num));
								}
							}
				    		layer.closeAll('loading');
				    		$(".err-msg").text(r.message);
							return;
				    	}
				    }else{
				    	//保存企业编码到cookie
						if(getCookie("qy_num")==""){//如果没有找到这个值则说明没存储过
							setCookie("qy_num", v_qy_Num, 30);
						}else if(getCookie("qy_num")!=v_qy_Num){//说明输入新的与老的不相等
							clearCookie("qy_num");//清空企业编码
							setCookie("qy_num", v_qy_Num, 30);//重新放入新的
						}
						window.location.replace("<%=basePath%>loginaction/login.htm?_dc="+((new Date()).getTime()));
						setTimeout(function(){
							layer.closeAll('loading');
						},1000)
					
				    }
			},
			failure:function(){
				 alert("服务器异常,请联系管理员");
				 layer.closeAll('loading'); 
			}
			
		});
		
	} 
	
	$(function () {
	    var theUA = window.navigator.userAgent.toLowerCase();
	    if ((theUA.match(/msie\s\d+/) && theUA.match(/msie\s\d+/)[0]) || (theUA.match(/trident\s?\d+/) && theUA.match(/trident\s?\d+/)[0])) {
	        var ieVersion = theUA.match(/msie\s\d+/)[0].match(/\d+/)[0] || theUA.match(/trident\s?\d+/)[0];
	        if (ieVersion < 10) {
	            var str = "不支持的浏览器！";
	            var str1 = "为了保障您的使用效果! 请您尽快升级浏览器。";
	            var str2 = "请使用IE10以上浏览器或最新版<a href='https://www.baidu.com/s?ie=UTF-8&wd=%E8%B0%B7%E6%AD%8C%E6%B5%8F%E8%A7%88%E5%99%A8' target='_blank' style='color:blue;'>谷歌</a>,"
	                + "<a href='https://www.baidu.com/s?ie=UTF-8&wd=%E7%81%AB%E7%8B%90%E6%B5%8F%E8%A7%88%E5%99%A8' target='_blank' style='color:blue;'>火狐</a>"
	                + "浏览器"; 
	            document.writeln("<pre style='text-align:center;color:#fff;background-color:#11A0F7; height:100%;border:0;position:fixed;top:0;left:0;width:100%;z-index:1234'>" +
	                "<h2 style='padding-top:200px;margin:0'><strong>" + str + "<br/></strong></h2><h2><strong>" +
	                str1+"</strong></h2><h2>"+str2);
	            document.execCommand("Stop");
	        };
	    }
	});

</script>
</body>
</html>
 