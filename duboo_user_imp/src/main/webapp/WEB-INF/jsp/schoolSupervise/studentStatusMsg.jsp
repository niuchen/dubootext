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
<title>学生学籍详情页</title>
<link rel="stylesheet" href="<%=basePath%>css/schoolSupervise/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/schoolSupervise/index.css">
</head>
<body>
 <div class="record-wrap">
			<table class="table table-bordered table-wrap" border="1">
				<tbody>
					<tr class="td">
						<td class="td-title">地市</td>
						<td class="tl">${schoolStatusManager.cityName }</td>
						<td class="td-title">县区</td>
						<td class="tl" colspan="2">${schoolStatusManager.townName }</td>
						<td width="100" rowspan="3">
							<img src="${schoolStatusManager.userPhotoPath}" width="100" height="150" />
							<!-- <img src="http://192.168.32.238:8080/image/teacher/20180227/2018022715222309.jpg" width="100" height="150" /> -->
						</td>
					</tr>
					<tr class="td">
						<td class="td-title">幼儿园名称</td>
						<td class="tl" colspan="4">${schoolStatusManager.schoolName }</td>
					</tr>
					<tr class="td">
						<td class="td-title">班级名称</td>
						<td class="tl">${schoolStatusManager.eduunitName }</td>
						<td class="td-title">姓名</td>
						<td class="tl" colspan="2">${schoolStatusManager.userName }</td>
					</tr>
					<tr class="td">
						<td class="td-title">性别</td>
						<td class="tl">${schoolStatusManager.sexStr }</td>
						<td class="td-title">出生日期</td>
						<td class="tl">${schoolStatusManager.birthdayStr }</td>
						<td class="td-title">入园日期</td>
						<td class="tl">${schoolStatusManager.addTimeStr }</td>
					</tr>
					<tr class="td">
						<td class="td-title">第一监护人姓名</td>
						<td class="tl">${schoolStatusManager.guardianName}</td>
						<td class="td-title">第一监护人电话</td>
						<td class="tl">${schoolStatusManager.firstPhone }</td>
						<td class="td-title">第二监护人姓名</td>
						<td class="tl">${schoolStatusManager.secondParentName }</td>
					</tr>
					<tr class="td">
						<td class="td-title">第二监护人电话</td>
						<td class="tl">${schoolStatusManager.secondPhone }</td>
						<td class="td-title">国籍</td>
						<td class="tl">${schoolStatusManager.country }</td>
						<td class="td-title">民族</td>
						<td class="tl">${schoolStatusManager.ethnic }</td>
					</tr>
					<tr class="td">
						<td class="td-title">身份证号</td>
						<td class="tl"><span style="display:none">'</span>${schoolStatusManager.cardId}</td>
						<td class="td-title">港澳台侨</td>
						<td class="tl">${schoolStatusManager.gangaotai }</td>
						<td class="td-title">户口性质</td>
						<td class="tl">${schoolStatusManager.accountNature }</td>
					</tr>
					<tr class="td">
						<td class="td-title">户口所在地</td>
						<td class="tl" colspan="3">${schoolStatusManager.registeredplace }</td>
						<td class="td-title">出生地</td>
						<td class="tl">${schoolStatusManager.bornAddress }</td>
					</tr>
					<tr class="td">
						<td class="td-title">现住址</td>
						<td class="tl" colspan="5">${schoolStatusManager.address }</td>
					</tr>
					<tr class="td">
						<td class="td-title">是否独生子女</td>
						<td class="tl">${schoolStatusManager.isOnlyChild }</td>
						<td class="td-title">是否留守儿童</td>
						<td class="tl">${schoolStatusManager.isBehindChild }</td>
						<td class="td-title">是否寄宿生</td>
						<td class="tl">${schoolStatusManager.isBoarding }</td>
					</tr>
					<tr class="td">
						<td class="td-title">是否进城务工人员随迁子女</td>
						<td class="tl">${schoolStatusManager.isRelocation }</td>
						<td class="td-title">是否残疾儿童</td>
						<td class="tl">${schoolStatusManager.isDisabledChild }</td>
						<td class="td-title">残疾幼儿类别</td>
						<td class="tl">${schoolStatusManager.disabledType }</td>
					</tr>
					<tr class="td">
						<td class="td-title">是否低保</td>
						<td class="tl">${schoolStatusManager.isLowSecurity }</td>
						<td class="td-title">是否接受资助</td>
						<td class="tl">${schoolStatusManager.isHelped }</td>
						<td class="td-title">是否孤儿</td>
						<td class="tl">${schoolStatusManager.isOrphan }</td>
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
	      a.download = '${schoolStatusManager.userName}学籍信息'+".xls";
	    </script>
</body>
</html>