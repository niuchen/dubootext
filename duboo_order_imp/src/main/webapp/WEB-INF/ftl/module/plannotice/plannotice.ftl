<!DOCTYPE html>
<html>

    <head>
    <base href="${basepath}">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>通知公告</title>
    <#include "/public_css.ftl" > 
    <link rel="stylesheet" href="szwqbts/css/model/tzgg.css">
    </head>
    
   <body class="gray-bg">
   		<div style="width:100%;height:20px;background:rgb(243, 243, 244);position:fixed;top:0;left:0;z-index:9"></div>
		<div class="wrapper wrapper-content animated fadeIn" >
           <!--  <div class="title-name">通知公告</div> -->
            <div>
            <!--搜索开始-->
            <div class="lf-seach clearfix">
 				<button class="lf-btn lf-seach-screening lf-marginleft10px" id="shaichabtn">启用筛查</button>
 				<#if 查询??>
 				<button class="lf-btn lf-seach-btn margin0" id="table_notice_query1">查询</button>
                </#if>
                <div id="selectdiv"><input id="noticeField" type="text" placeholder="搜索公告名称" autocomplete="off" class="lf-input lf-seach-inp"></div>
                <!--高级搜索开始-->
					<div class="filter-select lf-hide1 clearfix">
		                <div class="filter-wrap lf-left">
							<form class="form-horizontal m-t clearfix" action=""  id="noticeFrom">
			 
							
							</form>
						</div>
					</div>
                <!--高级搜索结束-->
            </div>
            <!--搜索结束-->
            <!--table开始-->
             <div class="project-list">
				<table id="natice_table1" class="table table-hover" style="border:none !important">
					
				</table>
			</div>
			<!--table结束-->
        </div>
        <!--公告详情弹出层-->
		<div class=" datils-wrapper" id="detailsNotice"  style="    border-top: 20px solid #f3f3f4;padding-top: 0;">
		<img src="szwqbts/img/close_icon.png" class="closeDatilsWrapper" >
				<div class=" task-detail">
					<div class="task-title2 topstyle">
					
			            <div id="v_notice_title" class="task-title task-title2"></div> 
			            <span>公告类别:</span><span id="v_type_name" class="padding-right"></span>
			            <span id="v_real_name" class="padding-right"></span>
			            <span>创建时间:</span><span id="dtm_publish_date" class="padding-right"></span>
			            <span id="v_seach_timelimit" class="padding-right"></span>
			            <span>已读:</span><span id="scount" class="padding-right">	</span>
			             <div style="display:inline-block;vertical-align: top;width: 180px;overflow: hidden; text-overflow: ellipsis;white-space: nowrap;"><span>发送范围:</span><span id="v_sendrange"  ></span></div>
		            </div>
		            <div class="middleleftstyle" >
		            	<div class="xxnr" >详细内容</div>
            			<div class="ggnr" style="padding-bottom:10px;">公告内容：</div>
			            <p id="v_notice_content" class="infos fontsize12" style="padding-bottom:10px;"></p>
			            <div class="zitistyle" style="padding-bottom:10px;">照片：</div>
           				 <div class="zitistyle" style="padding-bottom:10px;">附件：</div>
			            <div id="xqFj" class="adjunct clearfix"></div>
		            </div>
		            <!-- table切换开始 -->
		            <div class="tabs-container middlerightstyle" >
		                <ul class="nav nav-tabs">
		                	<li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true" class="padding-bottom10 " style="display:inline-block;">回复(<span id="huifu"></span>)</a></li>
		                	<li><a data-toggle="tab" href="#tab-2" aria-expanded="false" class="padding-bottom10 " style="display:inline-block;">查看</a></li>
		              	</ul>
		              <div class="tab-content">
							<div id="tab-1" class="tab-pane active">
								<div class="rating clearfix">
						                <div class=" rating-textarea">
						                    <div class=" nopading2">
						                        <textarea id="v_feedback_content" name="desc" placeholder="添加回复..." class="layui-textarea2 form-control" style="margin:10px 0;"></textarea>
						                  </div>
						              </div>
						              <button class="lf-btn" id="fabupl" style="display:none;">发布评论</button>
								</div>
								<div class=" clearfix">
									<table id="natice_table2" class="tk-table fontsize12">
						
									</table>
								</div>
							</div>

							<div id="tab-2" class="tab-pane">
			                    <div class="chakan" id="chakans">
			                        <!-- <div id="chakanrenshu" class="chakanrenshu"></div> -->
			                        
			                    </div>
		                	</div>		                	
		              </div>
		            </div>
		            <!-- table切换结束 -->
		        </div>         
        </div>
        <!--任务详情结束-->
         <!--附件下载弹出层-->
		<div class="lf-hide1" id="detailsfujian">
				<div class="content2">
		            <div id="fujianK" class="adjunct clearfix">
		            
		                
		                
		            </div>
		        </div>     
        </div>
        <!--附件下载弹出层结束-->
        <iframe id="exportForm1"    style="display:none;"></iframe>
	</body>
		<#include "/public_js.ftl" > 
		<script src="${basepath}js/b_module/plannotice/plannotice.js"></script>
		<script>
     	var userid='${USERID}';
     	var contextPath ='${basepath}';
     	var m_id = '${i_m_id}';
     	var m_name = '${M_NAME}'
     	var tz_down='';
   	  	<#if 下载??>
   	 		tz_down = '下载';
	    </#if>
     	</script>
     	<script>
     	$("#v_feedback_content").focus(function(){
	  $("#fabupl").show();
	});
	
     	</script>
</html>
