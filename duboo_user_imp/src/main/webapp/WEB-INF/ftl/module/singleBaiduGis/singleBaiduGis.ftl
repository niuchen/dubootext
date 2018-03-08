<!DOCTYPE html>
<html>

	<head>
	<base href="${basepath}">
	    <meta charset="utf-8"> 
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="renderer" content="webkit">
	    <meta http-equiv="Cache-Control" content="no-siteapp" />
	 
	    <title>人员轨迹（百度地图）</title>
	    <#include "/public_css.ftl" > 
	    <link href="szwqbts/css/plugins/chosen/chosen.css" rel="stylesheet">
	    <link rel="stylesheet" href="szwqbts/css/model/rygj.css">

	    
	</head>
	
	<body class="gray-bg">
		<form role="form" class="select-box border-bottom-style" >
					<table id="data_1">
						<tr>
							<td>外勤人员：</td>
							<td>
								<div id="userid_div"></div><!--部门下拉树组件 -->
                   			</td>
							<td class="control-label" >日期：</td>
                    		<td class="input-group date">
                        		<input class="form-control layer-date" id="dtm_time" readonly onclick="time('dtm_time')">
                    		</td>
                    		<td >
                    			<a data-toggle="modal" class="lf-btn blue-btn btn-primary" href="form_basic.html#modal-form" data-toggle="modal" data-target="#myModals" onclick="setMap()"><i class="glyphicon glyphicon-cog" style="top:2px;right:5px;"></i>地图元素设置</a>
                    		</td>
                    		<td >
                    		<#if 轨迹查询??>
                    			<a class="lf-btn blue-btn btn-primary" onclick="rygjMap()" >轨迹查询</a>
                    		</#if>
                    		</td>
                   		</tr>
                   	</table>
		</form>
	<!--加载地图  -->
	<div  id="mapbox">
	  <div id="dituContentFb" class="map-wrap">	
	  </div>
   </div> 
    <!--弹出地图元素设置-->
		<div class="modal inmodal" id="myModals" tabindex="-1" role="dialog" aria-hidden="true">
               <div class="modal-dialog">
                   <div class="modal-content animated bounceInRight">
                       <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                           </button>
                           
                           <h4 class="modal-title">地图元素设置</h4>
                          
                           </div>
                           <div class="modal-body">
                               
                                       <div class="form-group"><label>元素标注：</label> 
                                     <select class="chosen-select" data-placeholder="选择标注..." id="biaozhu_date" multiple style="width:350px;" tabindex="4">
                                    	<option value='1'>位置时间标注</option>
                                	</select>
                                       <!-- <select class="form-control m-b" name="account" id="biaozhu_date">
                                <option></option> 
                                <option>位置时间标注</option>     
                       				</select> -->
                                       </div>
                                       <div class="form-group"><label>停留范围（米）:</label>
<input type="text"  id="tingliufanwei" name="tingliufanwei" class="form-control"  value="100">
                                       </div>
                           </div>
                           <div class="modal-footer">
                               <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                               <button type="button" class="btn btn-primary" onclick="dtyssz()">保存</button>
                           </div>
                       </div>
                       
                   </div>
                                
        </div>
        <!--弹出外勤人员选择分配人-->                     
		<!-- 	 <div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog" style="width:1040px;mae:20px">
                                <div class="modal-content animated bounceInRight">
                                    <div class="ibox-title">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                                        </button>
                                        
                                        <h5>选择分配人</h5>
                                       
                                        </div>
                                        <div class="">
                                            <div style="width:20%;border:2px solid #E7E7E7;float:left;height: 300px">
												<div id="tree1" style="display:none ;position: absolute;z-index: 666;background-color: white;width: 270px;height: 288px;overflow: auto;" ></div>                                             </div>
                                            <div style="width:80%;display:inline;border:2px solid #E7E7E7;float:left; height: 300px"">
	                                            <div style="margin-top:5px">
	                                            	外勤人员名称：<input type="text" name="">
	                                            	外勤人员电话：<input type="text" name="">
	                                            	所属部门：<input type="text" name="">
	                                            <button type="button">查询</button>
	                                            </div>
	                                       	<div>

                        <table class="table table-bordered" style="margin-top:10px">
                            
                        </table>
	                                            
	                                            
	                                            
	                                            </div>
                                            </div>
                                                   
                                        </div>
                                        <div class="modal-footer">
                                        	<button type="button" class="btn btn-white" data-dismiss="modal">清空</button>
                                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                            <button type="button" class="btn btn-primary">确认</button>
                                        </div>
                                    </div>
                                    
                                </div>
                                
                            </div>  -->
</body>

	
	
	<#include "/public_js.ftl" > 
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=z0U0m8626lrH7MKGjrOAfxQEnUKUSAOm"></script>
	<script type="text/javascript" src="js/b_module/singleBaiduGis/singleBaiduGis.js"></script>            
	<script src="szwqbts/js/plugins/chosen/chosen.jquery.js"></script>
	<script src="js/b_module/allbaiduGis/advanced.js"></script>
	<!-- <script type="text/javascript" src="szwqbts/js/baidumap.js"></script>百度地图 -->      
		    <script>
		    var m_id = '${i_m_id}';
		    var BaiduGisMap=BaiduGisMap();
		    BaiduGisMap.div_id="dituContentFb"; //绑定divid
		    BaiduGisMap.m_id=m_id;//模块ID
		    BaiduGisMap.initMap();//初始化地图
		    BaiduGisMap.displayQYKH();//加载企业客户海量点
		    //BaiduGisMap.displayDw(14786,'2017-05-25');
		    //地图高
				$("#mapbox").height($(window).height()-45);
				//当前时间
   var today = new Date();  //创建时间对象   
   var day = today.getDate();   //获取日
  if (day >= 1 && day <= 9) {
       day = "0" + day;
    }
   var month = today.getMonth() + 1;  //获取月    
   if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
   var year = today.getFullYear(); //获取年       
   var date = year + "-" + month + "-" + day;//组合时间   
   document.getElementById("dtm_time").value = date;   
		    </script>

</html>