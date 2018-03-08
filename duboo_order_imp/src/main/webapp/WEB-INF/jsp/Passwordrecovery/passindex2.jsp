<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户密码找回2</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div class="formbox">
	<div class="flow_steps">
		<ul>
			<li id="grxx" class="current">1. 输入账号名</li>
			<li id="zjxx" >2. 验证手机号</li>
			<li id="qzxx">3. 重置密码</li>
			<li id="qzfs" class="last">4.成功并返回登录</li>
		</ul>
	</div>
	<div class="formcon">
		<div id="one">
			<table align="center">
				<tr>
					<td align="right" width="70">您的账号：</td>
					<td><input class="pwdTrigger" type="text"	placeholder="请输入您的登录账号" /></td>
				</tr>
				<tr>
					<td></td>
					<td><button type="button" onclick="one()">下一步</button></td>
				</tr>
			</table>
		</div>
		<div id="two" style="display:none">
			<table align="center">
				<tr>
					<td align="right" width="70px">手机号</td>
					<td><input class="pwdTrigger" type="text" placeholder="请输入绑定手机号" /></td>
				</tr>
				<tr>
					<td align="right"></td>
					<td><a href="#">点击获取验证码</a></td>
				</tr>
				<tr>
					<td align="right">输入验证码</td>
					<td><input class="pwdTrigger" type="text" placeholder="请查看手机输入验证码" /></td>
				</tr>
				<tr>
					<td></td> 
					<td><button type="button" onclick="reone()">上一步</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" onclick="two()">下一步</button></td>
				</tr>
			</table>
		</div>
		<div id="three" style="display:none">
			<table align="center">
				<tr>
					<td align="right" width="70px">新密码</td>
					<td><input class="pwdTrigger" type="text" placeholder="请输入新的密码" /></td>
				</tr>
				<tr>
					<td align="right">再次输入</td>
					<td><input class="pwdTrigger" type="text" placeholder="请确认新密码" /></td>
				</tr>
				<tr>
					<td></td> 
					<td><button type="button" onclick="retwo()">上一步</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" onclick="three()">下一步</button></td>
				</tr>
			</table>
		</div>
		<div id="four" style="display:none">
			<table align="center">
				<tr>
					<td><span class="STYLE1">恭喜您，密码修改成功，请使用新密码登录！</span></td>
				</tr>
				<tr>
					<td><button type="button" >返回登录</button></td>
				</tr>
				
			</table>
		</div>
	</div>
</div>

  </body>
</html>
