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
	<script type="text/javascript">
	  function returnindex(){
	    	window.parent.Ext.getCmp('zzjk_findPasswordWin').destroy();
	    	window.parent.location.href='<%=basePath%>';
	  }
	</script>
  </head>
  
  <body bgcolor="#DCDEE1">
<div class="formbox">

		<div class="flow_steps">
		<ul>
			<li id="grxx" >输入账号名 ，验证手机号</li>
			<li id="qzxx">重置密码</li>
			<li id="qzfs" class="current">成功并返回登录</li>
		</ul>
	</div>
	<div class="formcon">
		<div id="four" style="last">
			<table align="center">
				<tr>
					<td><span class="STYLE1">恭喜您，密码修改成功，请使用新密码登录！</span></td>
				</tr>
				<tr>
					<td><button type="button" onclick="returnindex()">返回登录</button></td>
				</tr>
				
			</table>
		</div>
	</div>
</div>

  </body>
</html>
