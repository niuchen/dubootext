<!DOCTYPE html>
<html>

	<head>
		<base href="${basepath}">
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<meta name="renderer" content="webkit">
    	<meta http-equiv="Cache-Control" content="no-siteapp" />
		<title>${M_NAME}</title>
		<link href="szwqbts/css/bootstrap.min.css?v=3.3.5" rel="stylesheet" />
		<!-- 树组件 -->
		<link rel="stylesheet" href="szwqbts/js/plugins/zNodes/css/zTreeStyle/zTreeStyle.css"	type="text/css" />
		<link rel="stylesheet" type="text/css" href="szwqbts/css/camera/index.css" />
		<link href="szwqbts/css/saixuan.css" rel="stylesheet">
		
	</head>

	<body style="background:#fff">
		<div class="main-wrap">
			<!--tabs开始-->
			<ul class="nav nav-tabs" id="nav-tabs">
				<li class="active">
					<a href="#t-list" data-toggle="tab">${M_NAME}</a>
				</li>
			</ul>
			<!--tabs结束-->
			<!--内容区开始-->
			<div class="tab-content">
				<div class="filter-wrap clearfix">
					<form id="formSchool" name="formSchool" class="form-inline pull-right">
						<select id="province" class="form-control" aindex="1">
							<option value="">选择省</option>
							<#list province as p>
							<option value="${p.value}">${p.text}</option>
							</#list>
						</select>
						<select id="city" class="form-control" aindex="2" desc="选择市">
							<option value="">选择市</option>
						</select>
						<select id="county" class="form-control" aindex="3" desc="选择区/县">
							<option value="">选择区/县</option>
						</select>
						<select id="township" class="form-control" aindex="4" desc="选择街道/乡镇">
							<option value="">选择街道/乡镇</option>
						</select>
						<select id="quality" class="form-control">
							<option value="">选择园所性质</option>
							<#list quality as p>
							<option value="${p.value}">${p.text}</option>
							</#list>
						</select>
						<select id="school" class="form-control" aindex="5" desc="选择或搜索学校" onchange="selectSchool(this)">
							<option value="">选择或搜索学校</option>
						</select>
						<button type="button" class="btn btn-base" id="btnSearch">搜索</button>
						<button type="button" class="btn" id="btnReset">重置</button>
					</form>
				</div>
				<!--内容区-->
				<div class="supervise-wrap clearfix">
					<!--树-->
					<fieldset class="tree-wrap col-xs-3">
						<legend>监控分布区域</legend>
						<div>
							<ul id="treeArea" class="ztree" style="width:auto"></ul>
						</div>
					</fieldset>
					<!--视频-->
					<div class="video-wrap pull-left">
						<div  class="clearfix"><button class="btn btn-primary pull-right install-btn">监控插件安装教程</button></div>
						<div id="playerContainer" style="width:85%;height:92%">
						</div>
					</div>
					<!--时间列表
					<fieldset class="time-wrap pull-left">
						<legend>时间列表区</legend>
						<div>
							时间
						</div>
					</fieldset>-->
				</div>
			</div>
			<!--内容区结束-->
		</div>
		<!--安装教程弹窗-->
		<div id="install-wrap" style="display: none;">
			<h1>未检测到监控插件</h1>
			<p>请先安装监控插件，才能使用监控功能.</p>
			<p>
				<a href="NetPluginSDK_Win32_V1.7.0.rar" target="_blank" class="base-color">点击下载监控插件</a>
			</p>
			<p>下载相应监控插件后，
				<a href="cameraCourse.html" target="_blank" class="base-color">点击查看监控插件安装教程</a>
			</p>
		</div>
		<script src="szwqbts/js/jquery.min.js?v=2.1.4"></script>
		<script src="szwqbts/js/bootstrap.min.js?v=3.3.5"></script>
		<script src="js/layer/layer.js" type="text/javascript" charset="utf-8"></script><!-- 弹窗js -->
		<script type="text/javascript" src="szwqbts/js/plugins/zNodes/js/jquery.ztree.core.min.js"></script>
		<script type="text/javascript">
			var contextPath ='${basepath}';
			var areaMap = ${areaMap};//区域树节点
		</script>
		<script src="js/b_module/camera/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/b_module/camera/camera.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>