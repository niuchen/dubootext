<%@ page language="java" import="com.common.bean.T_USERS_INFO" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 T_USERS_INFO user =(T_USERS_INFO)session.getAttribute("user");
 String username=user.getV_real_name();


 Integer  i_admin_tag=user.getI_admin_tag();
 //response.setHeader("Cache-Control","must-revalidate, post-check=0, pre-check=0");

 Calendar cal=Calendar.getInstance();
 int year=cal.get(Calendar.YEAR);//得到年
 int month=cal.get(Calendar.MONTH)+1;//得到月，因为从0开始的，所以要加1
 int day=cal.get(Calendar.DAY_OF_MONTH);//得到天

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学前教育安全动态监管云平台</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>ext/resources/css/ext-all.css"/> 
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/icons.css"/>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=z0U0m8626lrH7MKGjrOAfxQEnUKUSAOm"></script>
 

	<style type="text/css">
  	#allmap,#singleBaiduGismap {width: 100%;height:100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	
	 
	 
	
	<style type="text/css">
		#loading-mask{
	        background-color:white;
	        height:100%;
	        position:absolute;
	        left:0;
	        top:0;
	        width:100%;
	        z-index:20000;
	    }
	    #loading{
	        height:auto;
	        position:absolute;
	        left:45%;
	        top:40%;
	        padding:2px;
	        z-index:20001;
	    }
	    #processRenderDiv{
			width:300px;
	        position:absolute;
	        left:45%;
	        top:40%;
	        padding:2px;
	        z-index:20002;
		}	
	    #loading a {
	        text-decoration:none;
	        color:#225588;
	    }
	    #loading .loading-indicator{
	        width:300px;
	        background:white;
	        color:#444;
	        font:bold 12px Helvetica, Arial, sans-serif;
	        height:auto;
	        padding:10px 0 0 0;
	        align:center;
	    }
	    #loading-msg {
	        font-size: 10px;
	        font-weight: normal;
	    }
	    
	    .head_nav_menu  a{
	    	cursor: pointer;
	    }
	   
	    .head_nav_out a{
	    	 cursor: pointer;
	    	 color: #414958;
	    }
	    
	    #load-ing{position:absolute;right:5px;top:10px;background:rgb(221, 68, 119) url(images/icon/warning.gif) no-repeat 4px 2px ;z-index: 200001;
          height:20px;line-height:20px;width:150px;font-size:12px;padding-left:30px;color:#FFF;display:none; }
          
          
        .x-grid-record-red table{
			   background: #E6D1E3;
		}
          
  	</style>
  	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/indexPanel1.css"/>
  	<script type="text/javascript">
  	  function switchpr(tag){
  	var charr=  document.getElementById("sysbutton").innerHTML;
  	  			Ext.Msg.show({
			        width:240,
					title:'提示',
					msg: '确定'+charr+'?',
					buttons: Ext.Msg.YESNO,
					fn:function(o){
						if(o=='yes'){
								Ext.Ajax.request({
									url:contextPath+'loginaction/qiehuangsystem.htm?systag='+tag,
									success:function(r){
										if(r.responseText == "true"){
 										 window.location.replace(contextPath+"loginaction/login.htm?_dc="+((new Date()).getTime()));
										// document.getElementById("sysbutton").innerHTML=charr2;
										}else{
											alert("切换失败！");
										};
									},
									failure:function(){
										alert('服务器繁忙,请稍后重试！');
									}
								});
						 }
					}});
  	  
  	  }
  	</script>
  </head>
  
  <body>
  	<div id="mouseDiv1" style="position:absolute;z-index:200003; display:none;"  > </div>
    <div id="loading-mask"></div>
    <!--  
    <div id="load-help" style='cursor:pointer;position:absolute;right:8px;top:3px;z-index:200002;display:none;'><img title='帮助' onclick='help();' style='position: relative; width: 25px; height: 25px;' src='images/index/Hel2.gif'/></div>-->
		<div id="header">
		 <img style="float:left; margin-top:20px;" src="images/login/logo.png">
		<div id="left1" style="margin-left:30px; padding-top:50px; float:left;  overflow:hidden;">
         <img src="images/index/weather_sun.png" width=15 height=13></img><font color="#FFFFFF">欢迎光临:<%=username%></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <img src="images/index/volume_lvl_3.png" width=15 height=13></img>&nbsp;<font color="#FFFFFF">当前日期:<%=year%>年<%=month%>月<%=day %>日</font>
        </div>
        
		<div class="head_nav_container" align="right">
 		<div class="head_nav_menu" align="right">
		<ul>
		<!-- 切换管理员权限 名称如果改动  要修改switchpr()方法中的判读和名称 -->
		
		<li><a  id="testButtion" href="javascript:modifypwd();">修改密码</a></li>
	<!--  	<li><a  id="">个人信息</a></li>-->
		<li><a id="quitButton">退出系统</a></li>
		
 		<!--<li><a id="sysbutton" onclick="switchpr();">切换管理员权限</a></li>
 		<li><a style="display:none"  id="ptbutton">切换员工权限</a></li>-->
		</ul>
		</div>
		</div>
	 
    
	<div id="loading">
	    <div class="loading-indicator">
	      <img src="<%=basePath%>/images/index/jbobanim.gif" 
	        width="32" height="32" style="margin-right:4px;float:left;vertical-align:top;"/>
	                         神洲外勤
	        <span id="loading-msg">正在加载...</span>
	    </div>
	</div>
	<div id="processRenderDiv"></div>
	<div id="load-ing">请求出现异常...</div>
	<iframe id="exportForm"    style="display:none;"></iframe>
	
	
	<form id="downloadForm" target="_blank" method="post" style="display:none;" /> 
 	<script type="text/javascript" src="<%=basePath%>js/common.js.jsp?ftype=js&?_dc=<%=new Date().getTime()%>" language="JavaScript"></script>
	<script type="text/javascript" src="<%=basePath%>ext/adapter/ext/ext-base.js"></script>
	<script type="text/javascript" src="<%=basePath%>ext/ext-all-debug.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/plugins/json2.js"></script>
	<script type="text/javascript" src="<%=basePath%>ext/ext-lang-zh_CN.js"></script>
	<script type="text/javascript" src="<%=basePath%>ext/ux/TabCloseMenu.js"></script>
	
	<script type="text/javascript">
		document.oncontextmenu=function(){return false;}
		var initLongi = 113.65795;
		var initLati = 34.75121;
		var initMapLevel = 3;
		var contextPath = "<%=basePath%>";
		 var OpenLayerHome = '<%=basePath%>'+"OpenLayers2.10/";
		 //本地开发 使用这个链接
		//var geoserver_url =  'http://112.53.98.240/geoserver/wms';
		//var geoserver_url = '<%=basePath1%>/geoserver/wms';
		//var geoserver_url =  'http://10.87.164.212/geoserver/wms';
		 // var geoserver_url =  'http://10.217.8.22:8089/geoserver/wms';
		 var geoserver_url =  'http://112.53.98.240/geoserver/wms';
		var role = '1';
		var userRole = role;
		var tag ;
		var tag2;
		if(role == 3 ){
			tag = true;
			//tag2 = false;
		}else if (role == 2){
			tag  = false;
			tag2 = true;
		}else if(role == 1){
			tag = false;
			tag2 = true;
		}
		var chartWin; //flash公共窗口
		var chartData;//全局flash数据源
		var chartWidth=800;//全局flash宽度
		var i_admin_tag = '<%=i_admin_tag%>';
		var userName ='<%=username%>';
		var checkModeal = new Ext.grid.CheckboxSelectionModel({
			//checkOnly : true
		});
		var checkModeal_work = new Ext.grid.CheckboxSelectionModel({
			//checkOnly : true
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>js/module.js" defer> </script>
	<script type="text/javascript" src="<%=basePath%>js/init.js" defer> </script>
	<script type="text/javascript" src="<%=basePath%>js/plugins/necomponent/cus_noticepanel.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/plugins/necomponent/cus_plannoticepanel.js"></script>
	<script type="text/javascript" src="<%=basePath%>OpenLayers2.10/OpenLayers-all-debug-min.js" > </script>
	<script type="text/javascript" src="<%=basePath%>OpenLayers2.10/lib/OpenLayers/custom/CustomCeju.js" > </script>
	<script type="text/javascript" src="<%=basePath%>js/modals/modifyuserpwd.js" defer> </script>
 

 </body>
</html>
