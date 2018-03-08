<!--丁红博 2017-11-14号-->
<!DOCTYPE html>
<html>
<head>
<base href="${basepath}">
<meta charset="UTF-8">
<title>客户</title> 
<#include "/public_css.ftl" >
<#include "/public_js.ftl" >
<link rel="stylesheet" href="js/layer/skin/default/layer.css">
<link rel="stylesheet" href="szwqbts/css/model/khgl.css">
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
					<p style="float: left; padding-left: 20px;">字段管理</p>
					<div style="float: right; margin-bottom: 10px;"  class='lf-seach'>
						   <button class="lf-btn addCustom" style="margin-left:10px" id="save_bussiness">保存</button>
					</div>
				</div>
			   <!--搜索开始-->
				<div class="lf-seach clearfix" id="select_div"
					style="padding-top: 10px;">
					<div class="filter-wrap lf-left">
					 <button id="add_custom_col" class="lf-btn lf-seach-btn margin0">添加自定义字段</button>
							<form class="form-horizontal m-t clearfix" action="" id="form1">
							</form>
						</div>
					
				</div>
				<!--搜索结束-->
				     <span><font style="font-weight:bold;">自定义字段</font></span>
                    <table id="custom_table" style="table-layout:fixed" ></table>
                     <span><font style="font-weight:bold;">系统标准字段</font></span>
                    <table id="standard_table" style="table-layout:fixed" ></table>
			</div>

		</div>
	    </div>
		</div>
		<!-- 添加窗口开始-->
		<div class="add_custom_col hide2" style="margin:10px 20px;">
		       <font>选择字段类型：</font>
			<div class="btns-grounp">
			<button id="button_click" onclick="create_custom(1)"  class="layui-btn layui-btn-primary">单行文本框</button>
			<button  onclick="create_custom(2)"  class="layui-btn layui-btn-primary">文本域</button>
			<button  onclick="create_custom(3)"  class="layui-btn layui-btn-primary">单选框</button>
			<button  onclick="create_custom(4)"  class="layui-btn layui-btn-primary">多选框</button>
			<button  onclick="create_custom(5)"  class="layui-btn layui-btn-primary">整数</button>
		
			<button  onclick="create_custom(6)"  class="layui-btn layui-btn-primary">小数</button>
			<button  onclick="create_custom(7)"  class="layui-btn layui-btn-primary">日期</button>
			<button  onclick="create_custom(8)"  class="layui-btn layui-btn-primary">图片</button>
			<button  onclick="create_custom(9)"  class="layui-btn layui-btn-primary">附件</button>
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
		<form id="edit_custom_col_form" class="clearfix">	
				
		</form>
			<div class="btns"><button onclick="close_task()" class="layui-btn">取消</button><button  onclick="edit_custom(1)"  class="layui-btn layui-btn-primary">确定</button></div>
		</div>
		<!--修改窗口结束-->
</body>
<iframe id="exportForm"    style="display:none;"></iframe>
<script type="text/javascript" src="js/b_module/bussinessObManager/bussinessObManager.js"></script>
<script>
 var i_m_id = "${i_m_id}";
 var username='${USERNAME}';
 var userid='${USERID}';
 var contextPath ='${basepath}';
</script>

</html>