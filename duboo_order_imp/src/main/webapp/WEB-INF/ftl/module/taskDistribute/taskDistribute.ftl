<!--我派发的-->
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
    <link rel="stylesheet" href="szwqbts/css/model/wpfd.css">
    
</head>
    <body>
		<div class="wrapper">
			<!--搜索开始-->
			<div class="seach clearfix">
			     状态：<button class="task-btn task-btn-l task-btn-active" onclick="yb_seach()"> 已完成</button><button class="task-btn task-btn-r" onclick="db_seach()" >未完成</button>  
			    <#if 新建任务??>
			    <button class="layui-btn addtaskShow" onclick="addtaskShow();" style="border-radius:4px;margin-left:14px;"><span class="glyphicon glyphicon-plus" style="margin-right:5px" ></span>新建任务</button>
				</#if>
				<button class="lf-btn lf-seach-screening lf-marginleft10px seach-screening">启用筛查</button>
				<#if 查询??>
				<button class="lf-btn lf-seach-btn margin0 seach-btn" onclick="seachMysendTask()">查询</button>
				</#if>
				<input id="task_title" type="text" placeholder="搜索任务名称" autocomplete="off" class="lf-input lf-seach-inp seach-inpt">
				<!--高级搜索开始-->
				<div class="filter-select hide2 clearfix">
					<div class="filter-wrap left">
						<form class="form-horizontal m-t clearfix" id="task_condition_senior" action="">
							
						</form>
					</div>
				</div>
				<!--高级搜索结束-->
			</div>
			<!--搜索结束-->
			<!--table开始-->
			 <table  id="assigned_table" style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped"></table>
			<!--table结束-->
		</div>
		<!--新增任务开始-->
		<div class="add-task hide2">
		<form id="add-task-form">
			<div class="task-title3">基本信息</div>
			<div class="layui-form task-form  clearfix">
				<div class="layui-form-item task-item ">
					<label class="layui-form-label label-l">任务名称<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="form_task_title" maxlength="30" type="text" name="form_task_title" class="layui-input form-control" >
					</div>
				</div>
				<div class="layui-form-item task-item">
					<label class="layui-form-label label-r">派发人<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="form_task_pfr" name="form_task_pfr"  type="text"  readonly="true" value="${USERNAME}" name="title" class="layui-input form-control">
					</div>
				</div>			
				<div class="layui-form-item task-item">
					<label class="layui-form-label label-r">结束时间<i>*</i></label>
					<div class=" layui-input-block nopading">
						<input  id="form_task_enddate"  name="form_task_enddate" class="layui-input form-control"  onclick="laydate({format: 'YYYY-MM-DD'})">
					</div>
				</div>
			</div>
			<div class="task-title3">接收人</div>
			<div class="layui-form task-form  clearfix">
				<div class="layui-form-item task-item">
					<label class="layui-form-label label-l">执行人<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="form_task_zxr" readonly="true"  name ="form_task_zxr"  type="text"  class="layui-input form-control">
						<input id="form_task_zxr_hidden"   name ="form_task_zxr_hidden" style="display:none;" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item task-item">
					<label class="layui-form-label label-r">参与人</label>
					<div class="layui-input-block nopading">
						<input id="form_task_xgr"  name ="form_task_xgr"  readonly="true" type="text"  class="layui-input form-control">
						<input id="form_task_xgr_hidden"   name ="form_task_xgr_hidden"  style="display:none;" class="layui-input">
					</div>
				</div>
			</div>
			<div class="task-title3">任务内容</div>
			<div class="layui-form-item layui-form-text">
				<div class="layui-input-block nopading2">
					<textarea id="form_task_content"   name="form_task_content"  placeholder="请输入内容" class="layui-textarea form-control" style="margin-bottom:8px;" ></textarea>
				</div>
			</div>
			<div style="margin-bottom:6px;"><input type="file" class="form-control" name ="affixFile" id="form_task_file" ></div>
			</form>
			<p class="btns"><button id="send_task" onclick="send_task()" class="layui-btn">提交</button><button  onclick="close_task()"  class="layui-btn layui-btn-primary">取消</button></p>
		</div>
		<!--新增任务结束-->
		<!--审核开始-->
		<div class="check-dialog hide2" >
	          <div class="tabs-container ">
					<ul class="nav nav-tabs layui-tab-title tabs-check">
					</ul>
					<div class="tab-content layui-tab-content">
						<div id="tab-1" class="tab-pane active">
							<div class="panel-body">
							     <form id="examine_form">
								  <textarea id="examine_area" name="examine_area" placeholder="请输入内容" class="examine_area"></textarea>
							     </form>
							</div>
							<div class="btns"><button class="layui-btn" onclick="examine(1)">审核通过</button><button class="layui-btn layui-btn-primary" onclick="examine(0)">审核不通过</button></div>
						</div>
					</div>
				</div>
		</div>
		<!--新增任务结束-->
	 <!--任务详情开始-->
		<div class="task-datils hide2">
			<div class="task-title task-title2">基本信息</div>
			<p class="infos infos-half">派发人: <i id="datil_pfr"></i></p>
			<p class="infos infos-half">创建时间: <i id="datil_createtime"></i></p>
			<p class="infos infos-half">开始时间: <i id="datil_starttime"></i></p>
			<p class="infos infos-half">结束时间: <i id="datil_endtime"></i></p>
			<div class="task-title task-title2   clearfix">任务内容</div>
			<p class="infos" id="datil_content"></p>
			<div class="task-title task-title2">接收人</div>
			<p class="infos">执行人: <i id="datil_zxr"></i></p>
			<p class="infos">参与人: <i id="datil_xgr"></i></p>
			<div class="task-title task-title2" style="border-top: 1px solid #e2e2e2;">执行记录</div>
			<div id="datil_zxjl">
			
			</div>
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
						    <form id="tatil_content_form">
							<textarea  id="tatil_content" name="tatil_content" placeholder="请输入内容" class="layui-textarea"></textarea>
						    </form>
						</div>
					</div>
					<p><button class="layui-btn" id="savecontent" >确认回复</button></p>
				</div>
			</div>
		</div>
		<!--任务详情结束-->
		
		<!-- <div id="toolbar">
             <button class="layui-btn addtaskShow" onclick="addtaskShow();"><span class="glyphicon glyphicon-plus" style="margin-right:5px" ></span>新增</button>
        </div> -->
		
	 </body>
	 	<iframe id="exportForm"    style="display:none;"></iframe>
		<script src="szwqbts/js/necomponent/plug_userMultiselect.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/b_module/taskDistribute/wpfd.js" type="text/javascript" charset="utf-8"></script>
		<script src="szwqbts/js/plugins/validate/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
	    <script src="szwqbts/js/plugins/validate/additional-methods.js" type="text/javascript" charset="utf-8"></script>
	    <script>
     	var username='${USERNAME}';
     	var userid='${USERID}';
     	var contextPath ='${basepath}';
     	var m_id = '${M_ID}';
     	</script>
</html>
