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
	String loginname=(String)request.getAttribute("loginname");
	String code=(String)request.getSession().getAttribute("loginname");
	String yzm=(String)request.getAttribute("code");
	%>
	<script type="text/javascript">
	 
	function three(){
	   var pass1= document.getElementById("pass1");
	   var pass2=document.getElementById("pass2");
		if(pass1.value==""||!pass1.value){
		   Ext.MessageBox.alert('',"请填写密码");
		   pass1.focus();
		   return;
		}
		if(pass1.value.length<6){
		   Ext.MessageBox.alert('',"为了保证账号安全，密码长度请不要低于6位！");
		   pass1.focus();
		   return;
		}
	    if(pass2.value==""||!pass2.value){
		   Ext.MessageBox.alert('',"请填写密码");
		   pass2.focus(); return;
		}
		if(pass2.value!=pass1.value){
		  Ext.MessageBox.alert('',"两次密码输入不一致，请重新输入！");
		  pass1.value="";
		  pass2.value="";
		  pass1.focus();
		  return;
		}
		window.location.href="<%=basePath%>Passwordrecovery/updatepass.htm?pass1="+pass1.value+"&pass2="+pass2.value+"&loginname=<%=loginname%>&yzm=<%=yzm%>";
 
	}
	
	</script>
  </head>
  
  <body bgcolor="#DCDEE1">
  <div class="formbox">
	<div class="flow_steps">
		<ul>
			<li id="grxx" class="done">输入账号名 ，验证手机号</li>
			<li id="qzxx" class="current">重置密码</li>
			<li id="qzfs" class="last">成功并返回登录</li>
		</ul>
	</div>

		<div id="three" style="formcon">
			<table align="center">
				<tr>
					<td align="right" >新密码：</td>
					<td><input id="pass1" class="pwdTrigger" type="password" placeholder="请输入新的密码"/></td>
					<td><font size="2" color="red">注：长度不低于6位</font></td>
				</tr>
				<tr>
					<td align="right">再次输入：</td>
					<td><input id="pass2"  class="pwdTrigger" type="password" placeholder="请确认新密码"/></td>
				</tr>
				<tr>
 					<td><button type="button" onclick="three()">提交修改密码</button></td>
				</tr>
			</table>
		</div>

	</div>
</div>

  </body>
</html>
