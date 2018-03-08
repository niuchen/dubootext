<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学校详情页</title>
<link rel="stylesheet" href="<%=basePath%>css/schoolSupervise/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/schoolSupervise/index.css">
</head>
<body>
		<div class="record-wrap">
			<table class="table table-bordered table-wrap" border="1">
				<tbody>
					<tr class="td">
						<td class="td-title">幼儿园名称</td>
						<td class="tl">${schoolManager.schoolName }</td>
						<td class="td-title">行政区</td>
						<td class="tl" colspan="3">${schoolManager.xzAreaName }</td>
					</tr>
					<tr class="td">
						<td class="td-title">地址</td>
						<td class="tl" colspan="5">${schoolManager.address }</td>
					</tr>
					<tr class="td">
						<td class="td-title">园所性质</td>
						<td class="tl">${schoolManager.ysxz }</td>
						<td class="td-title">评估类型</td>
						<td class="tl">${schoolManager.pgType }</td>
						<td class="td-title">是否连锁园</td>
						<td class="tl">${schoolManager.isLs }</td>
					</tr>
					<tr class="td">
						<td class="td-title">是否集团园</td>
						<td class="tl">${schoolManager.isJt }</td>
						<td class="td-title">集团园名称</td>
						<td class="tl" colspan="3">${schoolManager.groupName }</td>
					</tr>
					<tr class="td">
						<td class="td-title">法人姓名</td>
						<td class="tl">${schoolManager.frName }</td>
						<td class="td-title">法人电话</td>
						<td class="tl">${schoolManager.frPhone }</td>
						<td class="td-title">联系人姓名</td>
						<td class="tl">${schoolManager.lxrName }</td>
					</tr>
					<tr class="td">
						<td class="td-title">联系人电话</td>
						<td class="tl">${schoolManager.lxrPhone }</td>
						<td class="td-title">联系人身份</td>
						<td class="tl">${schoolManager.lxrSf }</td>
						<td class="td-title">办园许可证号</td>
						<td class="tl">${schoolManager.byxkz }</td>
					</tr>
					<tr class="td">
						<td class="td-title">办园许可证到期日期</td>
						<td class="tl">${schoolManager.byxkzYxq }</td>
						<td class="td-title">占地面积</td>
						<td class="tl">${schoolManager.zdArea }平方米</td>
						<td class="td-title">建筑总面积</td>
						<td class="tl">${schoolManager.jzzArea }平方米</td>
					</tr>
					<tr class="td">
						<td class="td-title">在校学生规模</td>
						<td class="tl">${schoolManager.studentNum }人</td>
						<td class="td-title">教职工数量</td>
						<td class="tl">${schoolManager.teacherNum }人</td>
						<td class="td-title">安保人员数量</td>
						<td class="tl">${schoolManager.saverNum }人</td>
					</tr>
					<tr class="td">
						<td class="td-title">是否开设少数民族教学班</td>
						<td class="tl">${schoolManager.isKtssmzEdu}</td>
						<td class="td-title">少数民族教学班数量</td>
						<td class="tl">${schoolManager.ssmzEduNum}</td>
						<td class="td-title">少数民族教学班幼儿人数</td>
						<td class="tl">${schoolManager.ssmzStuNum}人</td>
					</tr>
					<tr class="td">
						<td class="td-title">收费标准</td>
						<td class="tl">${schoolManager.sfBase }元/月</td>
						<td class="td-title">保教费收费标准</td>
						<td class="tl">${schoolManager.bjsfBase }元/月</td>
						<td class="td-title">伙食费收费标准</td>
						<td class="tl">${schoolManager.hssfBase }元/月</td>
					</tr>
					<tr class="td">
						<td class="td-title">住宿费收费标准</td>
						<td class="tl">${schoolManager.zssfBase }元/月</td>
						<td class="td-title">其他服务性代收费收费标准</td>
						<td class="tl">${schoolManager.qtsfBase }元/月</td>
						<td class="td-title">收入情况合计</td>
						<td class="tl">${schoolManager.sfTotal }元/学期</td>
					</tr>
					<tr class="td">
						<td class="td-title">财政拨款</td>
						<td class="tl">${schoolManager.czbk }元/学期</td>
						<td class="td-title">事业收入</td>
						<td class="tl">${schoolManager.sysr }元/学期</td>
						<td class="td-title">其他收入</td>
						<td class="tl">${schoolManager.qtsr }元/学期</td>
					</tr>
					<tr class="td">
						<td class="td-title">是否有监控设备</td>
						<td class="tl">${schoolManager.isjksb }</td>
						<td class="td-title">是否有接送设备</td>
						<td class="tl">${schoolManager.isjssb }</td>
						<td class="td-title">是否有闸机</td>
						<td class="tl">${schoolManager.iszj }</td>
					</tr>
					<tr class="td">
						<td class="td-title">是否有校车</td>
						<td class="tl">${schoolManager.isxc }</td>
						<td class="td-title">是否有无线网络覆盖</td>
						<td class="tl">${schoolManager.isNetWifi }</td>
						<td class="td-title">是否有新风系统</td>
						<td class="tl">${schoolManager.isxfSystem }</td>
					</tr>
					<tr class="td">
						<td class="td-title">是否有家长园所</td>
						<td class="tl">${schoolManager.isParentYs }</td>
						<td class="td-title">是否有照片书服务</td>
						<td class="tl">${schoolManager.isPhotoService }</td>
						<td class="td-title">供水方式</td>
						<td class="tl">${schoolManager.gsType }</td>
					</tr>
					<tr class="td">
						<td class="td-title">厕所情况</td>
						<td class="tl">${schoolManager.wcType }</td>
						<td class="td-title">图书总数量</td>
						<td class="tl">${schoolManager.bookTotal }册</td>
						<td class="td-title">幼儿图书数量</td>
						<td class="tl">${schoolManager.stuBookTotal }册</td>
					</tr>
				</tbody>
			</table>
			<div class="record-btns">
				<a class="btn btn-base">下载</a>
				<!-- <div class="btn btn-default">关闭</div> -->
			</div>
		</div>
		<script type="text/javascript" src="<%=basePath%>jquery-1.9.1/jquery.min.js"></script> 
	    <%-- <script type="text/javascript" src="<%=basePath%>js/schoolSupervise/downExcel.js"></script> --%>
	    <script type="text/javascript">
	    // 使用outerHTML属性获取整个table元素的HTML代码（包括<table>标签），然后包装成一个完整的HTML文档，设置charset为urf-8以防止中文乱码
	      var html = "<html><head><meta charset='utf-8' />"+"<style>td{height: 50px;} .td-title{background:#eee}</style>"
	      +"</head><body>" + document.getElementsByTagName("table")[0].outerHTML + "</body></html>";
	      // 实例化一个Blob对象，其构造函数的第一个参数是包含文件内容的数组，第二个参数是包含文件类型属性的对象
	      var blob = new Blob([html], { type: "application/vnd.ms-excel" });
	      
	      var a = document.getElementsByTagName("a")[0];
	      // 利用URL.createObjectURL()方法为a元素生成blob URL
	      a.href = URL.createObjectURL(blob);
	      // 设置文件名，目前只有Chrome和FireFox支持此属性
	      a.download = '${schoolManager.schoolName}'+".xls";
	    
	    </script>
	</body>
</html>