<!DOCTYPE html>
<html>

    <head>
    <base href="${basepath}">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>考勤明细查询</title>
    <#include "/public_css.ftl" > 
    <link rel="stylesheet" href="szwqbts/css/model/kqsqcx.css">
    <style>
    .form-group {margin-bottom:5px !important}
    .panel-body {padding: 15px 0;}
    </style>
    
    </head>
    
   <body class="gray-bg">
		<div class="wrapper wrapper-content animated fadeIn">
			<!-- 主题开始-->
			<div class="tabs-container">
				<ul class="nav nav-tabs border-bottom-style">
					<li class="active">
						<a data-toggle="tab" href="#tab-1" aria-expanded="true">请假明细</a>
					</li>
					<li class="">
						<a data-toggle="tab" href="#tab-2" aria-expanded="false">加班明细</a>
					</li>
					<li class="">
						<a data-toggle="tab" href="#tab-3" aria-expanded="false">出差明细</a>
					</li>
					<li class="">
						<a data-toggle="tab" href="#tab-4" aria-expanded="false">外出明细</a>
					</li>
				</ul>
				<div class="tab-content">
					<!--tab-1开始-->
					<div id="tab-1" class="tab-pane active commit-tab">
						<!--请假明细内容 开始-->
						<div class="panel-body">
							<!--搜索开始-->
							<div class="lf-seach clearfix">
								<button id="shaichabtn1" class="lf-btn lf-seach-screening lf-marginleft10px" onclick="saixuan('shaichabtn1','searchMo')">启用筛查</button>
								<#if 导出??>
								<button id="exportbtn1" class="lf-btn lf-seach-daochu">导出</button>
								</#if>
								<#if 查询??>
                				<button id="table_leave_query1" class="lf-btn lf-seach-btn margin0" >查询</button>
                				</#if>
             					<div id="searchMo" class="lf-seach-inp right">
									<select id="searchMode" name="city" class="selectpicker show-tick form-control">
										<option value="1">个人数据</option>
										<option value="0">权限数据</option>
									<select>
								</div>
								<!--高级搜索开始-->
								<div class="filter-select lf-hide1 clearfix">
					                <div class="filter-wrap lf-left">
										<form class="form-horizontal m-t clearfix" action=""  id="leaveMform1">
						 
										
										</form>
									</div>
									
								</div>								
								<!--高级搜索结束-->
							</div>
							<!--搜索结束-->
							<!--table开始-->
							<table id="newLeaveManager_table1">
								
							</table>
							<!--table结束-->
						</div>
						<!--panel-body结束-->
					</div>
					<!--tab-1结束-->
					<!--tab-2开始-->
					<div id="tab-2" class="tab-pane commit-tab">
						<div class="panel-body">
							<!--搜索开始-->
							<div class="lf-seach clearfix">
								<button id="shaichabtn2" class="lf-btn lf-seach-screening lf-marginleft10px"  onclick="saixuan('shaichabtn2','searchMo_j')">启用筛查</button>
                				<#if 导出??>
                				<button id="exportbtn2" class="lf-btn lf-seach-daochu">导出</button>
                				</#if>
                				<#if 查询??>
                				<button id="table_leave_query2" class="lf-btn lf-seach-btn margin0" >查询</button>
								</#if>
								<div id="searchMo_j" class="lf-seach-inp right">
									<select id="searchMode_j" name="city" class="selectpicker show-tick form-control">
										<option value="1">个人数据</option>
										<option value="0">权限数据</option>
									<select>
								</div>
								<!--高级搜索开始-->
								<div class="filter-select lf-hide1 clearfix">
					                <div class="filter-wrap lf-left">
										<form class="form-horizontal m-t clearfix" action=""  id="leaveMform2">
						 
										
										</form>
									</div>
								</div>								
								<!--高级搜索结束-->
							</div>
							<!--搜索结束-->
							<!--table开始-->
							<div class="ibox-content ibox-content2">
								<table id="newLeaveManager_table2">
								
								</table>
							</div>
							<!--table结束-->
						</div>
						<!--  <div class="panel-body">结束-->
					</div>
					<!--tab-2结束-->
					<!--tab-3开始-->
					<div id="tab-3" class="tab-pane commit-tab">
						<!--出差明细内容 开始-->
						<div class="panel-body">
							<!--搜索开始-->
							<div class="lf-seach clearfix">
								<button id="shaichabtn3" class="lf-btn lf-seach-screening lf-marginleft10px"  onclick="saixuan('shaichabtn3','searchMo_c')">启用筛查</button>
                				<#if 导出??>
                				<button id="exportbtn3" class="lf-btn lf-seach-daochu">导出</button>
                				</#if>
                				<#if 查询??>
                				<button id="table_leave_query3" class="lf-btn lf-seach-btn margin0" >查询</button>
								</#if>
								<div id="searchMo_c" class="lf-seach-inp right">
									<select id="searchMode_c" name="city" class="selectpicker show-tick form-control">
										<option value="1">个人数据</option>
										<option value="0">权限数据</option>
									<select>
								</div>
								<!--高级搜索开始-->
								<div class="filter-select lf-hide1 clearfix">
					                <div class="filter-wrap lf-left">
										<form class="form-horizontal m-t clearfix" action=""  id="leaveMform3">
						 
										
										</form>
									</div>
								</div>								
								<!--高级搜索结束-->
							</div>
							<!--搜索结束-->
							<!--table开始-->
							<div class="ibox-content ibox-content2">
								<table id="newLeaveManager_table3">
								
								</table>
							</div>
							<!--table结束-->
						</div>
					</div>
					<!--tab-3结束-->
					<!--tab-4开始-->
					<div id="tab-4" class="tab-pane commit-tab">
						<!--外出明细内容 开始-->
						<div class="panel-body">
							<!--搜索开始-->
							<div class="lf-seach clearfix">
								<button id="shaichabtn4" class="lf-btn lf-seach-screening lf-marginleft10px" onclick="saixuan('shaichabtn4','searchMo_w')">启用筛查</button>
                				<#if 导出??>
                				<button id="exportbtn4" class="lf-btn lf-seach-daochu">导出</button>
                				</#if>
                				<#if 查询??>
                				<button id="table_leave_query4" class="lf-btn lf-seach-btn margin0" >查询</button>
								</#if>
								<div id="searchMo_w" class="lf-seach-inp right">
									<select id="searchMode_w" name="city" class="selectpicker show-tick form-control">
										<option value="1">个人数据</option>
										<option value="0">权限数据</option>
									<select>
								</div>
								<!--高级搜索开始-->
								<div class="filter-select lf-hide1 clearfix">
					                <div class="filter-wrap lf-left">
										<form class="form-horizontal m-t clearfix" action=""  id="leaveMform4">
						 
										
										</form>
									</div>
								</div>								
								<!--高级搜索结束-->
							</div>
							<!--搜索结束-->
							<!--table开始-->
							<div class="ibox-content ibox-content2">
								<table id="newLeaveManager_table4">
								
								</table>
							</div>
							<!--table结束-->
						</div>
					</div>
					<!--tab-4结束-->
				</div>
			</div>
		</div>
		<!-- 主题结束-->
		<!--审批详情弹出层-->
		<div class="lf-hide1" id="detailsModal">
			
			<div class="content2"  >
			<table id="details_table">
				
			</table>
			</div>
			
		</div>
	</body>
		<#include "/public_js.ftl" > 
		<script src="${basepath}js/b_module/newLeaveManager/newLeaveManager.js"></script>
		<script>
     	var contextPath ='${basepath}';
     	</script>
</html>
