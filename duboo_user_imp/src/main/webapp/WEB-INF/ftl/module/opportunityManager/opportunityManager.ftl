<!DOCTYPE html>
<html>

    <head>
    <base href="${basepath}">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>商机管理</title>
    <#include "/public_css.ftl" > 
    <#include "/public_js.ftl" > 
    <link rel="stylesheet" href="szwqbts/css/model/khgl.css">
    <style>
    .form-group {margin-bottom:5px !important}
    .panel-body {padding: 25px 0;}
    .layui-btn {
		    display: inline-block;
		    height: 30px;
		    line-height: 30px;
		    margin-top: 10px;
		    padding: 0 18px;
		    background-color: #0e9aef;
		    color: #fff;
		    white-space: nowrap;
		    text-align: center;
		    font-size: 14px;
		    border: none;
		    border-radius: 2px;
		    cursor: pointer;
		    opacity: .9;
		    filter: alpha(opacity=90);
		}
		.btns-grounp {
		    text-align: left;  
		}
		.nav-active{
		    color: #39aef5;
            background: #ddd;}
    </style>
    
    </head>
    
   <body class="gray-bg">
		<div class="wrapper wrapper-content animated fadeIn">
			<!-- 主题开始-->
			<div class="tabs-container">
			<ul class="nav nav-tabs border-bottom-style" style="position: relative;">
					<li class="active">
						<a data-toggle="tab" href="#tab-1" aria-expanded="true">字段</a>
					</li>
					<li class="">
						<a data-toggle="tab" href="#tab-2" aria-expanded="false">业务流程</a>
					</li>
					<li class="">
						<a data-toggle="tab" href="#tab-3" aria-expanded="false">商机阶段</a>
					</li>
					<li class="">
						<a data-toggle="tab" href="#tab-4" aria-expanded="false">商机类型</a>
					</li>
					<li class="">
						<a data-toggle="tab" href="#tab-5" aria-expanded="false">商机来源</a>
					</li>
					<li class='lf-seach' style="position: absolute;top: 1px;right: 0;">
					   <button class="lf-btn lf-seach-daoru" id="custom_dr">保存</button>
					</li>
				</ul>
				<div class="tab-content">
					<!--tab-1开始-->
					<div id="tab-1" class="tab-pane active commit-tab">
						<!--请假明细内容 开始-->
						<div class="panel-body">
							<!--搜索开始-->
							<div class="lf-seach clearfix">
                				<button id="add_custom_col" class="lf-btn lf-seach-btn margin0" >添加自定义字段</button>
							</div>
							<!--搜索结束-->
							  <span><font style="font-weight:bold;">自定义字段</font></span>
                              <table id="custom_table" style="table-layout:fixed" ></table>
                              <span><font style="font-weight:bold;">系统标准字段</font></span>
                              <table id="standard_table" style="table-layout:fixed" ></table>
							<!--table结束-->
							
			<!-- 添加窗口开始-->
		    <div class="add_custom_col hide2" style="margin:10px 20px;">
		       <font>选择字段类型：</font>
			<div class="btns-grounp">
			<button id="button_click" onclick="create_custom(1)" style  class="layui-btn layui-btn-primary">单行文本框</button>
			<button  onclick="create_custom(2)"  class="layui-btn layui-btn-primary">文本域</button>
			<button  onclick="create_custom(3)"  class="layui-btn layui-btn-primary">单选框</button>
			<button  onclick="create_custom(4)"  class="layui-btn layui-btn-primary">多选框</button>
			<button  onclick="create_custom(5)"  class="layui-btn layui-btn-primary">整数</button>
		
			<button  onclick="create_custom(6)"  class="layui-btn layui-btn-primary">小数</button>
			<button  onclick="create_custom(7)"  class="layui-btn layui-btn-primary">日期</button>
			<button  onclick="create_custom(8)"  class="layui-btn layui-btn-primary">图片</button>
			<button  onclick="create_custom(9)"  class="layui-btn layui-btn-primary">附件</button>
			<button  onclick="create_custom(10)"  class="layui-btn layui-btn-primary">对象选择</button>
			<button  onclick="create_custom(11)"  class="layui-btn layui-btn-primary">人员选择</button>
			</div>
		  <font>字段详细信息：</font>
		<form id="add_custom_col_form" class="clearfix">	
		</form>
			<div class="btns"><button onclick="close_task()" class="layui-btn">取消</button><button  onclick="save_custom(1)"  class="layui-btn layui-btn-primary">确定</button></div>
		</div>
		<!--添加窗口结束-->
		
		<!-- 修改窗口开始-->
		<div class="edit_custom_col hide2" style="margin:10px 20px;">
		  <font>字段详细信息：</font>
		<form id="edit_custom_col_form" class="clearfix"></form>
		<div class="btns"><button onclick="close_task()" class="layui-btn">取消</button><button  onclick="edit_custom(1)"  class="layui-btn layui-btn-primary">确定</button></div>
		</div>
		<!--修改窗口结束-->
		   </div>
		<!--panel-body结束-->
					</div>
					<!--tab-1结束-->
					<!--tab-2开始-->
					<div id="tab-2" class="tab-pane commit-tab">
						<div class="panel-body">
							<div class="lf-seach clearfix">
								<button id="shaichabtn2" class="lf-btn lf-seach-screening lf-marginleft10px"  onclick="add_processWindow()">添加业务流程</button>
							</div>
							<!--table开始-->
							<table id="process_table" style="table-layout:fixed" ></table>
							<!--table结束-->
							<!--新增流程开始-->
						<div class="add_process hide2" style="margin:10px 20px;">
						<form id="add_process-form">
								<div class="layui-form-item  ">
									<label class="layui-form-label label-name">流程名称<i>*</i></label>
									<div class="">
										<input id="form_process_title" maxlength="30" type="text" name="form_task_title" class="layui-input form-control" >
									</div>
								</div>
							<div class="task-title3 fwn">流程描述</div>
							<div class="layui-form-item layui-form-text">
								<div class="">
									<textarea id="form_process_content"   name="form_task_content"  placeholder="请输入内容" class="layui-textarea form-control" style="margin-bottom:8px;" ></textarea>
								</div>
							</div>
							</form>
							<p class="btns"><button id="send_task" onclick="send_process()" class="layui-btn">保存</button><button  onclick="close_task()"  class="layui-btn layui-btn-primary">取消</button></p>
						</div>
						<!--编辑流程结束-->
						<div class="edit_process hide2" style="margin:10px 20px;">
						<form id="edit_process-form">
								<div class="layui-form-item  ">
									<label class="layui-form-label label-name">流程名称<i>*</i></label>
									<div class="">
										<input id="edit_process_title" maxlength="30" type="text" name="form_task_title" class="layui-input form-control" >
									</div>
								</div>
							<div class="task-title3">流程描述</div>
							<div class="layui-form-item layui-form-text">
								<div class="">
									<textarea id="edit_process_content"   name="form_task_content"  placeholder="请输入内容" class="layui-textarea form-control" style="margin-bottom:8px;" ></textarea>
								</div>
							</div>
							</form>
							<p class="btns"><button id="send_task" onclick="edit_process()" class="layui-btn">保存</button><button  onclick="close_task()"  class="layui-btn layui-btn-primary">取消</button></p>
						</div>
						<!--新增流程结束-->
						
						</div>
		          </div>
					<!--tab-2结束-->
					<!--tab-3开始-->
					<div id="tab-3" class="tab-pane commit-tab">
						<div class="panel-body">
						   <!--row开始-->
				 <div class="row">
				 <!--左边开始-->
				  <div class="col-sm-2 pull-left">
                   <ul class="folder-list m-b-md" style="padding: 0">
                   
                   </ul>
                  </div>
                 <!--左边结束-->
                  <!--右边开始-->
                 <div class="col-sm-10 animated fadeInRight">
                  <table id="stage_table" style="table-layout:fixed" ></table>
                  <!--添加阶段开始-->
                  <div>
                  <div class="layui-form-item form-wrap col-sm-12">
				  <input class="form-control form-item1" id="stage_title" maxlength="30" type="text" name="stage_title" class="layui-input form-control" placeholder="商机阶段名称">
                  <select class="form-control form-item2" id="stage_ks_zt" name="stage_ks_zt"  class="show-tick form-control" ><option value="进行中">进行中</option><option value="赢单">赢单</option><option value="输单">输单</option></select>
                  <input class="form-control form-item3" id="stage_process" maxlength="30" type="text" name="stage_process" class="layui-input form-control" placeholder="赢率" >
                  <button class="lf-btn" id="stage_send">添加</button>
                  </div>
                  </div>
                 <!--添加阶段结束-->
                 </div>
                  <!--右边结束-->
				 </div>
					  <!--row结束-->
							
						</div>
					</div>
					<!--tab-3结束-->
					<!--tab-4开始-->
					<div id="tab-4" class="tab-pane commit-tab">
						<!--外出明细内容 开始-->
						<div class="panel-body">
							<div id="add_typeoption"><div class="form-group clearfix">	
							    <label class="col-sm-3">选项信息：</label>
							</div>
						</div>
							<div  class="col-sm-6"><label onclick="add_typeoptions()" class="layui-btn layui-btn-primary  pull-right"> 添加选项</label></div>
						</div>
					</div>
					<!--tab-4结束-->
					<!--tab-5开始-->
					<div id="tab-5" class="tab-pane commit-tab">
						<!--外出明细内容 开始-->
						<div class="panel-body">
							<div id="add_sourceoption">
							  <div class="form-group clearfix"><label class="col-sm-3">选项信息：</label></div>
							</div>
							<div class="col-sm-6">
							   <label onclick="add_sourceoptions()" class="layui-btn layui-btn-primary  pull-right"> 添加选项</label>
							</div>
						</div>
					</div>
					<!--tab-5结束-->
					
					
				</div>
			</div>
		</div>
	</body>
<script type="text/javascript" src="js/b_module/opportunityManager/opportunityManager.js"></script>
<script>
 var i_m_id = "${i_m_id}";
 var contextPath ='${basepath}';
</script>
</html>
