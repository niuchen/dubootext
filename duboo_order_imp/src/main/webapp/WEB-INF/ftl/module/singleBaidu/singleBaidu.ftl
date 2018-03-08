
<!DOCTYPE html>
<html>

<head>
<base href="${basepath}">
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
 
    <title>人员轨迹</title>
      <#include "/public_css.ftl" > 
    
    <style type="text/css">
		/*地图*/
	 
  	        .map-wrap {width: 100%;height:90%;overflow: hidden;margin:0;font-family:"微软雅黑";}
 			  
			.shadow-wrap{height: 100%;width: 100%;position: fixed;background: #676a6c;z-index: 500;opacity: 0.4;display: none;}
			.shade-name{height: 100%;width: 100%;position: fixed;z-index: 600;display: none;}
			.shade-box{width: 500px;height: 225px;background: #6D7C8C;margin: 100px auto 0;border: 1px solid #d2d2d2;border-radius: 4px;}
			.shade-box h2{margin: 0;line-height: 30px;font-size: 14px;border-bottom: 1px solid #e7eaec;}
			.shade-box h2 span{height: 18px;width: 18px;background: blue;float: right;}
			.label-wrap{height: 127px;border: 1px solid #e7eaec;margin: 10px auto;width: 80%;background: #eee;border-radius: 4px;}
			.label-wrap nav li{list-style: none;width: 85px;margin: 15px auto;width: 250px;height: 30px;background: red;}
			.label-wrap nav li p{line-height: 30px;float: left;}
			.label-wrap nav li select{float: right;width: 140px;height: 25px;margin-top: 2px;}
			.label-wrap nav li input{line-height: 20px;float: right;width: 140px;margin-top: 2px;}
			.btn-make{line-height: 30px;width: 80px;text-align: center;background: #eee;border: 1px solid #d2d2d2;display: block;float: right;margin-right: 15px;border-radius: 4px;}    
    </style>
</head>

<body class="gray-bg">
		        
					<form role="form">
								<table id="data_1">
									<tr>
										<td>外勤人员：</td>
										<td>
											<input type="text"  id="tree_name" name="tree_name"  placeholder="" class="form-control"  value=""  data-toggle="modal" data-target="#myModal2">
		                    			</td>
										<td class="control-label">日期：</td>
			                    		<td class="input-group date">
			                        		<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			                        		<input type="text" class="form-control" value="2014-11-11" >
			                    		</td>
			                    		<td>
			                    			<a data-toggle="modal" class="btn btn-primary" href="form_basic.html#modal-form" data-toggle="modal" data-target="#myModal">地图元素设置</a>
			                    		</td>
		                    		</tr>
		                    	</table>
					</form>
	<!--加载地图  -->
	  <div id="dituContent" class="map-wrap">
				
	  </div>
    
    <!--弹出地图元素设置-->
		<div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content animated bounceInRight">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                                        </button>
                                        
                                        <h4 class="modal-title">地图元素设置</h4>
                                       
                                        </div>
                                        <div class="modal-body">
                                            
                                                    <div class="form-group"><label>元素标注：</label> 
                                                  
                                                    <select class="form-control m-b" name="account">
					                                        <option>位置时间标注</option>                                       
                                    				</select>
                                                    </div>
                                                    <div class="form-group"><label>停留范围（米）:</label>
													<input type="text"  id="" name=""  placeholder="100" class="form-control"  value="">
                                                    </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                            <button type="button" class="btn btn-primary">保存</button>
                                        </div>
                                    </div>
                                    
                                </div>
                                
                            </div>
        <!--弹出外勤人员选择分配人-->                     
			<div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog" style="width:1040px;mae:20px">
                                <div class="modal-content animated bounceInRight">
                                    <div class="ibox-title">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                                        </button>
                                        
                                        <h5>选择分配人</h5>
                                       
                                        </div>
                                        <div class="">
                                            <div style="width:20%;border:2px solid #E7E7E7;float:left;height: 300px">
		                    		 			<div id="treeview1" class="test treeview" style="background-color:#FFFFFF;width:100%"><ul class="list-group"><li class="list-group-item node-treeview1" data-nodeid="0" style=""><span class="icon"><i class="click-collapse glyphicon glyphicon-minus"></i></span><span class="icon"><i class="glyphicon glyphicon-stop"></i></span>父节点 1</li><li class="list-group-item node-treeview1" data-nodeid="1" style=""><span class="indent"></span><span class="icon"><i class="click-expand glyphicon glyphicon-plus"></i></span><span class="icon"><i class="glyphicon glyphicon-stop"></i></span>子节点 1</li><li class="list-group-item node-treeview1" data-nodeid="2" style=""><span class="indent"></span><span class="icon"><i class="glyphicon"></i></span><span class="icon"><i class="glyphicon glyphicon-stop"></i></span>子节点 2</li><li class="list-group-item node-treeview1" data-nodeid="3" style=""><span class="icon"><i class="glyphicon"></i></span></div>
                                            </div>
                                            <div style="width:80%;display:inline;border:2px solid #E7E7E7;float:left; height: 300px"">
	                                            <div style="margin-top:5px">
	                                            	外勤人员名称：<input type="text" name="">
	                                            	外勤人员电话：<input type="text" name="">
	                                            	所属部门：<input type="text" name="">
	                                            <button type="button">查询</button>
	                                            </div>
	                                       	<div>

                        <table class="table table-bordered" style="margin-top:10px">
                            <thead>
                                <tr>
                                    <th>外勤人员名称</th>
                                    <th>外勤人员电话</th>
                                    <th>Email</th>
                                    <th>所属部门</th>
                                    <th>工号</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>张三</td>
                                    <td>男</td>
                                    <td>23</td>
                                    <td>男</td>
                                    <td>23</td>
                                </tr>
                                <tr>
                                    <td>李四</td>
                                    <td>男</td>
                                    <td>27</td>
                                    <td>男</td>
                                    <td>23</td>
                                </tr>
                                <tr>
                                    <td>王麻子</td>
                                    <td>男</td>
                                    <td>65</td>
                                    <td>男</td>
                                    <td>23</td>
                                </tr>
                            </tbody>
                        </table>
					<div class="row">
						<table>
						<tr>
							<td class="col-sm-6">
								<div class="dataTables_info" id="DataTables_Table_0_info" role="alert" aria-live="polite" aria-relevant="all">显示 1 到 10 项，共 57 项</div>
							</td>
								
							<td class="col-sm-6">
								<div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">5</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">6</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
							</td>
						</tr>
						</table>
					</div>
	                                            
	                                            
	                                            
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
                                
                            </div>
   
   
    <#include "/public_js.ftl" > 

    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=z0U0m8626lrH7MKGjrOAfxQEnUKUSAOm"></script>
    
    <script type="text/javascript" src="${base.getContextPath()}/js/b_module/singleBaiduGis/baidumap.js"></script>
	<script type="text/javascript"> 
	alert(m_id+"模块id");
     var BaiduGisMap=BaiduGisMap();
    BaiduGisMap.div_id="dituContent"; //绑定divid
    BaiduGisMap.m_id=m_id;//模块ID
    BaiduGisMap.initMap();//初始化地图
    BaiduGisMap.displayQYKH();//加载企业客户海量点
    BaiduGisMap.displayDw(14786,'2017-05-25');
     </script> 
 </body>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
</html>
