<!--郭煜2017-11-02-->
<!DOCTYPE html>
<html>
<head>
	<base href="${basepath}">
	<meta charset="UTF-8">
	<title>公文审批查询</title> 
	<#include "/public_css.ftl" >
	<link rel="stylesheet" href="szwqbts/css/model/kqsqcx.css">
	<#include "/public_js.ftl" >
	<style>
    .form-group {margin-bottom:5px !important}
    .panel-body {padding: 15px 0;}
    </style>
</head>
<body>
	<div class="wrapper">
		<div id="myTabContent" class="tab-content">
			<!-- 表1开始 -->
			<div class="tab-pane active" id="home">
				<!--修改的-->
				<div class="lf-seach clearfix">
					<p style="float: left; padding-left: 20px;">
					</p>
					<div class="lf-seach clearfix" style="border-bottom: 1px solid #0e9aef;">
						<p style="float: left; padding-left: 20px;">公文审批查询</p>
						<div style="float: right; margin-bottom: 10px; padding-right: 20px;">
						<#if 导出??>
							<button id="exportbtn" class="lf-btn lf-seach-daochu">导出</button>
						</#if>
					</div>
					</div>
					
					<!--搜索开始-->
					<div class="lf-seach clearfix" id="select_div" style="padding-top: 10px;">
						<div class="filter-wrap lf-left">
							<button id="shaichabtn" class="lf-btn lf-seach-screening lf-marginleft10px"">启用筛查</button>
							 <#if 查询??>
							 <button id="selectbtn" class="lf-btn lf-seach-btn margin0">查询</button>
							 </#if>
							<div id="ap_mblx_div" class="lf-btntwo"></div>
							<!--高级搜索开始-->
							<div class="filter-select lf-hide1 clearfix">
				                <div class="filter-wrap lf-left">
									<form class="form-horizontal m-t clearfix" action=""  id="leaveMform1">
					 
									
									</form>
								</div>
							</div>								
							<!--高级搜索结束-->
						</div>
					</div>
					<!--搜索结束-->
				</div>
				 <table id="officialApproval_table1"></table>
			</div>
		</div>
	</div>
<!--审批详情弹出层-->
	<div class="lf-hide1" id="detailsModal">
		<div class="content2"  >
			<table id="details_table">
			</table>
			<span>相关人：</span>
			<table id="details_table1">
			</table>
		</div>
	</div>
<!--评论详情弹出层-->
	<div class="lf-hide1" id="detailsModal1">
		<div class="content2"  >
			
		</div>
	</div>
</body>
<iframe id="exportForm"    style="display:none;"></iframe>
<script type="text/javascript" src="js/b_module/officialApproval/officialApproval.js"></script>
<script>
 var i_m_id = "${i_m_id}";
 var username='${USERNAME}';
 var userid='${USERID}';
 var contextPath ='${basepath}';
</script>



</html>