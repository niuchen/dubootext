<!DOCTYPE html>
<!-- 个人资料 -->
<html>

    <head>
    <base href="${basepath}">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>个人资料</title>
    <#include "/public_css.ftl" > 
     <link rel="stylesheet"	href="js/layer/skin/default/layer.css">
    <link rel="stylesheet" href="szwqbts/css/model/tzgg.css">
    <link rel="stylesheet" href="szwqbts/css/plugins/cropper/cropper.min.css">
    <link rel="stylesheet" href="szwqbts/css/style.min.css">
    <style>
    body{width:80%;height:auto;}
		thead tr{display:none;}
		i{    font-style: normal;}
		.gray-white{background:#fff;padding:10px;}
		.marginbottom{margin-bottom:30px;}
		.marginbottom span{width: 50px;text-align: right;display: inline-block;margin-right: 20px;}
		.marginbottom input{padding-left:5px;}
		img.circle-border {border: 6px solid #fff;border-radius: 50%;}
		.navy-bg {background-color: #1ab394;color: #fff;}
		.p-lg {padding: 30px;}
		.widget-head-color-box {border-radius: 5px 5px 0 0; margin-top: 10px;}
		.m-b-md {margin-bottom: 20px;}
		.no-margins {margin: 0!important;}
		.font-bold {font-weight: 600;}
		h2 {font-size: 24px;}
		.small {font-size: 85%;}
		.widget-text-box {padding: 20px 0; background: #f3f3f4;}
		.media-heading {margin-top: 0;margin-bottom: 5px;}
		.widget-text-box p {font-size:14px;}
		.widget-text-box p span{width:50px;display:inline-block;text-align:left;}
		.lf-hide{display:none;}
		.bluecolor{color: #0e9aef;}
		.floatright{float:right;}
		.cursorpointer{cursor:pointer;}
		.padding20{padding:20px;}
		.img-touxiang{width:60px;height:60px;border-radius:5px;margin-right:10px;}
		#v_real_name{font-size:18px;}
		.widthharf{width:50%;float:left}
		.gray-bg2{background:#fbfbfb;}
		
		.layui-layer-hui{border: 1px solid rgba(0,0,0,.3) !important;
    box-shadow: 1px 1px 5px rgba(0,0,0,.2) !important;
    background-color: #fff !important;
    color:#333 !important;
		}
    </style>
    </head>
    
<body class="gray-bg">
	<div class="wrapper " style="padding-bottom:40px;">
		<div class="row animated fadeInRight">
	        <!-- 个人资料左边 -->
	        <div class="col-sm-12 gray-white">
	       				<div class="ibox-title border-bottom-style" style="border:none;border-bottom:1px solid #ccc;margin-bottom:10px;">
	                        <h5>个人信息</h5>
	                        <h5 class="bluecolor floatright cursorpointer" id="xiugai">修改</h5>
	                    </div>
 
	                    <div class="gray-bg padding20">
<!-- 	                    src="http://orheaidcn.bkt.clouddn.com/a4.jpg" -->
	                    	<img  id="changeimg" class="img-touxiang" width="103" height="103">
 
	                    	<span  id="v_real_name"></span>
	                    	<div class="widget-text-box" style="background:#fbfbfb;border:none;border-radius:5px;padding-top:10px;padding-bottom:0">
	                    		<p><span>性别：</span><strong id="xingbie"></strong></p>
				                <p><span>公司：</span><strong id="v_qy_name"></strong></p>    
				                <p><span>部门：</span><strong id="v_dept_name"></strong></p>
				                <p><span>角色：</span><strong id="v_role_name"></strong></p>
				                <p><span>级别：</span><strong id="v_level_name"></strong></p> 
				                
				            </div>
	                    </div>
	        </div>
	        <div class="col-sm-12 gray-white">
		        <div class="col-sm-10 gray-bg2 padding20" >
		                    	<span  id="v_real_name"></span>
		                    	<div class="widget-text-box" style="background:#fbfbfb;border:none;border-radius:5px;padding-top:0;padding-bottom:0">
		                    		<p><span>手机：</span><strong id="v_user_tel"></strong></p>
		                    		<p><span>邮箱：</span><strong id="email"></strong></p>
					                <p><span>微信：</span><strong id="wx"></strong></p> 
					                <p><span>生日：</span><strong id="birth"></strong></p>   
					                <p><span>QQ：</span><strong id="qq"></strong></p>
					            </div>
		        </div>
	        </div>
	        <!-- 个人资料左边结束 -->
	        
		</div>
	</div>
	
	
	<!-- 修改个人资料弹框开始 -->
	        <div id="alsemessage" class="lf-hide">
	        <div class="col-sm-12 gray-white " >
					<div class="ibox float-e-margins ">
	                    <div class="ibox-content" style="padding-bottom: 50px;border:none;">
                            <div class="feed-activity-list">
                                <form action="" class="feed-element" style="border:none">
                                   
                                        <div class="marginbottom widthharf" >
                                            <span>姓名:</span>
                                            <input type="text" id="name" name="v_real_name">
                                        </div>
                                        <div class="marginbottom widthharf" >
                                            <span>性别:</span>
                                            <div style="display:inline-block;height:24px;position:relative;top:1px;">
                                                <input type="radio" name="Sex" value="1" ><i style="margin-right:20px;margin-left:5px;">男</i>
                                                <input type="radio" name="Sex" value="2"><i style="margin-left:5px;">女</i>
                                            </div>
                                        </div>
                                        <div class="marginbottom widthharf" >
                                            <span>邮箱:</span>
                                            <input type="text"    id="v_user_email" name="v_user_email" onblur="form_check()">
                                        </div>
                               
                                        <div class="marginbottom widthharf" >
                                            <span>微信:</span>
                                        	<input  id="v_user_wx" name="v_user_wx">
                                        </div>
                                        <div class="marginbottom widthharf" >
                                            <span>QQ:</span>
                                            <input name="dtm_birth" id="v_user_qq" name="v_user_qq">
                                        </div>
                                        <div class="marginbottom widthharf" >
                                            <span>生日:</span>
                                            <input type="text"  name="dtm_birth" id="dtm_birth">
                                        </div>
                                </form>
                            </div>
                            <button type="button" class="btn btn-outline btn-primary" style="float:right;margin-right: 14px;margin-top:50px;" onclick="updateM()">提交</button>  
                            <button type="button" class="btn btn-outline btn-primary" style="float:right;margin-right: 14px;margin-top:50px;" onclick="close_detal()">取消</button>                    
                        </div>
	
					</div>
	         </div>
	         </div>
        <!-- 修改个人资料弹框结束 -->
	 <!-- 模态框开始 -->
	<div id="imgbox" class="lf-hide" style="overflow:hidden">
 		<div class="img_show img_show1">
	<p style="text-align:center">  
	<img id="imgid"   width="103" height="103" alt="">
	</p>
 	  <form id="from_file" name="from_file" role="form" method="post" class="form-horizontal" enctype="multipart/form-data">
	      <input id="imgfile" name="imgfile"  type="file" class="upfile" />
 	  </form>
	 <br/>
	 	<p style="text-align:center">  
	   <button id="upfilebtn" type="button">上传</button>
	   <button id="closebtn" type="button">关闭</button>
	   </p>
 	</div>
   </div>
 
	<!-- 模态框结束 -->
</body>
		<#include "/public_js.ftl" > 
		<script src="${basepath}js/b_module/userDetail/userDetail.js"></script>
 
		<script>
     	var userid='${USERID}';
     	var contextPath ='${basepath}';
     	</script>
</html>
