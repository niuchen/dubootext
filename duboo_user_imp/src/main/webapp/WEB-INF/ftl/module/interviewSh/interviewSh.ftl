
<!DOCTYPE html>
<html>

<head>
<base href="${basepath}">
<meta charset="UTF-8">
<title>临时拜访审批</title> <#include "/public_css.ftl" >

<link rel="stylesheet" href="js/layer/skin/default/layer.css">

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
					<div id="ks_zt_div" class="lf-btntwo"></div>
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

				<div id="toolbar" class="btn-group"
					style="padding-top: 10px; display: none;width:98%;" >
					<#if 审批??>
					<button id="btn_sp" type="button" class="btn blue-btn">
						<span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>
						审批
					</button>
					</#if>
					<i id="toolbar_close" class="clearable glyphicon glyphicon-remove close-btn" ></i>
   
				</div>
				
				   <!--table开始-->
                            <table id="bfsptable1"></table>
				<!--table结束-->
			</div>

		</div>
	</div>


	<!-- 审批弹框开始 -->
					<div id="btn_sp_div" style="display: none;"
						class="ibox float-e-margins">
						<div class="ibox-content">

							<form class="form-horizontal m-t" id="commentForm">
								<div class="form-group marginleftright">
									<div class="form-group marginleftright">
										<label class="col-sm-3 control-label">审批结果：</label>
										<div class="col-sm-8">
											<label class="checkbox-inline i-checks"><input
												type="radio" id="sh_jg" checked="checked" value="1" name="sh_jg">审批通过</label>
											<label class="checkbox-inline i-checks"><input
												type="radio" id="sh_jg" value="2" name="sh_jg">审批不通过</label>
										</div>
									</div>
									<div class="form-group marginleftright">
										<div class="form-group marginleftright">
											<label class="col-sm-3 control-label">审批说明：</label>
											<div class="col-sm-8">
												<textarea id="sh_comment" name="sh_comment"
													class="form-control" required="" aria-required="true"></textarea>
											</div>
										</div>
							</form>
							<div class="form-group marginleftright">
								<div class="col-sm-4 col-sm-offset-3">
									<a id="sh_add_btn" class="btn btn-primary">提交</a>
 								</div>
							</div>

						</div>
					</div>
					<!-- 审批弹框结束 -->






</body>
<#include "/public_js.ftl" >
<script type="text/javascript" src="js/b_module/interviewSh/interviewSh.js"></script>
 <script type="text/javascript" src="js/b_module/LDisance.js"></script><!-- 计算经纬度 -->
 <script>
      	$("#m_name").text(m_name);
    </script>
</html>