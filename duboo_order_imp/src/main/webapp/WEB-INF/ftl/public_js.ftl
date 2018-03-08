   	<script>
   	<#if M_NAME??>
 	var m_name = '${M_NAME}';
   	</#if>
 	<#if M_ID??>
 	var m_id = '${M_ID}';
   	</#if>
     	
     </script>
    
    <script src="szwqbts/js/jquery.min.js?v=2.1.4"></script>
    <script src="szwqbts/js/jquery-ui-1.10.4.min.js?v=2.1.4"></script>
<!--      <script src="szwqbts/js/plugins/jquery-form/jquery.form.min.js"></script> -->
    <script src="szwqbts/js/plugins/jquery-form/jquery.form.js"></script>
    <script src="szwqbts/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="szwqbts/js/plugins/bootstrap-table/bootstrap-table.min.js"></script><!-- 表格js -->
    <script src="szwqbts/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script><!-- 表格中文支持js -->
    <script src="szwqbts/js/jquery.nicescroll.min.js"></script><!-- 自定义滚动条js -->
    <script src="js/layer/layer.js" type="text/javascript" charset="utf-8"></script><!-- 弹窗js -->
 	<script src="szwqbts/js/bootstrap-prettyfile.js" type="text/javascript" charset="utf-8"></script><!-- file样式美化 -->
  	<script src="szwqbts/js/necomponent/forminit.js"></script><!-- 初始化高级筛选的js niuchen编写 -->
    <script type="text/javascript" src="szwqbts/js/plugins/bootstrap-select-1.12.2/bootstrap-select.js"></script>
     <script type="text/javascript"  src="szwqbts/js/plugins/bootstrap-select-1.12.2/defaults-zh_CN.js"></script>
     <script language=javascript src='szwqbts/js/plugins/suggest/bootstrap-suggest.js'></script>
     <script language=javascript src='szwqbts/js/plugins/layer/laydate-v1.1/laydate/laydate.js'></script>
 	 <script type="text/javascript" src="szwqbts/js/plugins/zNodes/js/jquery.ztree.core.min.js"></script>
 	 <script type="text/javascript" src=" szwqbts/js/plugins/zNodes/js/jquery.ztree.excheck.min.js"></script><!--ztree多选js-->
 	 <script src="szwqbts/js/module.min.js" type="text/javascript" charset="utf-8"></script><!-- 富文本编辑 -->
	 <script src="szwqbts/js/hotkeys.min.js" type="text/javascript" charset="utf-8"></script><!-- 富文本编辑js是用来绑定热键。 -->
	 <script src="szwqbts/js/simditor.min.js" type="text/javascript" charset="utf-8"></script><!-- 富文本编辑Simditor基于jQuery和module.js。 -->
	 <script src="szwqbts/js/uploader.min.js" type="text/javascript" charset="utf-8"></script><!-- 富文本编辑js上传相关文件 -->
	 <script src="szwqbts/js/validForm.js" type="text/javascript" charset="utf-8"></script><!-- 表单验证 -->
	
     <script src="szwqbts/js/plugins/bootstrap-daterangepicker-master/moment.js" type="text/javascript" charset="utf-8"></script><!-- 日期区间 -->
 	 <script src="szwqbts/js/plugins/bootstrap-daterangepicker-master/daterangepicker.js" type="text/javascript" charset="utf-8"></script><!-- 日期区间 -->
 	 <script src="szwqbts/js/plugins/bootstrap-editable/js/bootstrap-editable.min.js" type="text/javascript" charset="utf-8"></script><!-- 表格编辑框 -->
<script src="szwqbts/js/plugins/bootstrap-editable/js/bootstrap-table-editable.js" type="text/javascript" charset="utf-8"></script><!-- 表格编辑框 -->
<!-- <script src="szwqbts/js/plugins/bootstrap-table-fixed-columns/bootstrap-table-fixed-columns.js"></script>冻结列组件 -->
   <!-- <script src="bootstrap/js/demo/bootstrap-table-demo.min.js"></script>-->
     <!-- 验证是否有session --> <script src="issession.js"></script>
<!--     查询模块的m_id是多少 用于查询权限数据.需要传递模块ID 已经作废 控制器里已经有方法了
       <#if m_id??>
     	<script type="text/javascript"> 
     	var m_id=${m_id};
         </script> 
      </#if>-->
    <!-- 用于根据bootstrap table列数据的展示,截取, -->  
  <script type="text/javascript"> 
function  testFormatter( value, row, index) {
      	 var len=5;
		if(this.len!=null){len=this.len};
		 if(value !=null && value.length >len){
 		 return "<a href=\"javascript:void(0)\" onmouseover=\"$('.tooltips_bt_"+row.interviewId +"').tooltip();\" class=\"tooltips_bt_"+row.interviewId +"\" data-toggle=\"tooltip\" data-placement=\"top\" title='"+value+"'>"+value.substr(0,len)+"..</a>";
		 }
	  return value;
 }
 
//带入url根据查询的数据返回csv
//url导出的url
//url2导进度回调url
//btn导出按钮的jquery对象
function bsuExport(url,url2,btn){
 
	var btnhtml=btn.html();
 	btn.text("导出中");
	btn.attr({"disabled":"disabled"}); 
	btn.css("backgroundColor","gray");
 
 //如果页面中没有用于下载iframe，增加iframe到页面中
   if($('#downloadcsv').length<=0){
        $('body').append("<iframe  id=\"downloadcsv\" style=\"display:none\"></iframe>");
   }
   // var mark= layer.load(2, {shade: [0.8, '#393D49']});
   $('#downloadcsv').attr('src',url);
// 	var mark=layer.open({
// 		  type: 1,
// 		  closeBtn:0,
// 		  skin: 'layui-layer-rim', //加上边框
// 		  area: ['420px', '240px'], //宽高
// 		  content: '正在下载,请稍后!'
// 		});
	
	  var timeout = setInterval(function() {
		   $.ajax( {  
			    url:url2,// 跳转到 action  
			    type:'post',  cache:false,   dataType:'json',  
			    success:function(data) {  
			        if(data.exportTag ==null ){  
//     		        	layer.close(mark);
						 btn.html(btnhtml);
						//btn.text("导出");
						 btn.removeAttr("disabled");//将按钮可用
						 btn.css("backgroundColor","");
 						//layer.msg('已经下载完毕');//丁红博注释掉，2017-8-12多余的提示
			        	clearInterval(timeout);
			        }else{
			        	btn.text("已导出:"+data.exportTag);
 			        }
			     },  
			     error : function() {  
			          // view("异常！");  
			          alert("异常！");  
			     }  
			});
    }, 600);

   //
} 

//将对象转成url 参数 
 function parseParam(param, key){
  var paramStr="";
  if(param instanceof String||param instanceof Number||param instanceof Boolean){
    paramStr+="&"+key+"="+encodeURIComponent(param);
  }else{
    $.each(param,function(i){
      var k=key==null?i:key+(param instanceof Array?"["+i+"]":"."+i);
      paramStr+='&'+parseParam(this, k);
    });
  }
  return paramStr.substr(1);
};
 </script> 				 
