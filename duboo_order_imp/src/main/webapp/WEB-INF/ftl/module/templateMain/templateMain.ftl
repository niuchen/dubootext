<!--审批模板配置-->
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
    <link rel="stylesheet" href="szwqbts/css/model/spmbpz.css">
 </head>
</head>
<body>
<div class="wrapper">
<div class="lf-seach clearfix" style="border-bottom: 1px solid #0e9aef;margin-bottom: 10px;">
<p style="float: left; padding-left: 20px;">审批模板配置</p>
<#if 新增模板??>
<div style="float: right; margin-bottom: 10px;">
<button data-toggle="modal" class="layui-btn" onclick="seach_template()">新增模板 <span class="fa fa-group"></span></button>
</div>
 </#if>
</div>
<div class="panel-body" style="margin-bottom:5px;">
    <!--查询条件区域-->
    <!--功能栏start  -->
    <div class="select-content select-content-two row">
       <!--  <div class="btn-group btn-filtrate col-sm-2" >
          
            <button data-toggle="modal" class="layui-btn" onclick="seach_template()">新增模板 <span class="fa fa-group"></span></button>
        </div> -->
        <div id="allData" class="input-group input-seek col-sm-2" style="float:right;">
            <input type="text" class="lf-input lf-seach-inp wid7" id="form_templent_name" placeholder="请输入模板名称"> 
            <span class="input-group-btn">
                <button id="seach_templist" type="button" class="lf-btn lf-seach-btn margin0 seach-btn" onclick="seach_templist()">查询</button>
            </span>
        </div>
    </div>
    <!--功能栏 end-->
    <!--筛选(默认隐藏)start-->
</div>
    <table id="templent_table"></table>
<!--table结束-->
</div>
<script type="text/javascript" charset="utf-8" src="js/b_module/templateBuild/templateBuild.js"></script>
<script type="text/javascript">
 var username='${USERNAME}';
var userid='${USERID}';
var contextPath ='${basepath}';
var m_id = '${i_m_id}';
         var cz_qy='';
     	  <#if 启用??>
          cz_qy = '${启用}';
	      </#if>
          var cz_jy='';
     	  <#if 禁用??>
           cz_jy = '${禁用}';
	      </#if>
          var cz_bj='';
     	  <#if 编辑??>
           cz_bj = '${编辑}';
	      </#if>
</script>
</body>
</html>
