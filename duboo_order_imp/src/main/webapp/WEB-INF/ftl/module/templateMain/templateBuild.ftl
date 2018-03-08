<!--审批模板配置-->
<!DOCTYPE html>
<html>

<head>
    <base href="${basepath}">
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link href="szwqbts/js/plugins/FormbuildV1.0/Public/css/bootstrap/css/bootstrap.css?2024" rel="stylesheet" type="text/css" />
    <link href="szwqbts/js/plugins/FormbuildV1.0/Public/css/site.css?2024" rel="stylesheet" type="text/css" />
    <link href="szwqbts/js/plugins/FormbuildV1.0/Public/css/dome.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="szwqbts/css/model/spmbpz.css">
    <link rel="stylesheet" href="szwqbts/css/formbuild.css">
    
 </head>
</head>
<body>
<div class="container">
  <div class="row clearfix" >
    <div class="span12 base-element  clearfix">
       <div class="base-inner clearfix">
          <label class='control-label control-label2 right'>描述：<textarea id="template_remake" name="template_remake" class="template_remake"  /> </textarea></label>
          <label class='control-label control-label2 left'>模板名称： <input type="text" id="template_name" name="template_name" placeholder='请输入'  maxlength='40' /></label>
          <label class='control-label control-label2 left' style="width:294px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图标：
              <!-- <input type="file" id="uploadFile_img" name="uploadFile_img" onchange ="uploadFile()"/> -->
              <!-- 头像选择 start -->
	        <span class="cmt-ico " style="position: relative ">
			<a class="head-ico show-ico-btn " title="选择图标 " style="width:63px;height:20px;display:inline-block;">
			<img id="modify_img" class="focus-ico " alt="选择图标 " width="40 " height="40 ">
			</a>
			<!-- 弹出窗口  start-->
			<div class="pop-ico " style="display: none ">
				<div class="ico-title ">
					<span>选择图标</span>
					<a title="关闭窗口 " class="hide-ico-btn ">x</a>
				</div>
				<div class="ico-list ">
					<a data-src="1 "  class="cur "><img src="images/approvalicons/icon_approval_leave_small.png" width="40 " height="40 "></a>
					<a data-src="2"><img src="images/approvalicons/icon_approval_overtime_small.png" width="40 " height="40 "></a>
					<a data-src="3"><img src="images/approvalicons/icon_approval_getout_small.png" width="40 " height="40 "></a>
					<a data-src="4"><img src="images/approvalicons/icon_approval_evection_small.png" width="40 " height="40 "></a>
					<a data-src="5"><img src="images/approvalicons/icon_approval_gathering.png" width="40 " height="40 "></a>
					<a data-src="6"><img src="images/approvalicons/icon_approval_cooperation.png" width="40 " height="40 "></a>
					<a data-src="7"><img src="images/approvalicons/icon_approval_await.png" width="40 " height="40 "></a>
					<a data-src="8"><img src="images/approvalicons/icon_approval_imprest_small.png" width="40 " height="40 "></a>
					<a data-src="9"><img src="images/approvalicons/icon_approval_order.png" width="40 " height="40 "></a>
					<a data-src="10 "><img src="images/approvalicons/icon_approval_consuming.png" width="40 " height="40 "></a>
					<a data-src="11"><img src="images/approvalicons/icon_approval_pass.png" width="40 " height="40 "></a>
					<a data-src="13"><img src="images/approvalicons/icon_approval_pass_no.png" width="40 " height="40 "></a>
					<a data-src="14"><img src="images/approvalicons/icon_approval_procurement.png" width="40 " height="40 "></a>
					<a data-src="15"><img src="images/approvalicons/icon_approval_await.png" width="40 " height="40 "></a>
					<a data-src="16"><img src="images/approvalicons/icon_approval_booking.png" width="40 " height="40 "></a>
					<a data-src="17"><img src="images/approvalicons/icon_approval_cancellation.png" width="40 " height="40 "></a>
					<a data-src="18"><img src="images/approvalicons/icon_approval_selected.png" width="40 " height="40 "></a>
					<a data-src="19"><img src="images/approvalicons/icon_approval_subscribe.png" width="40 " height="40 "></a>
					<a data-src="20"><img src="images/approvalicons/icon_approval_project.png" width="40 " height="40 "></a>
					</a>
				</div>
				</div>
				<!-- 弹出窗口  end-->
				</span>
				<!-- 头像选择 end -->
          </label> 
      </div>
    </div>
    
    <div class="span6">
      <div class="clearfix">
        <div id="build">
         <h2>点击组件可编辑  拖拽组件出表单可移除!</h2>
          <form id="target" class="form-horizontal">
            <fieldset></fieldset>
            <input type="hidden" name="modalflag" id="modalflag" value="" />
          </form>
<!--           <button class="layui-btn call-off right">取消</button> -->
          <button onclick="savetemplent()" class="layui-btn savetemplent right">提交</button>
        </div>
      </div>
    </div>

    <div class="span5" style="border-left:1px dashed #ddd;float:right">
       <h2>拖拽下面的控件到左侧</h2>
      <div class="tabbable">
        <form class="form-horizontal" id="components">
          <fieldset>
            <div class="tab-content">
              <div class="tab-pane active" id="1">

<!-- Text start -->
<div class="control-group component" i_compent_type="1" rel="popover" title="文本框控件" trigger="manual" 
 data-content="
  <form class='form'>
  <div class='controls clearfix'>
      <label class='control-label left'>标题</label> <input type='text' name ='text_title'   id='text_title' placeholder='标题' class='winp left'  maxlength='20'>
      <label class='control-label left'>提示文字</label> <input type='text' id='text_tswz' name='text_tswz'  placeholder='提示文字' class='winp left'  maxlength='20' >
      <label class='control-label left'>占有行数</label> <input type='text' id='text_zyhs' name='text_zyhs' placeholder='占有行数' class='winp left'>
      <label class='control-label left'>字符长度</label> <input type='text' id='text_zfcd' name='text_zfcd' placeholder='字符长度' class='winp left'>  
      <label class='control-label control-label-ck left'>是否必填</label> <input type='checkbox' id='text_sfbt' name='text_sfbt' placeholder='121' class='winp left'>
      <div class='line'></div>
      <button class='btn btn-info right' type='button'>确定</button><button class='btn btn-danger right' type='button'>取消</button>
    </div>
    </form>
 "
 >
  <!-- Text -->
  <label class="control-label leipiplugins-orgname">文本框</label>
  <div class="controls">
    <input type='text' name="leipiNewField" i_compent_type="text" placeholder="" title="文本框" value="" class="leipiplugins" leipiplugins="text"/>
  </div>

</div>
<!-- Text end -->

<!--多行文本框开始-->
<!-- Textarea start -->           
<div class="control-group component" rel="popover" i_compent_type="2" title="文本框控件" trigger="manual"
  data-content="
  <form class='form'>
    <div class='controls clearfix'>
      <label class='control-label left'>标题</label> <input type='text' name ='text_title'   id='text_title' placeholder='标题' class='winp left'   maxlength='20'>
      <label class='control-label left'>提示文字</label> <input type='text' id='text_tswz' name='text_tswz'  placeholder='提示文字' class='winp left'   maxlength='20'>
      <label class='control-label left'>占有行数</label> <input type='text' id='text_zyhs' name='text_zyhs' placeholder='占有行数' class='winp left'>
      <label class='control-label left'>字符长度</label> <input type='text' id='text_zfcd' name='text_zfcd' placeholder='字符长度' class='winp left'>  
      <label class='control-label control-label-ck left'>是否必填</label> <input type='checkbox' id='text_sfbt' name='text_sfbt' placeholder='121' class='winp left'>
      <div class='line'></div>
      <button class='btn btn-info right' type='button'>确定</button><button class='btn btn-danger right' type='button'>取消</button>
    </div>
  </form>"
  >
  <!-- Text -->
  <label class="control-label leipiplugins-orgname">多行文本</label>
  <div class="controls">
   <div class="textarea">
          <textarea title="多行文本" name="leipiNewField" class="leipiplugins" leipiplugins="textarea"></textarea>
    </div>
  </div>

</div>
<!-- Textarea end -->
<!--多行文本框结束-->

<!--数字文本框开始-->
<div class="control-group component" i_compent_type="3" rel="popover" title="数字文本框" trigger="manual"
  data-content="
  <form class='form'>
    <div class='controls clearfix'>
     <label class='control-label left'>标题</label> <input type='text' name ='text_title'   id='text_title' placeholder='标题' class='winp left'   maxlength='20'>
      <label class='control-label left'>提示文字</label> <input type='text' id='text_tswz' name='text_tswz'  placeholder='提示文字' class='winp left'  maxlength='20' >
      <label class='control-label left'>占有行数</label> <input type='text' id='text_zyhs' name='text_zyhs' placeholder='占有行数' class='winp left'>
      <label class='control-label left'>字符长度</label> <input type='text' id='text_zfcd' name='text_zfcd' placeholder='字符长度' class='winp left'>  
      <label class='control-label control-label-ck left'>是否必填</label> <input type='checkbox' id='text_sfbt' name='text_sfbt' placeholder=''  class='winp left'>
      <div class='line'></div>
      <button class='btn btn-info right' type='button'>确定</button><button class='btn btn-danger right' type='button'>取消</button>
    </div>
  </form>"
  >
  <!-- Textarea -->
  <label class="control-label leipiplugins-orgname">数字文本框</label>
  <div class="controls">
   <input name="leipiNewField" type="text" placeholder="" title="数字文本框" value="" class="leipiplugins" leipiplugins="numberfield"/>
  </div>
</div>
<!--数字文本框结束-->


<!-- 日期控件-->
<div class="control-group component" i_compent_type="4" rel="popover" title="日期控件" trigger="manual"
  data-content="
  <form class='form'>
    <div class='controls clearfix'>
      <label class='control-label left'>标题</label> <input type='text' name ='text_title'   id='text_title' placeholder='标题' class='winp left'  maxlength='20' >
<!--       <label class='control-label left'>提示文字</label> <input type='text' id='text_tswz' name='text_tswz'  placeholder='提示文字'  class='winp left'> -->
      <label class='control-label left'>日期格式</label> 
      <select id='text_rqgs' name='text_rqgs'  class='left winpSele'>
      <option value='1'>年月日时分</option>
      <option value='2'>年月日</option>
      <option value='3'>时分</option>
      </select>
      <label class='control-label control-label-ck left'>是否必填</label> <input type='checkbox' id='text_sfbt' name='text_sfbt' placeholder=''  class='winp left'>
       <div class='line'></div>
      <button class='btn btn-info right' type='button'>确定</button><button class='btn btn-danger right' type='button'>取消</button>
    </div>
  </form>"
  >
  <!-- Text -->
  <label class="control-label leipiplugins-orgname">日期控件</label>
  <div class="controls">
    <input name="leipiNewField" type="text" placeholder="年月日时分" title="日期控件" value="" class="leipiplugins  icon-date " leipiplugins="datafield"/>
  </div>

</div>
<!--日期控件结束 -->


<!-- 日期区间-->
<div class="control-group component" rel="popover" i_compent_type="9" title="日期区间控件" trigger="manual"
  data-content="
  <form class='form'>
    <div class='controls clearfix'>
      <label class='control-label left'>标题</label> <input type='text' name ='text_title'   id='text_title' placeholder='标题' class='winp left'   maxlength='20'>
<!--       <label class='control-label left'>提示文字</label> <input type='text' id='text_tswz' name='text_tswz'  placeholder='提示文字'  class='winp left'> -->
      <label class='control-label left'>日期格式</label> 
      <select id='text_rqgs' name='text_rqgs' class='left winpSele'>
      <option value='1'>年月日时分</option>
      <option value='2'>年月日</option>
      <option value='3'>时分</option>
      </select>
      <label class='control-label control-label-ck left'>是否必填</label> <input type='checkbox' id='text_sfbt' name='text_sfbt' placeholder=''  class='winp left'>
       <div class='line'></div>
      <button class='btn btn-info right' type='button'>确定</button><button class='btn btn-danger right' type='button'>取消</button>
    </div>
  </form>"
  >
  <!-- Text -->
  <label class="control-label leipiplugins-orgname">日期区间</label>
  <div class="controls">
    <input name="leipiNewField" type="text" placeholder="年月日时分" title="日期区间" value="" class="leipiplugins icon-date icon-date2" leipiplugins="datafieldqj"/>
  </div>

</div>
<!--日期 区间结束-->


<!-- Select start -->
<div class="control-group component" i_compent_type="5" rel="popover" title="下拉控件" trigger="manual"
  data-content="
  <form class='form formTextarea'>
    <div class='controls clearfix'>
      <label class='control-label left'>控件名称</label> <input type='text' id='orgname' placeholder='控件名称' class='winp left'   maxlength='20' >
      <label class='control-label left'>下拉选项</label>
      <textarea style='min-height: 200px' id='orgvalue'></textarea>
      <p class='help-block'>一行一个选项</p>
      <label class='control-label control-label-ck left'style='margin:0 2px 0 0'>是否多选</label> <input type='checkbox' id='text_sfdx' name='text_sfdx' placeholder=''  class='winp left'>
      <label class='control-label control-label-ck left' style='margin:0 2px 0 10px'>是否必填</label> <input type='checkbox' id='text_sfbt' name='text_sfbt' placeholder=''  class='winp left'>
      <div class='line'></div>
      <button class='btn btn-info right' type='button'>确定</button><button class='btn btn-danger right' type='button'>取消</button>
    </div>
  </form>"
  >
  <!-- Select -->
  <label class="control-label leipiplugins-orgname">下拉菜单</label>
  <div class="controls">
    <select name="leipiNewField" title="下拉菜单" class="leipiplugins" leipiplugins="select">
      <option>选项一</option>
      <option>选项二</option>
      <option>选项三</option>
    </select>
  </div>
</div>
<!-- Select end -->

<!--图片开始-->
<div class="control-group component" i_compent_type="6" rel="popover" title="图片" trigger="manual"
  data-content="
  <form class='form'>
    <div class='controls clearfix'>
      <label class='control-label left'>标题</label> <input type='text' title='图片' name ='text_title'   id='text_title' placeholder='标题' class='winp left'  maxlength='20' >
      <label class='control-label left'>提示文字</label> <input type='text' id='text_tswz' name='text_tswz'  placeholder='提示文字' class='winp left'  maxlength='20' >
      <label class='control-label left'>图片张数</label> <input type='text' id='text_zfcd' name='text_zfcd' placeholder='图片张数'  class='winp left'>  
      <label class='control-label control-label-ck left'>必须拍照</label> <input type='checkbox' id='text_sfbt' name='text_sfbt' placeholder=''  class='winp left'>
      <div class='line'></div>
      <button class='btn btn-info right' type='button'>确定</button><button class='btn btn-danger right' type='button'>取消</button>
    </div>
  </form>"
  >
  <!-- Text -->
  <label class="control-label leipiplugins-orgname">图片</label>
  <div class="controls">
    <img src="szwqbts/js/plugins/FormbuildV1.0/Public/js/formbuild/images/img_icon.png" title='图片'  name="leipiNewField" class="leipiplugins"  leipiplugins="imagefield"/>
  </div>

</div>

<!--图片结束-->


<!--定位-->
<div class="control-group component" i_compent_type="8" rel="popover" title="定位" trigger="manual"
  data-content="
  <form class='form'>
    <div class='controls clearfix'>
      <label class='control-label left'>标题</label> <input type='text' name ='text_title' title='定位'   id='text_title' placeholder='标题' class='winp left'  maxlength='20' >
      <label class='control-label left'>提示文字</label> <input type='text' id='text_tswz' name='text_tswz'  placeholder='提示文字' class='winp left'  maxlength='20'  >
      <div class='line'></div>
      <button class='btn btn-info right' type='button'>确定</button><button class='btn btn-danger right' type='button'>取消</button>
    </div>
  </form>"
  >
  <!-- Text -->
  <label class="control-label leipiplugins-orgname">定位</label>
  <div class="controls">
    <img src="szwqbts/js/plugins/FormbuildV1.0/Public/js/formbuild/images/leipi_formbuild.png"  title='定位' name="leipiNewField" class="leipiplugins"  leipiplugins="dwfield"/>
  </div>

</div>

<!--定位-->



  </div>
  <div class="tab-pane" id="5">
    <textarea id="source" class="span6">dfsdfdf</textarea>
  </div>
  </fieldset>
          </form>
        </div><!--tab-content-->
        </div><!---tabbable-->
      </div> <!-- row -->
    </div> <!-- /container -->
  <!-- text --> 
<script type="text/javascript" charset="utf-8" src="szwqbts/js/plugins/FormbuildV1.0/Public/js/jquery-1.7.2.min.js?2024"></script>
<script type="text/javascript"  src="szwqbts/js/plugins/FormbuildV1.0/Public/js/formbuild/bootstrap/js/bootstrap.min.js?2024"></script>
<script type="text/javascript" charset="utf-8" src="szwqbts/js/plugins/FormbuildV1.0/Public/js/formbuild/form.build.core.js?2024"></script>
<script type="text/javascript" charset="utf-8" src="szwqbts/js/plugins/FormbuildV1.0/Public/js/formbuild/form.build.plugins.js?2024"></script>
<script type="text/javascript" charset="utf-8" src="js/b_module/templateBuild/templateform.js"></script>
<script type="text/javascript" charset="utf-8" src="js/b_module/templateBuild/pop-ico.js"></script>
 <script src="js/layer/layer.js" type="text/javascript" charset="utf-8"></script><!-- 弹窗js -->
<script type="text/javascript">
var username='${USERNAME}';
var userid='${USERID}';
var contextPath ='${basepath}'; 
</script>
</body>
</html>
