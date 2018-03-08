<%@ page language="java" import="com.common.bean.T_USERS_INFO" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/bootstrap/";

 %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath2%>">
 <title>学前教育安全动态监管云平台-登录页2</title>
  <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=3, minimum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="God chau team in Shanghai">
	 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
 <script src="js/jquery-1.10.2.min.js"></script>
</head>
<body>
<iframe id="downForm"  style="display:none;"></iframe>
 <!--header begin-->
 <!--header begin-->
<!--[if lt IE 8]>
<p class="browserupgrade">您正在使用一个<strong>过时的</strong>浏览器。 请点击此链接<a href="http://browsehappy.com/" target="_blank">升级更新您的浏览器</a>来提高您的用户体现。</p>
<![endif]-->
<script type="text/javascript">  
    $(function(){  
          
        // 为看不清楚绑定事件  
      //  $("#see").click(function(){  
       //     $("#vimg").attr("src", "${ctx}/verify.action?random=" + Math.random());  
      //  });  
          
        // 为验证码绑定click与mouseover  
        //$("#vimg").mouseover(function(){  
      //      $(this).css("cursor", "pointer");  
       // }).click(function(){  
        //    $("#see").trigger("click");  
      //  });  
          
        // 登录验证  
        $("#loginBtn").click(function(){  
            // 做表单输入校验  
            var userName = $("#userName");  
            var userPassword = $("#password");  
            var code = $("#code");  
            var msg = "";  
            if ($.trim(userName.val()) == ""){  
                msg = "用户名不能为空！";  
                userId.focus();  
            }
          // else if (!/^\w{5,20}$/.test($.trim(userId.val()))){  
          //      msg = "用户名格式不正确！";  
            //    userId.focus();  
           // }
           else if ($.trim(userPassword.val()) == ""){  
                msg = "密码不能为空！";  
                password.focus();  
            }
           //else if (!/^\w{6,20}$/.test($.trim(password.val()))){  
         //       msg = "密码格式不正确！";  
         //       password.focus();  
         //   }
           // else if ($.trim(code.val()) == ""){  
            //    msg = "验证码不能为空！";  
           //     code.focus();  
          //  }else if (!/^[0-9a-zA-Z]{4}$/.test($.trim(code.val()))){  
           //     msg = "验证码格式不正确！";  
           //     code.focus();  
          //  }  
            if (msg != ""){  
                alert(msg);  
            }else{  
                // 获取表单中的参数  userName.val()
                var params={
                		userName:userName.val(),
                		userPassword:userPassword.val()
                };
               
               // alert(userName); 
              //  alert(params);  
                // alert( params.userName);  
                // 发送登录的异步请求  
                $.post("<%=basePath%>loginaction/loginTag.htm", params, function(data, status){
                //	{"message":"请输入正确的用户名,密码或企业编号","dqy":true,"tag":false}
                    if(data.tag==true){
                    	window.location.replace("<%=basePath%>loginaction/login.htm?_dc="+((new Date()).getTime()));
                    }else{
                		alert(data.message); 
                		}
                }, "json");  
            }  
              
        });  
          
        // 为document绑定onkeydown事件监听是否按了回车键  
        $(document).keydown(function(event){  
            if (event.keyCode === 13){ // 按了回车键  
                $("#loginBtn").trigger("click");  
            }  
        });  
    });  
</script>  
<!--header end-->
<!--banner begin-->
    <div class="banner-wrap login-wrap">
        <div class="banner-inner login-inner">
            <form>
                <div class="login-box">
                    <h1>用户登录2</h1>
                    <div class="login-content">
                        <ul class="login-input">
                            <li class="login-user">
                            <input  id="userName" type="text" value="admin"  onfocus="if (value =='请输入用户名'){value =''}" onblur="if (value ==''){value='请输入用户名'}" onkeydown="doSubmit(event);"> 
                            </li>
                          
                                                     密码2  <input  id="password" type="password" value="123456"  /> </li>
                         
                            </li>
                        </ul>
                       <!--   <div class="psw-find"><a href="javascript:void(0);"  onclick="return findPasswd();">忘记密码？</a></div>-->
                    </div>
                    <a id="loginBtn" class="button-login"  href="javascript:void(0);"  >登 录</a>
                </div>
            </form>

        </div>
    </div>
<!--banner end-->
<!--foot begin-->
      <div class="footer">
        <!--<div class="footer-inner">
            <div class="tel fl notice">
                <p>使用须知：<br/>本系统建议使用IE浏览器6.0以上版本访问；<a href="#" class="dw-link">IE7下载  IE8下载</a><br/>本系统中体验更多Flash效果请您安装：Adobe Flash Player<br/>本系统在宽屏显示环境下效果最佳。</p>
            </div>
            <div class="tel fl separate">
                <p>平台投诉与建议电话</p>
                <h1>13607654220</h1>
                <p>公司服务支撑热线</p>
                <h1>18337191746</h1>
            </div>
        </div>-->
        <div class="footer-content">
            <div class="footer-con">
                <p>上海神洲数港科技有限公司 </p>
                <p>版权所有：豫B2-20060015-7 Copyright All Rights Reserved.</p>

            </div>
        </div>
    </div>
<!--foot end-->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</body>

</html>
