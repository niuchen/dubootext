
<!DOCTYPE html>
<html>

<head>
<base href="${basepath}">
<meta charset="UTF-8">
<title>计划拜访查询</title> <#include "/public_css.ftl" >

<link rel="stylesheet" href="szwqbts/css/model/lsbfsp.css">
</head>

<body>
	<div class="filtrate-wrapper">


		<!-- table切换开始 -->
		<!--                   <div class="title-name">拜访查询</div> -->
		<!-- table切换结束 -->

		<div id="myTabContent" class="tab-content">
			<!-- 表1开始 -->
			<div class="tab-pane active" id="home">
				<!--修改的-->
				<div class="lf-seach clearfix border-bottom-style">
					<p style="float: left; padding-left: 20px;" id="m_name">
						
						<!-- 					<span class="glyphicon glyphicon-menu-down" style="font-weight: 100;font-size: inherit;left: 5px;"></span> -->
					</p>
					<div style="float: right; margin-bottom: 10px; padding-right: 20px;">
						<!-- 					<button id="shaichabtn" class="lf-btn lf-seach-screening lf-marginleft10px">新建客户</button> -->
						<#if 导出??>
						<button id="exportbtn" class="lf-btn lf-seach-daochu">导出</button>
						</#if>
						<!-- 					<button id="selectbtn" class="lf-btn lf-seach-btn margin0">导入</button> -->
					</div>
				</div>

				<!--搜索开始-->
				<div class="lf-seach clearfix" id="select_div"
					style="padding-top: 10px;">

					<button id="shaichabtn"
						class="lf-btn lf-seach-screening lf-marginleft10px">启用筛查</button>
					<#if 查询??>
					<button id="selectbtn" class="lf-btn lf-seach-btn margin0">查询</button>
					</#if>
					<!-- 员工名称选择  -->
					<div id="ks_yhxm_div" class="lf-btntwo"></div>
					<!-- 					<div id="ks_khmc_div" class="lf-btntwo"></div> -->
					<div id="ks_zt_div" class="lf-btntwo">
						<select id='ks_zt' name='ks_zt'  class='selectpicker show-tick form-control' >
							<option value="">全部</option>
							<option value="1">未开始</option>
							<option value="2">已签到</option>
							<option value="3">已签退</option>
							<option value="4">已补充</option>
						</select>
					</div>
					<!--高级搜索开始-->
					<div class="filter-select lf-hide1 clearfix">
						<div class="filter-wrap lf-left">
							<form class="form-horizontal m-t clearfix" action="" id="form1">


							</form>
						</div>

					</div>
					<!--高级搜索结束-->
				</div>
				<!--搜索结束-->

				
				   <!--table开始-->
                            <table id="bfsptable1"></table>
				<!--table结束-->
			</div>

		</div>
	</div>


</body>
<#include "/public_js.ftl" >
<script type="text/javascript"
	src="js/b_module/interviewJh/interviewJh.js"></script>
<script type="text/javascript" src="js/b_module/LDisance.js"></script><!-- 计算经纬度 -->
<script>
     	var m_name = '${M_NAME}';
     	$("#m_name").text(m_name);
</script>
</html>