<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户密码找回</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/pass.css">
	<script type="text/javascript" src="<%=basePath%>ext/adapter/ext/ext-base.js"></script>
	<script type="text/javascript" src="<%=basePath%>ext/ext-all-debug.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/plugins/json2.js"></script>
	<script type="text/javascript" src="<%=basePath%>ext/ext-lang-zh_CN.js"></script>
	<script type="text/javascript" src="<%=basePath%>ext/ux/TabCloseMenu.js"></script>
	<link rel="stylesheet" type="text/css" href="ext/resources/css/ext-all.css"/>
	<%
	String mgs=(String)request.getAttribute("mgs");
	%>
		<script type="text/javascript">
		 Ext.onReady(function(){
		   var num="";//验证码
		   //document.getElementById('code').disabled=true;
		   var m="<%=request.getAttribute("mgs")==null?"":request.getAttribute("mgs")%>";
		   if(m!=null&&m!=""){
		     alert(m);
			  //window.location.href='<%=basePath%>Passwordrecovery/sendpasswordcode_index.htm';
		    }
		 });
		 
		<%--
		if(mgs!=null&&!"".equals(mgs)){
			pageContext.getOut().print("alert('"+mgs+"');");
			pageContext.getOut().print("window.location.href='Passwordrecovery/sendpasswordcode_index.htm';");	
			
		}
		--%>
		 
		
		var wait=350;
		
		function getcode(){
		 var loginname= document.getElementById("loginname");
		 var mobilephone=document.getElementById("mobilephone");
		 if(loginname.value==''||!loginname.value){
		   Ext.MessageBox.alert('提示',"请填写登录账号");
		   loginname.focus();
		   return;
		 }
		  if(mobilephone.value==''||!mobilephone.value){
		   Ext.MessageBox.alert("提示","请填写手机号");
		   mobilephone.focus();
		   return;
		 }
		  			 Ext.Ajax.request({
						url:"Passwordrecovery/sendpasswordcode.htm",
						params:{loginname:loginname.value,mobilephone:mobilephone.value},
						success:function(r){
						var mgs=Ext.decode(r.responseText);
						var result=mgs.msg;
	 					    if(result==0){
 	 					       Ext.MessageBox.alert('提示', "账号不存在,或已禁用！请联系管理员！");
	 					      return;
	 					    }else if(result==2){
 	 					       Ext.MessageBox.alert('提示', "输入的手机号与账号注册的手机号不一致,请联系管理员！");
	 					          return;
	 					    }else if(result==3){
 	 					       Ext.MessageBox.alert('提示', "短信发送失败,请联系管理员！");
	 					          return;
	 					    }
				            var btn=document.getElementById("btn");
				            Ext.getDom('td_serializeNum').style.visibility="visible";
				            Ext.getDom('serializeNum').innerHTML=mgs.num;
				            
						    time(btn);
	 					   },
	 					failure:function(r){
 	 									Ext.MessageBox.alert('严重错误：', r.responseText);}
						 });
		 
		 	
		}
		function time(o) {
		if (wait == 0) {
			o.removeAttribute("disabled");			
			o.value="免费获取短信验证码";
			wait = 350;
		} else {
			o.setAttribute("disabled", true);
			o.value="已发送，重新发送(" + wait + ")";
			wait--;
			setTimeout(function() {
				time(o)
			},
			1000)
		}
	    }
	    
	    function two(){
	     var loginname= document.getElementById("loginname");
		 var code=document.getElementById("code");
		 var mobilephone=document.getElementById("mobilephone");
		 if(loginname.value==''||!loginname.value){
		   Ext.MessageBox.alert('提示',"请填写登录账号");
		   loginname.focus();
		   return;
		 }
		 if(mobilephone.value==''||!mobilephone.value){
		   Ext.MessageBox.alert('提示',"请填写手机号");
		   mobilephone.focus();
		   return;
		 }
		  if(code.value==''||!code.value){
		   Ext.MessageBox.alert('提示',"请填写验证码");
		   code.focus();
		   return;
		 }
	      window.location.href="<%=basePath%>Passwordrecovery/setsendpasswordcode.htm?code="+code.value+"&loginname="+loginname.value;
	    }
	
	 function returnindex(){
	        window.parent.Ext.getCmp('zzjk_findPasswordWin').destroy();
	    	window.location.href="<%=basePath%>";
	  }
		</script>

  </head>
  
  <body bgcolor="#DCDEE1">
 <div class="formbox">
	<div class="flow_steps">
		<ul>
			<li id="grxx" class="current">输入账号名 ，验证手机号</li>
			<li id="qzxx">重置密码</li>
			<li id="qzfs" class="last">成功并返回登录</li>
		</ul>
	</div>
	<div class="formcon" align="center">
		<div id="one" align="center">
			<table align="center">
				<tr>
					<td align="right" width="140px">您的登录账号：</td>
					<td align="right"><input id="loginname" class="pwdTrigger" type="text"	placeholder="请输入您的登录账号" /></td>
				</tr>
				<tr>
					<td align="right" width="140px">账号手机号：</td>
					<td align="right"><input id="mobilephone" class="pwdTrigger" type="text" placeholder="请输入绑定手机号" /></td>
				</tr>
				<tr>
					<td align="right"></td>
					<td align="right"><input type="button" id="btn" onclick="getcode()" value="获取手机短信验证码" />
					 </td>
					 <td><font size="2" color="red">注：由于采用内部短信网关，短信发送延时较长(2-3分钟)，请耐心等待接收。</<font></font></td>
				</tr>
				<tr>
					<td align="right" width="140px">输入验证码：</td>
					<td align="right"><input id="code"  class="pwdTrigger" type="text" placeholder="请查看手机输入验证码" /></td>
					<td id="td_serializeNum" style="visibility:hidden;">序号：<div id="serializeNum"  class="pwdTrigger"  style="font-size:25px;background-color:#FF9944;display:inline;"/></td>
 				</tr>
				<tr >
					<td><button type="button"  onclick="returnindex()">返回登录界面</button>&nbsp;&nbsp;&nbsp;&nbsp;
					<td><button type="button" onclick="two()">下一步</button></td>
				</tr>
			</table>
			 
		</div>

	</div>
</div>

  </body>
</html>
