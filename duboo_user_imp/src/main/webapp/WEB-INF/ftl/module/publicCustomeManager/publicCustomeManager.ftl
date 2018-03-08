<!--丁红博 2017-7-20号-->
<!DOCTYPE html>
<html>
<head>
<base href="${basepath}">
<meta charset="UTF-8">
<title>客户公海</title> 
<#include "/public_css.ftl" >
<#include "/public_js.ftl" >
<link rel="stylesheet" href="js/layer/skin/default/layer.css">
<link rel="stylesheet" href="szwqbts/css/model/lsbfsp.css">
<link rel="stylesheet" href="szwqbts/css/model/khgl.css">
<style>
.datils-wrapper {
	top:20px;
}
</style>
</head>
<body>
<div class="wrapper">
<div style="width:100%;height:20px;background:#f0f0f0;position:fixed;top:0;left:0;z-index:999999999"></div>
		<div id="myTabContent" class="tab-content">
			<!-- 表1开始 -->
			<div class="tab-pane active" id="home">
				<!--修改的-->
				<div class="lf-seach clearfix border-bottom-style">
					<p style="float: left; padding-left: 20px;">
					</p>
				<div class="lf-seach clearfix"
					style="border-bottom: 1px solid #0e9aef;">
					<p style="float: left; padding-left: 20px;">客户公海</p>
					<div style="float: right; margin-bottom: 10px;"  class='lf-seach'>
					       <#if 新建客户??>
						   <button class="lf-btn addCustom" style="margin-left:10px" id="create_custom">新建客户</button>
						   </#if>
						    <#if 导出??>
						   <button class="lf-btn lf-seach-daochu" id="export_custom">导出</button>
						    </#if>
						      <#if 导入??>
						   <button class="lf-btn lf-seach-daoru leadingIn">导入</button>
						   </#if>
					</div>
				</div>

				<!--搜索开始-->
				<div class="lf-seach clearfix" id="select_div"
					style="padding-top: 10px;">

					<button id="shaichabtn"
						class="lf-btn lf-seach-screening lf-marginleft10px">启用筛查</button>

					<button id="selectbtn" class="lf-btn lf-seach-btn margin0">查询</button>
					<!-- 员工名称选择  -->
					<input type="text" id="custom_code_name" class="lf-input lf-seach-inp" placeholder="请输入客户编号或客户名称" autocomplete="off" >
					<!--高级搜索开始-->
					<div class="filter-select lf-hide1 clearfix">
						<div class="filter-wrap left">
							<form class="form-horizontal m-t clearfix" action="" id="form1">


							</form>
						</div>

					</div>
					<!--高级搜索结束-->
				</div>
				<!--搜索结束-->

				<div id="toolbar" class="btn-group"  style="padding-top: 10px; display: none;width:98%;" >
					   <#if 移交给他人??>
					  <button  type="button" class="btn blue-btn" onclick="moveOhteruser_confirm()">
						移交给他人
					  </button>
					   </#if>
					   <#if 删除??>
					  <button  type="button" class="btn blue-btn" onclick="delCustom_confirm()">
						删除
					  </button>
					   </#if>
					<i id="toolbar_close" class="clearable glyphicon glyphicon-remove close-btn"  ></i>
				</div>
				
				   <!--table开始-->
                            <table id="bfsptable1" ></table>
				<!--table结束-->
			</div>

		</div>
	</div>
		</div>
 <!--新增客户开始-->
		<div class="add-custom hide2" >
		<form id="add-custom-form" class="clearfix">
			<!-- <div class="layui-form task-form  clearfix"> -->
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">客户编号<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="custom_code" type="text" name="custom_code" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">客户名称<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="custom_name" type="text" name="custom_name" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">营销区域</label>
					<div  id="custom_region_div" class="layui-input-block nopading" style="width:205px !important"></div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">联系电话</label>
					<div class="layui-input-block nopading">
						<input id="custom_phone" type="text" name="custom_phone" class="layui-input form-control">
					</div>
				</div>
			<!-- </div> -->
			<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">客户地址</label>
					<div class="layui-input-block nopading">
						<input id="custom_address" type="text" name="custom_address" class="layui-input form-control">
					</div>
			</div>
			</form>
			<div class="btns"><button onclick="close_task()" class="layui-btn">取消</button><button  onclick="save_custom(1)"  class="layui-btn layui-btn-primary">保存</button><button  onclick="save_custom(2)"  class="layui-btn layui-btn-primary">保存并新建联系人</button></div>
		</div>
		<!--新增客户结束-->
 
 
 <!--新增联系人开始-->
		<div class="add-custom_phone hide2" style="margin:10px 20px;">
		<form id="add-custom_phone-form" class="clearfix">
			<!-- <div class="layui-form task-form  clearfix"> -->
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">姓名<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="custom_phone_name" type="text" name="custom_phone_name" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">手机<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="custom_phone_phone" type="text" name="custom_phone_phone" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">职务</label>
					<div class="layui-input-block nopading">
						<input id="custom_phone_zw" type="text" name="custom_phone_zw" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">QQ</label>
					<div class="layui-input-block nopading">
						<input id="custom_phone_qq" type="text" name="custom_phone_qq" class="layui-input form-control">
					</div>
				</div>
			<!-- </div> -->
			<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">邮箱</label>
					<div class="layui-input-block nopading">
						<input id="custom_phone_email" type="text" name="custom_phone_email" class="layui-input form-control">
					</div>
			</div>
			</form>
			<p class="btns"><button onclick="close_task()" class="layui-btn">取消</button><button  onclick="save_custom_phone(1)"  class="layui-btn layui-btn-primary">保存</button><button  onclick="save_custom_phone(2)"  class="layui-btn layui-btn-primary">保存并继续添加</button></p>
		</div>
		<!--新增联系人结束-->
 <!--移交弹出框开始-->
 <form id="folder_form" class="folder_form hide2" >
     <div id="ks_yhxm_div"></div>
 </form>
 <!--移交弹出框结束-->
<div class="datils-wrapper clearfix" style="top:0;border-top:20px solid #F0f0f0;padding-bottom:30px">
			<div class="datils-head clearfix">
				<div class="customer left" id="custom_title"></div>
				<img src="szwqbts/img/close_icon.png" class="closeDatilsWrapper right" />
				<ul class="tab-ul clearfix right">
					 <#if 编辑??>
					<li class="edit-linkman">编辑</li>
					 </#if>
					  <#if 移交给他人??>
					<li class="edit-other">分配给员工</li>
					</#if>
					<#if 删除??>
					<li class="edit-del">删除</li>
					</#if>
				</ul>
				<div class="infos">
					客户编号：
					<font id="custom_code_detail" class="color333"></font>
					负责人：
					<font id="custom_create_user" class="color333"></font>
					创建时间：
					<font id="custom_create_data" class="color333"></font>
					最后拜访时间：
					<font id="custom_v_visitsdate" class="color333"></font>
				</div>
			</div>
			<div class="datils-left left">
				<div class="tab-div"><span class="tab-span">相关信息</span><span class="tab-span mar20 tab-span-active">详细资料</span></div>
				<div class="tab-content">
					<div id="tab-1" class="tab-pane active tab-con">
						<div class="panel-body">
							<ul class="tab-pane-content">
								<li>联系人
									<span class="glyphicon glyphicon glyphicon-plus plus addPeople"></span>
									<table id="linkman_table"  class="linkman" style="table-layout:fixed" >
										
									</table>
								</li>
								<li>商机
									<span class="glyphicon glyphicon glyphicon-plus plus"></span>
								</li>
								<li>合同
									<span class="glyphicon glyphicon glyphicon-plus plus"></span>
								</li>
								<li>订单
									<span class="glyphicon glyphicon glyphicon-plus plus"></span>
								</li>
							</ul>
						</div>
					</div>
					<div id="tab-2" class="tab-pane datils tab-con">
						<div class="panel-body pad0 ">
							<div class="title">基本信息 </div>
							<div  id="custom_detail" class="base-infos clearfix" style="border-bottom: 1px solid #ddd;">
								<dl>
									<dt>客户编号</dt>
									<dd class="edit-div" id="c_code"></dd>
								</dl>
								<dl>
									<dt>营销区域</dt>
									<dd class="edit-div " id="c_region"></dd>
								</dl>
								<dl>
									<dt>联系电话</dt>
									<dd class="edit-div" id="c_phone"></dd>
								</dl>
								<dl>
									<dt>客户地址</dt>
									<dd class="edit-div" id="c_address"></dd>
								</dl>
								
							</div>
							<div class="title other-infos">其他信息 </div>
							<div class="base-infos clearfix">
								<dl>
									<dt>创建人</dt>
									<dd class="noedit-div" id="c_create_user"></dd>
								</dl>
								<dl>
									<dt>创建时间</dt>
									<dd class="noedit-div" id="c_create_time"></dd>
								</dl>
								<dl>
									<dt>最后拜访时间</dt>
									<dd class="noedit-div" id="c_last_time"></dd>
								</dl>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="datils-right right">
                <div class="title">拜访记录</div>
                <div id="c_inerview">拜访记录</div>
			</div>
		</div>
    <!--新建联系人开始-->
		<form class="form-horizontal addLinkman hide2">
			<div class="form-group">
				<label  class="col-sm-4 control-label"><i class="red">*</i>姓名：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-4 control-label"><i class="red">*</i>手机：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control"  placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-4 control-label">职务：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control"  placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-4 control-label">QQ：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control"  placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-4 control-label">邮箱：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control"  placeholder="请输入">
				</div>
			</div>
			<div class="form-group" style="text-align: right;margin-right: 30px;">
				<div class="col-sm-12">
					<button class="btn btn-default">取消</button>
					<button class="btn btn-primary">保存</button>
					<button class="btn btn-primary">保存并继续添加</button>
			    </div>
			</div>
		</form>
		<!--新建联系人结束-->
		
		<!--编辑联系人开始-->
		<div class="edit_custom_phone hide2" style="margin:10px 20px;">
		<form id="edit_custom_phone_form" class="clearfix">
			<!-- <div class="layui-form task-form  clearfix"> -->
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">姓名<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="edit_custom_phone_name" type="text" name="edit_custom_phone_name" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">手机<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="edit_custom_phone_phone" type="text" name="edit_custom_phone_phone" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">职务</label>
					<div class="layui-input-block nopading">
						<input id="edit_custom_phone_zw" type="text" name="edit_custom_phone_zw" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">QQ</label>
					<div class="layui-input-block nopading">
						<input id="edit_custom_phone_qq" type="text" name="edit_custom_phone_qq" class="layui-input form-control">
					</div>
				</div>
			<!-- </div> -->
			<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">邮箱</label>
					<div class="layui-input-block nopading">
						<input id="edit_custom_phone_email" type="text" name="edit_custom_phone_email" class="layui-input form-control">
					</div>
			</div>
			</form>
			<p class="btns"><button onclick="close_task()" class="layui-btn">取消</button><button  onclick="edit_custom_phone(1)"  class="layui-btn layui-btn-primary">修改</button></p>
		</div>
		<!--新增联系人结束-->
		
		
		<!--修改联系人开始-->
		<form class="form-horizontal editLinkman hide2">
			<div class="form-group">
				<label  class="col-sm-4 control-label"><i class="red">*</i>姓名：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-4 control-label"><i class="red">*</i>手机：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control"  placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-4 control-label">职务：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control"  placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-4 control-label">QQ：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control"  placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-4 control-label">邮箱：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control"  placeholder="请输入">
				</div>
			</div>
			<div class="form-group" style="text-align: right;margin-right: 30px;">
				<div class="col-sm-12">
					<button class="btn btn-default">取消</button>
					<button class="btn btn-primary">保存</button>
			    </div>
			</div>
		</form>
		<!--修改联系人结束-->

		<!--导出开始-->
		<div class="dialog-leadingIn clearfix hide2">
			<div class="step">
				第一步：<a href="javascript:void(0)" onclick="downloadTemplate(3)">点击下载</a><span><<客户导入模板>></span>
			</div>
			<div class="step">
				第二步：数据重复时的操作方式：
				<select class="form-control" id="processMode">
				  <option value="1">覆盖</option>
				  <option value="0">跳过</option>
				</select>
			</div>
			<div class="step">
			  第三步：
			<input type="file" class="form-control"  id="file" >
			</div>
			<button type="button" class="btn btn-primary right" id="uploadfile">确定上传</button>
		</div>
	<!--导出结束-->
	<!--导入结果信息展示开始-->
	<div class="importResult clearfix  hide2">
	<table class="import-result" id="import_table"></table>
	<button type="button" class="btn btn-primary right" style="clear:both" id="export_tabledata">导出</button>
	</div>
	<!--导入结果信息展示结束-->
	<!--进度条-->
	<div id="publicprogress"  class="progress progress-striped active hide2">
        <div  id="publicprogress-bar"  class="progress-bar progress-bar-warning" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40"  
             style="width:0.1%">  
        </div>  
     </div>  
	<!--进度条结束-->
	 <div id ="applicationmyprogress1" class="progress progress-striped active hide2">
        <div id="applicationmyprogress-bar1" class="progress-bar progress-bar-warning" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40"  
             style="width:0.1%">  
        </div>  
     </div>  
	<!--营销区域弹出框开始-->
 <div style="margin:20px" class="custom_region_area  hide2">
   <div  id="custom_region_div2"  style="width:221px !important"></div>
 </div>
 <!--营销区域弹弹出框结束-->
 	 <!--编辑客户开始-->
		<div class=" hide2 editCustom">
		<form id="edit-custom-form"  class="clearfix">
			<!-- <div class="layui-form task-form  clearfix"> -->
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">客户编号<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="custom_code_1" type="text" placeholder="请输入" name="custom_code_1" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">客户名称<i>*</i></label>
					<div class="layui-input-block nopading">
						<input id="custom_name_1" type="text" placeholder="请输入客户名称（不可重复）" name="custom_name_1" class="layui-input form-control">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">营销区域</label>
					<div class="layui-input-block nopading">
					  <input id="custom_region_1" class="marketing-area form-control" type="text" placeholder="请输入" name="custom_region_1" class="layui-input form-control"  style="width:205px !important">
					</div>
				</div>
				<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">联系电话</label>
					<div class="layui-input-block nopading">
						<input id="custom_phone_1" type="text" placeholder="请输入" name="custom_phone_1" class="layui-input form-control">
					</div>
				</div>
			<!-- </div> -->
			<div class="layui-form-item task-item clearfix">
					<label class="layui-form-label label-l">客户地址</label>
					<div class="layui-input-block nopading">
						<input id="custom_address_1" type="text" placeholder="请输入地址后选择" name="custom_address_1" class="layui-input form-control">
					</div>
			</div>
			
			</form>
			
			<div class="btns clear" style="margin-top:10px"><button class="layui-btn" id="quxiao">取消</button><button class="layui-btn layui-btn-primary" id="c_save">确定</button></div>
		</div>
		<!--编辑客户结束-->
</body>

<iframe id="exportForm"    style="display:none;"></iframe>
<script type="text/javascript" src="js/b_module/mycustomManager/publicCustomManager.js"></script>
<script src="szwqbts/js/plugins/validate/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
<script src="szwqbts/js/plugins/validate/additional-methods.js" type="text/javascript" charset="utf-8"></script>
<script src="szwqbts/js/plugins/validate/messages_zh.min.js" type="text/javascript" charset="utf-8"></script>
<script>
 var i_m_id = "${i_m_id}"
</script>


</html>