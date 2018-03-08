<!--丁红博 2017-9-14号-->
<!DOCTYPE html>
<html>
<head>
<base href="${basepath}">
<meta charset="UTF-8">
<title>考勤组规则设置</title> 
<#include "/public_css.ftl" >
<#include "/public_js.ftl" >
<link rel="stylesheet" href="szwqbts/css/model/layui.css">
<link rel="stylesheet" href="szwqbts/css/model/easyui.css">
<link rel="stylesheet" href="szwqbts/css/model/attendanceRule.css">
<style>
.tangram-suggestion-main{z-index: 99999999999999 !important;}
.datils-wrapper {
	top:20px;
}
.bootstrap-table .table.table-no-bordered>tbody>tr>td {
    border-bottom: 1px solid #ddd;
}
.ant-col-14>.bootstrap-table{border:1px solid #ddd ;border-radius:2px;border-bottom:0}
.ant-col-14>.bootstrap-table .table.table-no-bordered>thead>tr>th{border:0;background:none;border-bottom: 1px solid #ddd;}
.ant-select+.bootstrap-table .table.table-no-bordered>thead>tr>th{border:0;background:none;border-bottom: 1px solid #ddd;}
.ant-select+.bootstrap-table{border:1px solid #ddd ;border-radius:2px;border-bottom:0}
.mt10>.bootstrap-table .table.table-no-bordered>thead>tr>th{border:0;background:none;border-bottom: 1px solid #ddd;}
.mt10>.bootstrap-table{border:1px solid #ddd ;border-radius:2px;border-bottom:0}
.lf-seach>.bootstrap-table .table.table-no-bordered>thead>tr>th{border-bottom:0;}
.lf-seach>.bootstrap-table{border-bottom:0}
#time_table thead tr th:nth-child(1){visibility: hidden;} 
.fixed-table-container tbody .selected td {background-color: #fff !important;}
.fixed-table-container{border:0 !important;}
#time_table tbody tr{border-bottom:1px solid #e4e4e4;}
#adress_table tbody tr{border-bottom:1px solid #e4e4e4;}
#wifi_table tbody tr{border-bottom:1px solid #e4e4e4;}
#nomust_table tbody tr{border-bottom:1px solid #e4e4e4;}
#must_table tbody tr{border-bottom:1px solid #e4e4e4;}
/* laydate */
.laydate-time-list>li:nth-child(3){display: none !important;}
.layui-laydate-list>li{width: 50% !important;}
.layui-laydate-main {width: 188px !important;}
.layui-laydate-header{display: none !important;}
.layui-laydate{height:274px !important;}
.layui-laydate-content{height:229px !important;}
.layui-laydate-content table tbody{display: none !important;}
.workM{padding-left:10px}
.restM{padding-right:10px}
.panel-htop{z-index:999999999999999999 !important;}
.Validform_wrong{color:red}

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
				<div class="lf-seach clearfix"
					style="border-bottom: 1px solid #0e9aef;">
					<p style="float: left; padding-left: 20px;">考勤组规则设置</p>
					<div style="float: right; margin-bottom: 10px;"  class='lf-seach'>
						   <button class="lf-btn addCustom" style="margin-left:10px" id="create_attend">新建考勤组</button>
					</div>
				</div>
				<!--搜索开始-->
				<div class="lf-seach clearfix" id="select_div" style="padding-top: 10px;">
					<button id="selectbtn" class="lf-btn lf-seach-btn margin0">查询</button>
					<input type="text" id="attendance_name" class="lf-input lf-seach-inp" placeholder="请输入考勤组名称" autocomplete="off" >
				</div>
				<!--搜索结束-->
                    <table id="attendanceRule_table" style="table-layout:fixed" ></table>
			</div>

		</div>
	</div>
		</div>
		
		
		<!--规则设置开始-->
            <div  class="attendanceRuleform dn" style="margin:20px auto;width:98%">
                 <form class="ant-form ant-form-horizontal cardForm" autocomplete="off">
			<!--考勤组名称-->
			<div class="ant-row ant-form-item">
				<div class="ant-col-4 ant-form-item-label"><label class="fwn"><span class="sign">*</span>考勤组名称</label></div>
				<div class="ant-col-5 ant-form-item-control-wrapper">
					<div class="ant-form-item-control "><input type="text" value="" placeholder="请输入考勤组名称（20字内）" class="ant-input ant-input-lg" id="v_rule_name" name="v_rule_name"></div>
				</div>
			</div>
			<!--参与考勤人员-->
			<div class="ant-row ant-form-item">
				<div class="ant-col-4 ant-form-item-label"><label class="fwn"><span class="sign">*</span>参与考勤人员</label></div>
				<div class="ant-col-5 ant-form-item-control-wrapper">
					<div class="ant-form-item-control ">
						<input type="text" id="form_task_xgr" name="form_task_xgr" readonly value="" placeholder="请添加参与考勤人员" class="ant-input ant-input-lg jia" >
						<input id="form_task_xgr_hidden" name="form_task_zxr_hidden" style="display:none;" class="layui-input">
					</div>
				</div>
			</div>
			<!--设置一天内上下班次数-->
			<div class="ant-row ant-form-item">
				<div class="ant-col-4 ant-form-item-label "><label class="fwn"><span class="sign">*</span>设置一天内上下班次数</label></div>
				<div class="ant-col-16 ant-form-item-control-wrapper pl10">
					<!--选项卡-->
					<div class="ant-radio-group font0 tabSet">
						<label class="ant-radio-button-wrapper  fwn">
							1天1次上下班
						</label>
						<label class="ant-radio-button-wrapper fwn ant-radio-button-wrapper-checked">
							1天2次上下班
						</label>
						<label class="ant-radio-button-wrapper fwn">
							1天3次上下班
						</label>
					</div>
					<!--1天1次-->
					<div class="days_item dn">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input1" readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select1">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input2" readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select2">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour1">9</span>小时<span class="minute1">0</span>分钟</div>
					</div>
						
					<!--1天2次-->
					<div class="days_item">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input5" readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select5">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input6"  readonly="" value="12:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select6">
									<option selected="selected">60</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第2次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input7" readonly="" value="14:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select7">
									<option selected="selected">60</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input8" readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select8">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour2">7</span>小时<span class="minute2">0</span>分钟</div>
			        </div>
					<!--1天3次-->
					<div class="days_item dn">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input9"  readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select9">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input10"  readonly="" value="11:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select10">
									<option selected="selected">30</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第2次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input11"  readonly="" value="12:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select11">
									<option selected="selected">30</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input12"  readonly="" value="15:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select12">
									<option selected="selected">30</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第3次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input13"  readonly="" value="16:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select13">
									<option selected="selected">30</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input14"  readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select14">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour3">7</span>小时<span class="minute3">0</span>分钟</div>
			     </div>
			     </div>
			</div>
			<!--设置旷工时间-->
			<div class="ant-row ant-form-item">
				<div class="ant-col-4 ant-form-item-label"><label class="fwn"><input type="checkbox" id="i_is_absenteeism" class="cktime">设置旷工时间</label></div>
				<div class="ant-col-10 ant-form-item-control-wrapper">
					<select class="bt-select seletime setTime" id="v_absenteeis_time"></select>
					<span>(迟到或早退超过<span class="noworkTime">30分钟</span>算作旷工)</span>
				</div>
			</div>
			<!--工作日设置-->
			<div class="ant-row ant-form-item">
				<div class="ant-col-4 ant-form-item-label"><label class="fwn"><span class="sign">*</span>工作日设置</label></div>
				<div class="ant-col-14 ant-form-item-control-wrapper">
					<table id="time_table"></table>
					<label class="mt10 fwn"><input type="checkbox" id="i_legal_tag" class="cktime">法定节假日自动排休</label>
				</div>
			</div>
			
			<!--设置特殊打卡日期-->
			<div class="ant-row ant-form-item">
				<div class="ant-col-4 ant-form-item-label"><label class="fwn">设置特殊打卡日期</label></div>
				<div class="ant-col-14 ant-form-item-control-wrapper">
					<div style="margin-bottom:10px;"><button type="button" class="ant-btn ant-btn-ghost must-add">添 加</button><span class="ant-btn-text">必须打卡的日期</span></div>
					<table id="must_table" ></table>
					<div  style="margin-bottom:10px;" class="mt10"><button type="button" class="ant-btn ant-btn-ghost nomust-add">添 加</button><span class="ant-btn-text">不用打卡的日期</span></div>
					<table id="nomust_table" ></table>
				</div>
			</div>
			<!--考勤方式-->
			<div class="ant-row ant-form-item ">
				<div class="ant-col-4 ant-form-item-label"><label class="fwn">考勤方式</label></div>
				<div class="ant-col-14 ant-form-item-control-wrapper">
					<div class="ant-form-item-control ">
						<div>以下方式满足一项，考勤组成员即可完成考勤</div>
						<!--根据办公地点考勤-->
						<div>
							1.根据办公地点考勤（可添加多个考勤地点）
							<span class="">有效范围</span>
							<div class="ant-select ant-select-enabled w100 ml">
								<select class="bt-select rangeSelect" id="v_error_tag"></select>
							</div>
							<table id="adress_table" ></table>
							<a class="address">添加考勤地点</a>
						</div>
						<!--根据WiFi考勤-->
						<div class="mt10">2.根据WiFi考勤（精确定位到办公室内，可添加多个办公WiFi）
							<table id="wifi_table" ></table>
							<a class="addWF">添加办公WiFi</a>
						</div>
					</div>
				</div>
			</div>
			<div class="ant-row ant-form-item">
				<div class="ant-col-4 ant-form-item-label"></div>
				<div class="ant-col-14 ant-form-item-control-wrapper">
					<button type="button" class="ant-btn ant-btn-primary r saveAttendance" id="addkq" onclick="saveAttendance(1)">保存考勤组</button>
					<button type="button" class="ant-btn ant-btn-primary r saveAttendance" id="updatekq" onclick="saveAttendance(2)">保存考勤组</button>    
				</div>
			</div>
		</form>
       </div>

        <!--设置考勤组结束-->
           <!--修改本日考勤时间-->
        <div class="ant-row ant-form-item dn edit-time-wrap" style="margin:30px auto 0;padding: 0 10px">
				<div class=" ant-form-item-control-wrapper pl10">
					<label class="fwn"><span class="sign">*</span>设置一天内上下班次数:</label>
					<!--选项卡-->
					<div class="ant-radio-group font0  popupSetTime">
						<label class="ant-radio-button-wrapper  fwn">
							1天1次上下班
						</label>
						<label class="ant-radio-button-wrapper fwn ant-radio-button-wrapper-checked">
							1天2次上下班
						</label>
						<label class="ant-radio-button-wrapper fwn">
							1天3次上下班
						</label>
					</div>
					<!--1天1次-->
					<div class="days_item days_item1 dn">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input1a" readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select1a">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input2a" readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select2a">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour1a">9</span>小时<span class="minute1a">0</span>分钟</div>
					</div>
						
					<!--1天2次-->
					<div class="days_item days_item1">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input5a" readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select5a">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input6a"  readonly="" value="12:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select6a">
									<option selected="selected">60</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第2次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input7a" readonly="" value="14:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select7a">
									<option selected="selected">60</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input8a" readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select8a">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour2a">7</span>小时<span class="minute2a">0</span>分钟</div>
			        </div>
					<!--1天3次-->
					<div class="days_item days_item1 dn">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input9a"  readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select9a">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input10a"  readonly="" value="11:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select10a">
									<option selected="selected">30</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第2次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input11a"  readonly="" value="12:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select11a">
									<option selected="selected">30</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input12a"  readonly="" value="15:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select12a">
									<option selected="selected">30</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第3次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input13a"  readonly="" value="16:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select13a">
									<option selected="selected">30</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input14a"  readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select14a">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour3a">7</span>小时<span class="minute3a">0</span>分钟</div>
			     </div>
			     </div>
			</div>
		<!--添加必须打卡日期-->	
		<div class="must-click dn" style="padding: 0 10px;">
		    <div style="margin-top:10px;padding-left:26px;"> 时间：<input class="easyui-datebox" id="must-date" label="" labelPosition="top" style="width:120px;"></div>
		      <div class="ant-row ant-form-item" style="margin:30px auto 0;padding: 0 10px">
				<div class=" ant-form-item-control-wrapper pl10">
					<label class="fwn"><span class="sign">*</span>设置一天内上下班次数:</label>
					<!--选项卡-->
					<div class="ant-radio-group mustSetTime font0">
						<label class="ant-radio-button-wrapper  fwn">
							1天1次上下班
						</label>
						<label class="ant-radio-button-wrapper fwn ant-radio-button-wrapper-checked">
							1天2次上下班
						</label>
						<label class="ant-radio-button-wrapper fwn">
							1天3次上下班
						</label>
					</div>
					<!--1天1次-->
					<div class="days_item days_item2 dn">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input1b" readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select1b">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input2b" readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select2b">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour1b">9</span>小时<span class="minute1b">0</span>分钟</div>
					</div>
						
					<!--1天2次-->
					<div class="days_item days_item2">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input5b" readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select5b">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input6b"  readonly="" value="12:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select6b">
									<option selected="selected">60</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第2次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input7b" readonly="" value="14:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select7b">
									<option selected="selected">60</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input8b" readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select8b">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour2b">7</span>小时<span class="minute2b">0</span>分钟</div>
			        </div>
					<!--1天3次-->
					<div class="days_item days_item2 dn">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input9b"  readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select9b">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input10b"  readonly="" value="11:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select10b">
									<option selected="selected">30</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第2次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input11b"  readonly="" value="12:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select11b">
									<option selected="selected">30</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input12b"  readonly="" value="15:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select12b">
									<option selected="selected">30</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第3次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input13b"  readonly="" value="16:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select13b">
									<option selected="selected">30</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input14b"  readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select14b">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour3b">7</span>小时<span class="minute3b">0</span>分钟</div>
			     </div>
			     </div>
			</div>
		 </div>
		</div>
		<!--编辑必须打卡日期-->	
		
		<div class="edit-click dn" style="padding: 0 10px;">
		    <div style="margin-top:10px;padding-left:26px;"> 时间：<input class="easyui-datebox" id="edit-date" label="" labelPosition="top" style="width:120px;"></div>
		      <div class="ant-row ant-form-item" style="margin:30px auto 0;padding: 0 10px">
				<div class=" ant-form-item-control-wrapper pl10">
					<label class="fwn"><span class="sign">*</span>设置一天内上下班次数:</label>
					<!--选项卡-->
					<div class="ant-radio-group editTime font0">
						<label class="ant-radio-button-wrapper  fwn">
							1天1次上下班
						</label>
						<label class="ant-radio-button-wrapper fwn ant-radio-button-wrapper-checked">
							1天2次上下班
						</label>
						<label class="ant-radio-button-wrapper fwn">
							1天3次上下班
						</label>
					</div>
					<!--1天1次-->
					<div class="days_item days_item3 dn">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input1c" readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select1c">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input2c" readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select2c">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour1c">9</span>小时<span class="minute1c">0</span>分钟</div>
					</div>
						
					<!--1天2次-->
					<div class="days_item days_item3">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input5c" readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select5c">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input6c"  readonly="" value="12:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select6c">
									<option selected="selected">60</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第2次</span> 上班:
							<span class="ant-time-picker" style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input7c" readonly="" value="14:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select7c">
									<option selected="selected">60</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input8c" readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select8c">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour2c">7</span>小时<span class="minute2c">0</span>分钟</div>
			        </div>
					<!--1天3次-->
					<div class="days_item days_item3 dn">
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第1次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input9c"  readonly="" value="09:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select9c">
									<option selected="selected">180</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input  ant-time-picker-input10c"  readonly="" value="11:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select10c">
									<option selected="selected">30</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第2次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input11c"  readonly="" value="12:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select11c">
									<option selected="selected">30</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input12c"  readonly="" value="15:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select12c">
									<option selected="selected">30</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
					<div style="margin-top: 15px;">
						<div style="min-width: 240px; display: inline-block;">
							<span style="margin-right: 10px;"><span class="sign">*</span>第3次</span> 上班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input13c"  readonly="" value="16:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select13c">
									<option selected="selected">30</option>
								</select>
							       分钟前开始打卡
							</span>
						</div>

						<div style="margin-left: 5px; min-width: 320px; display: inline-block; float: right;">
							<span class="sign">*</span>下班:
							<span class="ant-time-picker " style="margin-left: 5px; margin-right: 5px; width: 80px;">
								<input type="text" class="ant-time-picker-input ant-time-picker-input14c"  readonly="" value="18:00">
								<span class="ant-time-picker-icon"></span>
							</span>
							<span class="">
								<select class="select-time select14c">
									<option selected="selected">360</option>
								</select>
							       分钟后结束打卡
							</span>
						</div>
			        </div>
			        <div style="margin-top: 10px;">合计工作时长<span class="hour3c">7</span>小时<span class="minute3c">0</span>分钟</div>
			     </div>
			     </div>
			</div>
		 </div>
		</div>
        <!--添加不用打卡日期-->	
		<div class="nomust-click mt10 p10 dn">
		   时间：<input class="easyui-datebox" id="nomust-date" label="" labelPosition="top" style="width:120px;">
		</div>
		 <!--添加wifi-->
		 <div class="box1 wifi-hide dn">
			<form class="layui-form wifi-form" action="">
				<div class="layui-form-item wifi-pdlf50">
					<label class="layui-form-label wifi-text-left"><span class="sign">*</span>名称:</label>
					<div class="layui-input-block">
						<input type="text" name="title" lay-verify="title" placeholder="最多不超过15个字" class="layui-input wifi-input" id="wf_name">
					</div>
				</div>
				<div class="layui-form-item wifi-pdlf50">
					<label class="layui-form-label wifi-text-left"><span class="sign">*</span>MAC地址:</label>
					<div class="layui-input-block">
						<input type="text" name="title" lay-verify="title" placeholder="例子:02:10:18:02:40:7b" class="layui-input wifi-input" id="wf_adress">
					</div>
				</div>
				<div class="layui-form-item wifi-pdlf50">
					<label class="wifi-label" >名称尽量保持与考勤WIFI名称一致,避免员工产生误解</label>
					<label class="wifi-label" >登录手机客户端在考勤打卡-设置中可以查看您想要设置的WIFI的MAC地址</label>
				</div>
			</form>
		</div>
		
		
		<!--添加考勤地点-->
	     <div class="box2 dn">
			<div style="height:400px;position:relative;">
				<div id="l-map" class="map-wrap"></div>
			</div>
			<div class="place-adressbox">
				<label style="padding: 5px 0;display: block;">请输入地址:</label>
				<input type="text" name="title"  id="suggestId" lay-verify="title" autocomplete="off" placeholder="" class="layui-input pdbottom0">
                <div id="searchResultPanel" style="border:1px solid red;width:150px;height:auto;display:none;"></div>
			</div>
			<div class="place-footer">
				<div class="layui-form-item place-mgbt0">
					<label class="layui-form-label">地址名称:</label>
					<div class="layui-input-block">
					    <input type="text" name="lng" id="lng" value=""  style="display:none"/>
						<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="" class="layui-input place-input" id="adress">
					</div>
				</div>
				<div class="layui-form-item place-mgbt0">
					<label class="layui-form-label">详细地址:</label>
					<div class="layui-input-block">
					    <input type="text" name="lat" id="lat" value=""   style="display:none"  />
						<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="" class="layui-input place-input-detil" id="desc_adress" >
					</div>
				</div>
			</div>
		</div>
		
		 	

</body>

<iframe id="exportForm"    style="display:none;"></iframe>
<script src="szwqbts/js/plugins/validate/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/laydate/laydate.js"></script>
<script type="text/javascript" src="js/b_module/attendanceRuleManager/attendanceRuleManager.js"></script>
<script type="text/javascript" src="js/b_module/attendanceRuleManager/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/b_module/attendanceRuleManager/easyui-lang-zh_CN.js"></script>
<script src="szwqbts/js/necomponent/plug_userMultiselect.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=qvwpqxu15dbGmXPE5UPjZN6G"></script>
<script type="text/javascript" src="js/b_module/attendanceRuleManager/baidumap.js"></script>
<!-- 百度地图 -->

<script>
 var i_m_id = "${i_m_id}";
 var username='${USERNAME}';
 var userid='${USERID}';
 var contextPath ='${basepath}';
</script>



</html>