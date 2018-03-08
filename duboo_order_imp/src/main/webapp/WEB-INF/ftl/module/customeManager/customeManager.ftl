<!--客户管理-->
<!DOCTYPE html>
<html>

<head>
<base href="${basepath}">
<meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <#include "/public_css.ftl" >
    <#include "/public_js.ftl" > 
     <link rel="stylesheet" href="szwqbts/css/model/khgl.css">
</head>

	<body>
		<div class="wrapper">
			<!-- <div class="title-name">我的客户</div> -->
			<!--选项卡开始-->
			<div class="tabs-container">
				<ul class="nav nav-tabs border-bottom-style" style="position: relative;">
					
					<li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">我的客户</a></li>
					<li><a data-toggle="tab" href="#tab-2" aria-expanded="false">下属客户</a></li>
					<li class='lf-seach' style="position: absolute;top: 1px;right: 0;">
					 <#if 添加??>
					   <button class="lf-btn" style="margin-left:10px" id="create_custom">新建客户</button>
					   </#if>
					   <#if 导出??>
					   <button class="lf-btn lf-seach-daochu" id="export_custom">导出</button>
					   </#if>
					   <#if 导入??>
					   <button class="lf-btn lf-seach-daoru" id="custom_dr">导入</button>
					   </#if>
					</li>
				</ul>
				<div class="tab-content">
				    <div id="tab-1" class="tab-pane active">
                        <div class="panel-body">
                         <iframe id="mainFrame" frameborder=0 name="myiframe" style="padding: 0px; width: 100%; height: 720px;" src="customeManager/mycustome_index.htm?"></iframe>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane">
                        <div class="panel-body">
                        <iframe id="mainFrame2" frameborder=0 name="ohteriframe" style="padding: 0px; width: 100%; height:720px;"  src="customeManager/othercustome_index.htm?"></iframe>
                        </div>
                    </div>
				</div>
			</div>
			<!--选项卡结束-->
		</div>
		
		
	</body>
	
	<iframe id="exportForm"    style="display:none;"></iframe>
		<!--审核结束-->
		<script src="js/b_module/mycustomManager/customManager.js" type="text/javascript" charset="utf-8"></script>
	    <script>
     	var username='${USERNAME}';
     	var userid='${USERID}';
     	var contextPath ='${basepath}';
     	var m_id ='${i_m_id}';
     	</script>
</html>