<!--公告管理-->
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
    <link rel="stylesheet" href="szwqbts/css/model/gggl.css">
</head>
    <body>
    <div style="width:100%;height:20px;background:rgb(243, 243, 244);position:fixed;top:0;left:0;z-index:9"></div>
		  <div class="wrapper">
            <!-- table切换开始 -->
            <div class="tabs-container" style="margin-top:10px">
                <ul class="nav nav-tabs border-bottom-style" style="position:relative">
                    <li class="active">
                        <a data-toggle="tab" href="#tab-1" aria-expanded="true">已发布</a>
                    </li>
                    <li class="">
                        <a data-toggle="tab" href="#tab-2" aria-expanded="false">未发布</a>
                    </li>
                     <#if 发布新公告??>
                    <li style="position: absolute;top: 1px;right: 0;">
                        <button class="layui-btn add send_notice" id="newnotice" onclick='send_noticeDiv("save")'>发布新公告</button>
                    </li>
                     </#if>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane active">
                        <div class="panel-body" >
                         <!--搜索开始-->
				            <div class="seach seach2 clearfix">
				                <button id="yfb-seach-screening" class="lf-btn lf-seach-screening lf-marginleft10px seach-screening">启用筛查</button>
				                <#if 查询??>
				                <button class="lf-btn lf-seach-btn margin0 seach-btn" id="yfbseachButton"  >查询</button>
				                </#if>
				                <input type="text" id="fabutitle" placeholder="搜索公告名称" autocomplete="off" class="lf-input lf-seach-inp seach-inpt">
				                <!--高级搜索开始-->
				                <div id="yfb-filter-select" class="filter-select hide2 clearfix">
				                    <div class="filter-wrap left">
				                        <form class="form-horizontal m-t clearfix" id="notice_contior" action="">
				                           
				                        </form>
				                    </div>
				                </div>
				                <!--高级搜索结束-->
				            </div>
				            <!--搜索结束-->
                              <!--已发布table开始-->
                              <table id="yfb_notice" style="table-layout:fixed" ></table>
                              <!--已发布table结束--> 
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane">
                        <div class="panel-body">
                        <!--搜索开始-->
				            <div class="seach seach2 clearfix">
				                <button id="wfb-seach-screening" class="lf-btn lf-seach-screening lf-marginleft10px seach-screening">启用筛查</button>
				               
				                <button class="lf-btn lf-seach-btn margin0 seach-btn" id="wfbseachButton"  >查询</button>
				               
				                <input type="text" id="wfbfabutitle" placeholder="搜索公告名称" autocomplete="off" class="lf-input lf-seach-inp seach-inpt">
				                <!--高级搜索开始-->
				                <div id="wfb-filter-select" class="filter-select hide2 clearfix">
				                    <div class="filter-wrap left">
				                        <form class="form-horizontal m-t clearfix" id="wfbnotice_contior" action="">
				                           
				                        </form>
				                    </div>
				                </div>
				                <!--高级搜索结束-->
				            </div>
				            <!--搜索结束-->
                             <table id="wfb_notice" style="table-layout:fixed" ></table>
                        </div>
                    </div>
                </div>
            </div>
        
        <!--附件1开始-->
        <div class="task-datils2  hide2" id="fujianbox1">
            <div class="task-title task-title2">附件信息</div>
            <div class="adjunct clearfix">
                <div class="adjunct-item"><img src="img/fujian.png"/></div>
                <div class="adjunct-item"><img src="img/fujian.png"/></div>
                <div class="adjunct-item"><img src="img/fujian.png"/></div>
                <div class="adjunct-item"><img src="img/fujian.png"/></div>
            </div>
        </div>
        <!--附件1结束-->
        <!--附件2开始-->
        <div class="task-datils3  hide2" id="fujianbox2">
            <div class="task-title task-title2">附件信息</div>
            <div class="adjunct clearfix">
                <div class="adjunct-item"><img src="img/fujian.png"/></div>
                <div class="adjunct-item"><img src="img/fujian.png"/></div>
                <div class="adjunct-item"><img src="img/fujian.png"/></div>
                <div class="adjunct-item"><img src="img/fujian.png"/></div>
            </div>
        </div>
        <!--附件2结束-->
        <!--发布新公告开始-->
            <div  class="send_noticeDivform hide2" style="margin:0 auto;width:700px">
            <form  id="send_noticeDivform"  style="padding:20px 20px 0;" >
                <div class="layui-form-item">
                    <label class="layui-form-label">公告标题<span class="redcolor">*</span></label>
                    <div class="layui-input-block">
                      <input type="text" id="notice_form_title" class="form-control" name="notice_form_title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" maxlength="40">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                      <label class="layui-form-label">公告分类<span class="redcolor">*</span></label>
                      <div class="layui-input-inline">
                        <select  id="notice_type" class="form-control">
                        </select>
                      </div>
                    </div>
                    <div class="layui-inline">
                        <div class="layui-input-block checkbox">
                          <label style="margin-top: 5px;"><input type="checkbox"  id="notice_istop" title="置顶公告">置顶公告</label>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                      <label class="layui-form-label">有效期<span class="redcolor">*</span></label>
                      <div class="layui-input-inline">
                        <select  id="notice_effectivedate" class="form-control">
                          <option value="1">无期限</option>
                          <option value="2">日期</option>
                          <option value="3">天</option>
                        </select>
                      </div>
                    </div>
                    <div class="layui-inline">
                      <div class="layui-input-inline" style="margin-right:0">
                           <input id="notice_date" class="form-control form-time hide2"  placeholder="请点击选择日期" >
                           <input id="notice_day" class="form-control form-day hide2" placeholder="天">
                      </div>
                    </div>
                </div>
                <div class="layui-form-item" >
                    <div class="layui-inline">
                      <label class="layui-form-label">发布范围<span class="redcolor">*</span></label>
                      <div class="layui-input-inline">
                        <select id="notice_range" class="form-control">
                          <option value="1">全体员工</option>
                          <option value="2" >自定义</option>
                        </select>
                      </div>
                    </div>
                </div>
                <div class="layui-form-item bumen-div-total" id="bumendiv-total" style="display:block">
                    <div class="bumen-div">
                        <div class="layui-input">
                            <span class="pad-15">部门</span>
                            <div class="right"><span class="green-color fontsize12"onclick="clear_dept()">清空</span></div>
                        </div>
                        <div class="layui-input no-border-top" >
                        <input id="notice_dept_name"  name ="notice_dept_name"  readonly="true" type="text"  class="layui-input" style="width:100%;border:0;padding-left:8px;">
						<input id="notice_dept_id"   name ="notice_dept_id"  style="display:none;" class="layui-input">
                        </div>
                    </div>
                    <div class="bumen-div">
                        <div class="layui-input">
                            <span class="pad-15">员工</span>
                            <div class="right"><span class="green-color fontsize12" onclick="clear_user()">清空</span></div>
                        </div>
                        <div class="layui-input no-border-top" >
                         <input id="notice_user_name"  name ="notice_user_name"  readonly="true" type="text"  class="layui-input" style="width:100%;border:0;padding-left:8px;">
						 <input id="notice_user_id"   name ="notice_user_id"  style="display:none;" class="layui-input">
                        </div>
                    </div>
                </div>
                  <div class="layui-form-item" >
                    <div class="layui-inline">
                      <label class="layui-form-label">是否下发学校<span class="redcolor">*</span></label>
                      <div class="layui-input-inline">
                        <select id="ISeduschool" class="form-control">
                          <option value="1">否</option>
                          <option value="2">是</option>
                        </select>
                      </div>
                    </div>
                </div>
                 <div class="layui-form-item bumen-div-total" id="eduschooldiv-total" style="display:block">
                    <div class="bumen-div">
                        <div class="layui-input">
                            <span class="pad-15">学校</span>
                            <div class="right"><span class="green-color fontsize12"onclick="clear_EduschoolID()">清空</span></div>
                        </div>
                        <div class="layui-input no-border-top" >
                        <input id="EduschoolID_name"  name ="EduschoolID_name"  readonly="true" type="text"  class="layui-input" style="width:100%;border:0;padding-left:8px;">
						<input id="EduschoolID"   name ="EduschoolID"  style="display:none;" class="layui-input">
                        </div>
                    </div>
                 </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">公告摘要<span class="redcolor">*</span></label>
                    <div class="layui-input-block">
                      <input type="text" id='noitce_zy' maxlength="40" name='noitce_zy' class="form-control"  lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">正文<span class="redcolor">*</span></label>
                    <div class="layui-input-block">
                      <textarea id="notice_content"  autofocus name="notice_content" class="form-control"></textarea>
                    </div>
                </div>
                <div id="file_div" class="layui-form-item layui-form-text">
                    <label class="layui-form-label">附件</label>
                    <div class="layui-input-block">
                    <div class="file-box1">
                      <input type="file" class="form-control">
					</div>
                      <div class="fujian-span gray-color">文件最多不大于30M</div>
                       <span class="have-files-text"></span>
                    </div>
                </div>
                <div id="files" ></div>
                <div class="layui-form-item" pane="">
                    <label class="layui-form-label">短信提醒</label>
                    <div class="layui-input-block checkbox">
                      <label style="margin-top: 5px;"><input type="checkbox" id="notice_dx"  value="1" title="勾选发送短信" checked="">勾选发送短信</label>
                    </div>
                </div>
            </form>
               <div style="text-align:right;margin-bottom:10px;margin-right:20px;">
                    <input id="saveflag"  style="display:none"></input>
                    <input id="notice_id"  style="display:none"></input>
                    <button class="layui-btn" id="send_notice" onclick="send_notice()">发布</button>
                    <button class="layui-btn " id="send_notice1" onclick="send_notice(1)">保存</button>
                    <button class="layui-btn layui-btn-primary" onclick="hide_notice()" >取消</button>
               </div>
           </div>
        <!--发布新公告结束-->
     <!--任务详情结束-->
         <!--附件下载弹出层-->
				<div class="fujian1 hide2" style="padding:20px 0 20px 20px">
		            <div id="fujianK" class="adjunct clearfix"></div>
		        </div>   
	 </body>
	 	<iframe id="exportForm"    style="display:none;"></iframe>
		<!--审核结束-->

<!--公告详情弹出层-->
		<div class=" datils-wrapper" id="xiangqing1"  style="    border-top: 20px solid #f3f3f4;padding-top: 0;">
		<img src="szwqbts/img/close_icon.png" class="closeDatilsWrapper" >
				<div class=" task-detail">
					<div class="task-title2 topstyle">
					
			            <div id="notice_detail_title" class="task-title task-title2 overflow"  style="width:700px"></div> 
			            <span>公告类别:</span><span id="notice_detail_type" class="padding-right"></span>
			            <span>发布人:</span> <span id="notice_detail_senduser" class="padding-right"></span>
			            <span>创建时间:</span><span id="notice_detail_sendtime" class="padding-right"></span>
			            <span>有效期:</span><span id="notice_detail_yxq" class="padding-right"></span>
			            <span>已读:</span><span id="notice_detail_scancount" class="padding-right">	</span>
			             <div style="display:inline-block;vertical-align: top;width: 180px;overflow: hidden; text-overflow: ellipsis;white-space: nowrap;"><span>发送范围:</span><span id="notice_detail_fw"  ></span></div>
		            </div>
		            <div class="middleleftstyle" >
		            	<div class="xxnr" >详细内容</div>
            			<div class="ggnr" style="padding-bottom:10px;">公告内容：</div>
			            <p id="notice_detail_content" class="infos fontsize12" style="padding-bottom:10px;"></p>
           				 <div class="zitistyle" style="padding-bottom:10px;">附件：</div>
			            <div id="notice_detal_file" class="adjunct clearfix"></div>
		            </div>
		            <!-- table切换开始 -->
		            <div class="tabs-container middlerightstyle" >
		                <ul class="nav nav-tabs">
		                	<li class="active"><a data-toggle="tab" href="#tab-3" aria-expanded="true" class="padding-bottom10 " style="display:inline-block;">回复(<span id="huifus"></span>)</a></li>
		                	<li><a data-toggle="tab" href="#tab-4" aria-expanded="false" class="padding-bottom10 " style="display:inline-block;">查看</a></li>
		              	</ul>
		              <div class="tab-content">
		                <div id="tab-3" class="tab-pane active">
		                		<div class="rating clearfix">
		                                <div class=" rating-textarea">
		                                    <div class=" nopading2">
		                                        <textarea id="notice_red_content" name="desc" placeholder="添加回复..." class="layui-textarea2 form-control" style="margin:10px 0;"></textarea>
		                                    </div>
		                                </div>
		                                <button class="lf-btn" id="notice_red_send" style="display:none;">发布评论</button>
		                        </div>
		                        <div class=" clearfix">
		                        	<table id="naticeM_table2" class="tk-table fontsize12">
				
									</table>
		                        </div>
		                        
		                </div>
		                
		                <div id="tab-4" class="tab-pane">
			                    <div class="chakan" id="scan_userinfo">
			                        <!-- <div id="chakanrenshu" class="chakanrenshu"></div> -->
		                       		 <!-- <div class="rating clearfix width-half" style="margin:10px 0;">
			                            <div class="avatar left"><img src="szwqbts/img/a2.jpg"/></div>
			                            <div class="rating-infos rating-infos2">
			                                <span class="gray-color">系统管理员 2017-06-12 18:01</span>
			                            </div>
		                        	</div> -->
			                        
			                    </div>
		                	</div>	
		              </div>
		            </div>
		            <!-- table切换结束 -->
		        </div>         
        </div>
        <!--任务详情结束-->
	    <script src="szwqbts/js/plugins/validate/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
	    <script src="szwqbts/js/plugins/validate/additional-methods.js" type="text/javascript" charset="utf-8"></script>
	     <script src="szwqbts/js/plugins/validate/textarea.validate.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/b_module/noticeManager/noticeManage.js" type="text/javascript" charset="utf-8"></script>
	    <script src="szwqbts/js/necomponent/plug_userMultiselect.js" type="text/javascript" charset="utf-8"></script>
	    <script src="szwqbts/js/necomponent/plug_treeMultiselect.js" type="text/javascript" charset="utf-8"></script>
	  	<script src="szwqbts/js/necomponent/plug_EduSchoolSelect.js" type="text/javascript" charset="utf-8"></script>

	      <script>
     	var username='${USERNAME}';
     	var userid='${USERID}';
     	var contextPath ='${basepath}';
     	var m_id = '${i_m_id}';
     	 var cz_modify='';
     	  <#if 修改??>
          cz_modify = '${修改}';
	     </#if>
     	 var cz_delete='';
     	  <#if 删除??>
          cz_delete = '${删除}';
	     </#if>
	      var cz_top='';
     	  <#if 取消置顶??>
          cz_top = '${取消置顶}';
	     </#if>
	     var cz_down='';
     	  <#if 下载??>
          cz_down = '${下载}';
	     </#if>
     	</script>
	
</html>
