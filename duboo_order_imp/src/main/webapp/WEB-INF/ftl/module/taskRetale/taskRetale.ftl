<!--我负责的-->
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
     <link rel="stylesheet" href="szwqbts/css/model/wjsd.css">
    
</head>

	<body>
		<div class="wrapper">
                        <!--搜索开始(我负责的)-->
						<div class="seach seach1 clearfix">
						     状态：<button class="task-btn task-btn-l task-btn-active" onclick="yb_seach()" >已完成</button><button class="task-btn task-btn-r" onclick="db_seach()">未完成</button> 
							<button class="lf-btn lf-seach-screening lf-marginleft10px seach-screening">启用筛查</button>
							<#if 查询??>
							<button class="lf-btn lf-seach-btn margin0 seach-btn" onclick="seachMysendTask()">查询</button>
							</#if>
							<input type="text" id="task_title"  placeholder="搜索任务名称" autocomplete="off" class="lf-input lf-seach-inp seach-inpt">
						    <!--高级搜索开始-->
							<div class="filter-select hide2 clearfix">
								<div class="filter-wrap left">
									<form class="form-horizontal m-t clearfix" id="my_task_condition_senior" action="">
										
									</form>
								</div>
							</div>
							<!--高级搜索结束-->
						</div>
						<!--搜索结束-->
                           <table id="fz_table" style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped" ></table>
		</div>
		 <!--任务详情开始-->
		<div class="task-datils hide2">
			<div class="task-title task-title2">基本信息</div>
			<p class="infos infos-half">派发人: <i id="datil_pfr"></i></p>
			<p class="infos infos-half">创建时间: <i id="datil_createtime"></i></p>
			<p class="infos infos-half">开始时间: <i id="datil_starttime"></i></p>
			<p class="infos infos-half">结束时间: <i id="datil_endtime"></i></p>
			<div class="task-title task-title2">任务内容</div>
			<p class="infos" id="datil_content"></p>
			<div class="task-title task-title2">接收人</div>
			<p class="infos">执行人: <i id="datil_zxr"></i></p>
			<p class="infos">参与人: <i id="datil_xgr"></i></p>
			<div class="task-title task-title2">执行记录</div>
			<div id="datil_zxjl"></div>
			<div class="task-title task-title2">附件信息</div>
			<div  id="datil_filedown" class="adjunct clearfix">
				
			</div>
			<div class="task-title task-title2">评论</div>
			<div class="rating clearfix" id="tatil_pl">
				
			</div>
			<div class="rating clearfix">
				<div class="rating-infos">
					<div class="layui-form-item layui-form-text rating-textarea">
						<div class="layui-input-block nopading2">
							<textarea  id="tatil_content" name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
						</div>
					</div>
					<p><button class="layui-btn" id="savecontent" >确认回复</button></p>
				</div>
			</div>
		</div>
		<!--任务详情结束-->
		
	</body>
	
	<iframe id="exportForm"    style="display:none;"></iframe>
		<!--审核结束-->
		<script src="js/b_module/taskRetale/retale.js" type="text/javascript" charset="utf-8"></script>
	    <script>
     	var username='${USERNAME}';
     	var userid='${USERID}';
     	var contextPath ='${basepath}';
     	var m_id ='${M_ID}';
     	</script>
</html>