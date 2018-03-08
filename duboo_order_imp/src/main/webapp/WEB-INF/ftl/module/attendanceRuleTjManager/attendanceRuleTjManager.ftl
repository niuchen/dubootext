<!--丁红博 2017-9-14号-->
<!DOCTYPE html>
<html>
<head>
<base href="${basepath}">
<meta charset="UTF-8">
<title>考勤统计</title> 
<#include "/public_css.ftl" >
<#include "/public_js.ftl" >
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
				<div class="lf-seach clearfix"
					style="border-bottom: 1px solid #0e9aef;">
					<p style="float: left; padding-left: 20px;">考勤统计查询</p>
					<div style="float: right; margin-bottom: 10px;"  class='lf-seach'>
						   <button class="lf-btn addCustom" style="margin-left:10px" id="export_attendrecord">导出</button>
					</div>
				</div>
			   <!--搜索开始-->
				<div class="lf-seach clearfix" id="select_div"
					style="padding-top: 10px;">
					<div class="filter-wrap lf-left">
					 <button id="selectbtn" class="lf-btn lf-seach-btn margin0">查询</button>
							<form class="form-horizontal m-t clearfix" action="" id="form1">
							</form>
						</div>
					
				</div>
				<!--搜索结束-->
                    <table id="attendanceRuleTj_table" style="table-layout:fixed" ></table>
			</div>

		</div>
	    </div>
		</div>
</body>
<iframe id="exportForm"    style="display:none;"></iframe>
<script type="text/javascript" src="js/b_module/attendanceRuleTjManager/attendanceRuleTjManager.js"></script>
<script type="text/javascript" src="js/b_module/attendanceRuleTjManager/xdate.js"></script>

<script>
 var i_m_id = "${i_m_id}";
 var username='${USERNAME}';
 var userid='${USERID}';
 var contextPath ='${basepath}';
</script>



</html>