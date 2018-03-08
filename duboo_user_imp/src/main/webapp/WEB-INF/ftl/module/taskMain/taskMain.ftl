<!--客户管理-->
<!DOCTYPE html>
<html>

<head>
<base href="${basepath}">
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <#include "../../public_css.ftl" > 
    <#include "../../public_js.ftl" > 
    <style>.panel-body {padding: 15px 0;}</style>
</head>

	<body>
		<div class="wrapper">
			<!-- <div class="title-name">我的客户</div> -->
			<!--选项卡开始-->
			<div class="tabs-container">
				<ul class="nav nav-tabs border-bottom-style" style="position: relative;">
					<li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">我负责的任务</a></li>
					<li><a data-toggle="tab" href="#tab-2" aria-expanded="false">我派发的任务</a></li>
					<li><a data-toggle="tab" href="#tab-3" aria-expanded="false">我参与的任务</a></li>
				</ul>
				<div class="tab-content">
				    <div id="tab-1" class="tab-pane active">
                        <div class="panel-body">
                         <iframe id="mainFrame1" frameborder=0 name="myiframe1" style="padding: 0px; width: 100%; height: 820px;" src="taskMain/taskReceive_index.htm?"></iframe>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane">
                        <div class="panel-body">
                         <iframe id="mainFrame2" frameborder=0 name="myiframe2" style="padding: 0px; width: 100%; height: 820px;" src="taskMain/taskDistribute_index.htm?"></iframe>
                        </div>
                    </div>
                     <div id="tab-3" class="tab-pane">
                        <div class="panel-body">
                         <iframe id="mainFrame3" frameborder=0 name="myiframe3" style="padding: 0px; width: 100%; height: 820px;" src="taskMain/taskRelate_index.htm?"></iframe>
                        </div>
                    </div>
				</div>
			</div>
			<!--选项卡结束-->
		</div>
		
		
	</body>
	
	<iframe id="exportForm"    style="display:none;"></iframe>
		<!--审核结束-->
		
	    <script>
     	var username='${USERNAME}';
     	var userid='${USERID}';
     	var contextPath ='${basepath}';
     	var m_id ='${i_m_id}';
     	</script>
</html>