<!--网盘管理-->
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
    <link rel="stylesheet" href="szwqbts/css/model/wpgl.css"> 
</head>
    <body>
		<div class="wrapper wrapper2 clearfix">
		<div class="lf-seach clearfix" style="border-bottom: 1px solid #0e9aef;margin-bottom: 10px;">
		<p style="float: left; padding-left: 20px;">${M_NAME}</p>
		<div style="float: right; margin-bottom: 10px;">
		       <#if 上传??>
              <button class="dl-btn create_file" onclick="create_file()">上传</button>
               </#if>
              <#if 新建文件夹??>
		     <button class="dl-btn create_folder" onclick="create_folder()">新建文件夹</button>
		      </#if>
         </div>
		</div>
			<div class="nav-left left">
				<ul id="skydrive_tree" class="ztree"></ul>
			</div>
			<div class="content-right right">
				<!--table开始-->
				<table id="skydrive_table">
				</table>
				<!--table结束-->
			</div>
		</div>
		<!--创建文件夹-->
            <form id="folder_form" class="folder_form hide2" style="margin:20px 20px 0;">
            <input id="folder_name" name="folder_name"  class="form-control"  placeholder="请填写文件名">
            </form>
		<!--创建文件夹结束-->
	  <!--创建文件夹-->
                  <form id="file_form" class="clearfix hide2" style="padding:10px 20px 0">
	                  <input type="file" class="form-control" name="file_name" id="file_name">
                  </form>
       <!--创建文件夹结束-->
      <!--为选择节点提示不能创建文件夹-->
               <div class="modal-body notcreate_folder hide2">请选择网盘下级存储目录</div>
            <!--为选择节点提示不能创建文件夹结束-->   
            	<!--创建文件夹-->
                     <form id="modify_form" class="modify_filename hide2" style="padding:10px 20px 0">
                      <input id="modify_filename" name="modify_filename" class="form-control">
                     </form>
       <!--创建文件夹结束-->
         <!--文件夹详情-->
               <div class="modal-body hide2" id="folder_conetnt"></div>
	  <!--创建文件夹结束-->
               
	 </body>
	 	<iframe id="exportForm"    style="display:none;"></iframe>
		<script src="js/b_module/skyDriveManager/skyDriveManager.js" type="text/javascript" charset="utf-8"></script>
		<script src="szwqbts/js/plugins/validate/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
	    <script src="szwqbts/js/plugins/validate/additional-methods.js" type="text/javascript" charset="utf-8"></script>
	    <script>
     	var username='${USERNAME}';
     	var userid='${USERID}';
     	var contextPath ='${basepath}';
     	var m_id = '${i_m_id}';
     	 var cz_delete='';
     	  <#if 删除??>
          cz_delete = '${删除}';
	     </#if>
	      var cz_mname='';
     	  <#if 重命名??>
          cz_mname = '${重命名}';
	     </#if>
	     var cz_down='';
     	  <#if 下载??>
          cz_down = '${下载}';
	     </#if>
     	</script>
	
</html>
