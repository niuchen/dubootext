<!DOCTYPE html>
<html>

	<head>
	<base href="${basepath}">
	    <meta charset="utf-8"> 
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="renderer" content="webkit">
	    <meta http-equiv="Cache-Control" content="no-siteapp" />
	 
	    <title>人员分布（百度地图）</title>
	      <#include "/public_css.ftl" > 
	    <link rel="stylesheet"	href="js/layer/skin/default/layer.css">
	    <link href="szwqbts/css/plugins/chosen/chosen.css" rel="stylesheet">
	    <link rel="stylesheet" href="szwqbts/css/model/ryfb.css">
	    <style type="text/css">
			#form_item_input_start_s,#form_item_input_start_f,#form_item_input_end_s,#form_item_input_end_f{width:26% !important}
			#form_item_input_start_s>.btn-defult,#form_item_input_start_f>.btn-defult,#form_item_input_end_s>.btn-defult,#form_item_input_end_f>.btn-defult{border:none !important}
	    		.form-control,.btn{border-color:transparent;}
	    		#form_item_div_i_dept_id,#form_item_div_time,#form_item_div_start_s,#form_item_div_end_s{border: 1px solid #ccc;border-radius: 5px;}
	    		#form_item_div_start_f,#form_item_div_end_f{border: 1px solid transparent; border-radius: 5px;}
	    		#form_item_div_i_dept_id{width:24%;margin-left:1% !important;}.col-sm-4{width:30%;}#form_item_input_time{width:66%;}#i_dept_id,#h_name,#p_name{width:91%;}
	    </style>
	</head>
	
	<body class="gray-bg">
	<div class="select-box border-bottom-style" >
	<!--地图设置开始  -->
		<div class="col-sm-3 lf-marginleft10px" style="width: initial;">
			<a data-toggle="modal" class="lf-btn blue-btn" href="form_basic.html#modal-form" data-toggle="modal" data-target="#myModal" onclick="asetMap()"><i class="glyphicon glyphicon-cog" style="top:2px;right:5px;"></i>地图设置</a>					
		</div>
		<button id="gaojishaicha" class="lf-btn  lf-seach-screening lf-marginleft10px" style="float:left;">启用筛查</button>
	<!--地图设置结束  -->
			<!--上部查询条件  -->
				
					<div id="gaojishaichabox" >
					    <div class="ibox " style="margin-bottom: 0">
					        <div class="ibox-content" style="display: block;">
					                <!--头部搜索第一种（使用高级筛选通用js组件生成）-->
										<div class="">
							                <div class="">
												<form class="form-horizontal m-t clearfix" action=""  id="mapFrom">
								 
								 					
												</form>
												<div class="chaxunbox"  >
													<div class="col-sm-3" style="width: initial;margin-bottom:10px">
													<#if 查询??>
														<a data-toggle="modal" class=" lf-btn blue-btn" onclick="ryfbMap()">查询</a>
													</#if>
													</div>
												</div>
											</div>
										</div>
										
					                <!--头部搜索第一种结束-->
							</div>
						</div>
					</div>
			
	
	</div>
	
	
		<div style="width:100%;height:100%;">
		<!-- 左隐藏人员搜索start -->
			<div id="zuo" class="zuo" >
				<ul class="nav nav-tabs">
						<li class="active" style="width:50%;"><a data-toggle="tab" href="#tab-1" aria-expanded="false" style="padding:10px"><i class="fa fa-user"></i>外勤人员</a>
					</li>
						<li class="" style="width:50%;"><a data-toggle="tab" href="#tab-2" aria-expanded="true" style="padding:10px"><i class="fa fa-briefcase"></i>企业客户</a>
					</li>
				</ul>
				<div class="tab-content">
		            <div id="tab-1" class="tab-pane active margin5" >
		            	<div id="p_name_div" style="width:78%;"></div><!-- 外勤人员查询框组件 -->
		            	<button type="button" id="selectRenyuan" class="btn blue-btn" style="position:absolute;top:0;right:4px">查询</button>
		                <table id="ryfb_table2">
							
						</table>
						
		            </div>
		            <div id="tab-2" class="tab-pane  margin5" >
		            	<div id="h_name_div" style="width:78%"></div><!-- 企业客户查询框组件 -->
		            	<button type="button" id="selectQiye" class="btn blue-btn" style="position:absolute;top:0;right:4px">查询</button>
		                <table id="ryfb_table3"  class="table table-bordered">
		                    
						</table>
		                
		            </div>
		        </div>
			</div>
		<!-- 左隐藏人员搜索end -->
		
		<!--右地图界面start-->
			<div id="you" class="you" style="position:relative;float:left;width:100%">
			<!-- 人员搜索（开/关） -->
			<div style="width:40px;height:140px;position:absolute;top:200px;left:0;z-index:9">
			<#if 人员搜索??>
				<button  id="shoushuo" class="btn blue-btn" style="border:none;width:36px;height:140px;">人<br>员<br>搜<br>索<br></button>
			</#if>
			</div>  
			
			<!--中部加载地图  -->
				<div id="map-height">
				  	<div id="dituContent" class="map-wrap">
							
				  	</div>
				</div>
		    <!--下部查询显示框  -->
		   		<div id="xia" class="ibox"  style="display: none;width:100%;position:fixed;bottom:0;margin-bottom: 0;height: 250px;z-index: 999;background-color: white">
		    		<div class="ibox-content" id="chaxun" style="">
		                <table id="ryfb_table1" style="height: 250px;overflow:auto;">
		                    		
						</table>
		        	</div>
		    	</div> 
			</div>
		</div>
		<!--右地图界面end--> 
		<!--弹出地图设置-->
			<div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
			    <div class="modal-dialog">
			        <div class="modal-content animated bounceInRight">
			            <div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
			                </button>
			                <h4 class="modal-title">地图设置</h4>
			             </div>
			             <div class="modal-body">
			                    
			               	<div class="form-group"><label>展示内容选择：</label> 
			               			<select class="chosen-select" data-placeholder="选择展示内容..." id="numDetail" multiple style="width:350px;" tabindex="4">
                                    	<option value="1" selected = "selected">企业客户位置</option>
                                	</select>
			                	<!-- <select id="numDetail" class="form-control m-b" name="account">
			                    	<option>企业客户位置</option> 
			                    	<option></option>                                      
								</select> -->
							</div>
			                <div class="form-group">
			                	<label>展示内容文本标签选择:</label>
			                	<select class="chosen-select" data-placeholder="选择标注..." id="numBqDetail" multiple style="width:350px;" tabindex="4">
                                   	<option value="1" selected = "selected">员工位置（姓名与时间）</option>
                               	</select>
			                    <!-- <select id="numBqDetail" class="form-control m-b" name="account">
			                     	<option>员工位置（姓名与时间）</option>
			                     	<option></option>                                        
			            		</select> -->
			                </div>
			            </div>
		                <div class="modal-footer">
		                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
		                    <button type="button" onclick="dtsz()" class="btn btn-primary">保存</button>
		                </div>
					</div>
				</div>
			</div>
		
		<!--外勤人员总数、能定位到人数弹出层-->
		<div class="modal fade" id="detailsTable" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" >
			<div class="modal-content"  style="padding:10px;">
			<table id="ryfb_table4">
				
			</table>
			</div>
			</div>
		</div>
		<!--客户总数弹出层-->
		<div class="modal fade" id="khTable" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" >
			<div class="modal-content"  style="padding:10px;">
			<table id="ryfb_table5">
				
			</table>
			</div>
			</div>
		</div> 
		</body>
	
	
	<#include "/public_js.ftl" > 
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=z0U0m8626lrH7MKGjrOAfxQEnUKUSAOm"></script>
	<script type="text/javascript" src="js/b_module/allbaiduGis/allbaiduGis.js"></script>            
	<script src="szwqbts/js/plugins/chosen/chosen.jquery.js"></script>
	<script src="js/b_module/allbaiduGis/advanced.js"></script>
	<script type="text/javascript" src="js/layer/layer.js"></script>
	<!-- <script type="text/javascript" src="szwqbts/js/baidumap.js"></script>百度地图 -->      
		    <script>
		    var m_id = '${i_m_id}';
		    var BaiduGisMap=BaiduGisMap();
		    BaiduGisMap.div_id="dituContent"; //绑定divid
		    BaiduGisMap.m_id=m_id;//模块ID
		    BaiduGisMap.initMap();//初始化地图
		    BaiduGisMap.displayQYKH();//加载企业客户海量点
		    //BaiduGisMap.displayDw(14786,'2017-05-25');
		    </script>
		    	<script>
		    	//地图高
				$("#map-height").height($(window).height()-44);
				if($("#gaojishaichabox").css("display")=="none"){
				$("#zuo").height($(window).height()-44);
				
				}else{
				$("#zuo").height($(window).height()-87);
				
				}
				
		    	 //点击高级筛选
					$("#gaojishaicha").click(function(){
					if($("#gaojishaichabox").css("display")=="none"){
					$("#gaojishaichabox").show();
					$('#gaojishaicha').text('关闭筛查');
						//地图高
				$("#map-height").height($(window).height()-87);
				$("#zuo").height($(window).height()-87);
				
					}else{
					$("#gaojishaichabox").hide();
					$('#gaojishaicha').text('启用筛查');
					//地图高
				$("#map-height").height($(window).height()-44);
				$("#zuo").height($(window).height()-44);
			
					}
					});
					
		    	</script>
</html>