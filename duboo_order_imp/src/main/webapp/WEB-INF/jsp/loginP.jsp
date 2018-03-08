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
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=3, minimum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="God chau team in Shanghai">
    <link href="<%=basePath%>css/style_loginP.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<%=basePath%>logfile/css/toubu.css">
    <script type="text/javascript" src="<%=basePath%>szwqbts/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/layer/layer.js"></script>
</head>
<body>
<iframe id="downForm"  style="display:none;"></iframe>
 <!--header begin-->
 <!--header begin-->
<!--[if lt IE 8]>
<p class="browserupgrade">您正在使用一个<strong>过时的</strong>浏览器。 请点击此链接<a href="http://browsehappy.com/" target="_blank">升级更新您的浏览器</a>来提高您的用户体现。</p>
<![endif]-->
<!-- 头部 -->

<!--header end-->
<!--banner begin-->
    <div class="banner-wrap login-wrap">
            <form>
                <div class="login-box">
                    <div class="login-content">
                        <ul class="login-input">
                           <li class="login-user"><input  id="userName" type="text" value=""  onfocus="if (value =='请输入用户名'){value =''}" onblur="if (value ==''){value='请输入用户名'}" onkeydown="doSubmit(event);"> </li>
                           <li id ="pas" class="login-psw" style="display:none;" ><input  id="password" type="password" value=""  onblur="showHidepassword2()"/> </li>
                            <li id="spas" class="login-psw"><input id="showpassword" type="text"  value="请输入密码" onfocus="showHidePassword()" onkeydown="doSubmit(event);"> </li>
							<li id="qy_num_li" class="login-company" style="display:none;">
							<select  id="qy_num"  style="width:265px" onchange="bao()" onkeydown="doSubmit(event);">
							<option value=""   selected>请选择企业</option>
							</select>
							</li>                          
                        </ul>
                       <!--   <div class="psw-find"><a href="javascript:void(0);"  onclick="return findPasswd();">忘记密码？</a></div>-->
                    </div>

                    <a  class="button-login"  href="javascript:void(0);"  onclick="return login();">登 录</a>
                </div>
            </form>
    </div>
<!--banner end-->
<!--foot begin-->
    
<!--foot end-->
</body>
</html>
<script type="text/javascript">
	//用户名输入框默认获得焦点
	 var tagfall = document.getElementById('tagfall');
	//按回车键提交
	function doSubmit(event){
	        
		try{
			if(window.event.keyCode==13 &&tagfall.tage!=true){//ie
				if(checkLogin()){
					login();
				}
			}
		}catch(err){//ff
			if(event.keyCode==13){
				//if(checkLogin()){
					//login();
				//}
			}
		}
	}
	
	<%-- function findPasswd(){
	  
	   if(Ext.getCmp('zzjk_findPasswordWin')){
	     Ext.getCmp('zzjk_findPasswordWin').destroy();
	   }
	   var findPasswordWin=new window.parent.Ext.Window({
	     id:'zzjk_findPasswordWin',
	     width:800,
	     height:470,
	     title:'<img src="<%=basePath%>images/lock.png" width=15 height=15/> 密码找回操作窗口',
	     frame:true,
	     style:'text-align:left;margin-left:20px;',
	     shadow:false,
	     border:true,
	     modal:true,
	     constrainHeader:true,
	     closeAction:'close',
	     listeners:{
	      beforeshow:function(){
	          window.parent.Ext.getDom('findPasswordFrame').src='<%=basePath%>Passwordrecovery/sendpasswordcode_index.htm?_dc='+new Date().getTime();
	       }
	     },
	     closable:true,
	     html:'<iframe id="findPasswordFrame" src="" style="margin:0px;"  frameborder="2" srcolling="no" width="100%" height="100%"/>'
	  });
	  
	  findPasswordWin.show();
	
	} --%>

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
			alert("用户名不能为空");
			return;
		}
		
		var userPassword = $("#password").val();
 		if(userPassword == ""||userPassword == "请输入密码"){
			alert("密码不能为空");
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
						alert(r.message);
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
				    		alert(r.message);
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
						parent.parent.location.replace("<%=basePath%>loginaction/login.htm?_dc="+((new Date()).getTime()));
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
		function down_ie(downTag){	
	    if(downTag==7){	
		window.document.getElementById('downForm').src = './files/IE7.exe';
		}else{
		 window.document.getElementById('downForm').src = './files/IE8.exe';
		}
	}
		function show_down(tag){
			 var tagfall = document.getElementById('tagfall')
			 tagfall.tage = true;
			 var light=document.getElementById(tag);
			 var fade=document.getElementById('down_ioscall');
			 light.style.display='block';
			 fade.style.display='block';
			 }
		function show_androiddown(tag){
			 var tagfall = document.getElementById('tagandroidfall');
			 tagfall.tage = true;
			 var light=document.getElementById(tag);
			 var fade=document.getElementById('down_andriodcall');
			 light.style.display='block';
			 fade.style.display='block';
			 }
		 function hide_down(tag){
			 var tagfall = document.getElementById('tagfall');
			 tagfall.tage = false;
			 var light=document.getElementById(tag);
			 var fade=document.getElementById('down_ioscall');
			 light.style.display='none';
			 fade.style.display='none';
			}
		 
		 
		 function hide_androiddown(tag){
			 var tagfall = document.getElementById('tagandroidfall');
			 tagfall.tage = false;
			 var light=document.getElementById(tag);
			 var fade=document.getElementById('down_andriodcall');
			 light.style.display='none';
			 fade.style.display='none';
			} 
	document.onkeydown = function keydown(e){
				var e = e || event;
				var currKey = e.keyCode || e.which || e.charCode;
				if (currKey == 13) {
					login();
				} 
			};
			
			var time = 10;
			//小时
			var h = parseInt(time / 60) > 0 ? parseInt(time / 60) : 0;
			//分
			var m = 4;
			//秒
			var s = 60; 
			function time1(o,issend){
			    var userName  =  $("#mobilephone_input").val();
					if(userName == ""&&!o.disabled==true){
						alert("手机号不能为空");
						return;
					}
					if(!/^\d{11}$/.test(userName)&&!o.disabled==true){
					 alert("请输入正确的手机号");
						return;
					}
					
			        if(issend=="true"){
			         var mobilephone= document.getElementById("mobilephone_input");
			         $.ajax({
						url:"<%=basePath%>Passwordrecovery/sendMessages.htm",
			 		 	type:"post",
			 			data:{
			 				mobilephone:mobilephone.value
			 			},
			 			dataType : 'json',
			 			success:function(r){
			 				mgs=r.msg; 
			 			},
			 			failure:function(r){
	 	 					alert('严重错误+', r.responseText);
	 	 				}
			 		});
			    }    
			        if (s == 0 && m == 0) {
			            o.removeAttribute("disabled");           
			            o.value="发送";
			            m = 1;
			            s = 60; 
			        } else { // www.jbxue.com
			            if (s == 0) { s = 60; }
						if (s == 60) {
						//每次当秒走到60秒时，分钟减一
						m -= 1;
						//当分等于0时并且小时还多余1个小时的时候进里面看看
						if (m == 0 && h > 0) {
						//小时减一
						h -= 1;
						//分钟自动默认为60分
						m = 60;
						//秒自动默认为60秒
						s = 60;
						}
						}
			           //秒继续跳动，减一
			           s -= 1; 
			            o.setAttribute("disabled", true);
			            o.value="重新发送需:"+m+"分"+s+"秒";
			            setTimeout(function() {
			                time1(o)
			            },
			            1000)
			        }   
			    }				
</script>