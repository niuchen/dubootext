<!DOCTYPE html>
<html>

<head>
<base href="${basepath}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" href="szwqbts/img/favicon.ico">
    <title>学前教育安全动态监管云平台</title>

  
    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
 
     <link href="szwqbts/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="szwqbts/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="szwqbts/css/animate.min.css" rel="stylesheet">
    <link href="szwqbts/css/style.min.css?v=4.0.0" rel="stylesheet">
    <link href="szwqbts/js/plugins/layer/layim/layim.css" rel="stylesheet">
    <link href="szwqbts/css/home.css?v=4.0.0" rel="stylesheet">
 
    <link href="szwqbts/css/report-echarts.css" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
	<div class="top-head">
	<div class="header-wrap clearfix">
 
	    <ul class="nav navbar-top-links navbar-right" >
	         	 <li class="dropdown profile-element" style="display:inline-block;">
	                  <span class="clear">
	                  <span class="text-muted text-xs " style="margin-right:15px;color:#fff;">欢迎您</span><span style="color:#fff;" id="username">管理员</span>
	                  </span>
	     		</li>
	     		
	         <li class="dropdown profile-element  drop-menu" style="display:inline-block;">
	              <a data-toggle="dropdown" class="dropdown-toggle" href="#">
	                  <span class="clear">
	                  <span class="text-muted text-xs block" style="color:#fff;margin-left:20px;">设置<b class="caret"></b></span>
	                  </span>
	              </a>
	              <ul class="dropdown-menu animated fadeInRight m-t-xs" id="xiugaidiv">
	                  <li><a class="J_menuItem" href="userDetail/userDetail_index.htm?m_id=userDetail">个人资料</a>
	                   </li>
	                  <li class="divider"></li>
	                  <li><a id="updatePassWord">修改密码</a>
	                  </li>
	              </ul>
	          </li>
	      </ul>
 
	      </div>
	</div>
	<div class="head-nav">
	  <div class="header-wrap clearfix">
		<a href="/" class="logo-info pull-left"><img src="szwqbts/img/logo_home.png" width='75' /></a>
		<span class="text-logo">濮阳市华龙区 <i class="circle"></i>学前教育安全动态监管云平台</span>
 
		<div class="nav-item pull-right" id="modlist">
			<a href="" class="item J_menuItem" >
				<img src="szwqbts/img/btn_kanban.png"/>
				<div class="nav-name">看板统计</div>
			</a>
			<a href="" class="item J_menuItem" onclick=fun1()>
				<img src="szwqbts/img/btn_information.png"/>
				<div class="nav-name">园务监管</div>
			</a>
			<a href="" class="item J_menuItem" onclick=fun2()>
				<img src="szwqbts/img/btn_regulatory.png"/>
				<div class="nav-name">动态监管</div>
			</a>
			<a href="" class="item J_menuItem" onclick=fun3()>
				<img src="szwqbts/img/btn_teaching.png"/>
				<div class="nav-name">办公管理</div>
			</a>
			<a href="" class="item J_menuItem" >
				<img src="szwqbts/img/btn_work.png"/>
				<div class="nav-name">教学管理</div>
			</a>

			<!-- <a href="/" class="item">
				<img src="szwqbts/img/btn_setup.png"/>
				<div>系统设置</div>
			</a> -->
		</div>
	  </div>

	</div>
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close">
            <i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">

                 <a class="navbar-minimalize minimalize-styl-2 hook"  href="javascript:;"  ></a>
               <!--   <a class="navbar-minimalize minimalize-styl-2 btn btn-primary "  href="javascript:;"  ><i class="fa fa-bars"></i> </a> -->

                  <!--   <li class="nav-header" >
                    	 <div class="dropdown profile-element">
                            <img src="szwqbts/img/PC_logo1.png" alt="" style="width:100%;"> 
                        </div>
                        <div class="logo-element" style="padding:0">
                        <img src="szwqbts/img/PC_logo2.png" alt="" style="width:96%;">
                        </div>
                    </li> -->
 				    
                   	     <!-- 递归  宏定义 -->
      <#macro bpTree children>
        <#if children?? && children?size gt 0>
       <#list children as child>
        <#if child.children?? && child.children?size gt 0>
       	 <li >
    		  <a href="#">
	                <img src="${basepath}${child.v_icon_url?if_exists}" alt="" class="daohangimg"  > 
	                <span class="nav-label" style="padding-left:10px;">${child.text?if_exists}  </span>
	                <span class="fa arrow" style="font-weight:bold;"></span>
	          </a>
          <ul class="nav nav-second-level">
            <@bpTree children=child.children />
          </ul>
        </li>
        <#else>
        			    <li>
			                <a class="J_menuItem" id=${child.m_id?if_exists} href="${basepath}${child.m_file_path?if_exists}?m_id=${child.m_id?if_exists}" data-index="0">
			                    <span class="nav-label">${child.text?if_exists}  </span>
			                </a>
			           </li>
         </#if>
       </#list>
    </#if>
    </#macro>
				  <!-- 调用宏 生成递归树 1-->
       <@bpTree children=modulelist />	
                  
                  
                 
                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
        <!--     <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary "  href="javascript:;"  ><i class="fa fa-bars"></i> </a>
                    </div>
               
                </nav>
            </div> -->
            <div class="row content-tabs">
                <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
                </button>
                <nav class="page-tabs J_menuTabs">
                    <div class="page-tabs-content">
                        <a href="javascript:;" class="active J_menuTab" data-id="首页.html">首页</a>
                    </div>
                </nav>
                <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
                </button>
                <div class="btn-group roll-nav roll-right">
                    <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                    </button>
                    <ul role="menu" class="dropdown-menu dropdown-menu-right">
<!--                         <li class="J_tabShowActive"><a>定位当前选项卡</a> -->
<!--                         </li> -->
<!--                         <li class="divider"></li> -->
                        <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                        </li>
                        <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                        </li>
                    </ul>
                </div>
                <a class="roll-nav roll-right J_tabExit" id="exit"><i class="fa fa fa-sign-out"></i> 退出</a>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="szwqbts/首页.html" frameborder="0" data-id="首页.html" seamless></iframe>
            </div>
            <div class="footer">
               <!-- 聊天通讯录按钮 -->
        <div id="small-chat">
            <a class="open-small-chat">
                <i class="fa fa-comments"></i>
            </a>
        </div>
                <div class="" style="float:left;">&copy; 2017-2017 <a  target="_blank">shenzhouleban</a>
                </div>
            </div>
        </div>
        <!--右侧部分结束-->
        <!--右侧边栏开始-->
        <div id="right-sidebar">
            <div class="sidebar-container">

                <ul class="nav nav-tabs navs-3">

                    <li class="active">
                        <a data-toggle="tab" href="#tab-1">
                            <i class="fa fa-gear"></i> 主题
                        </a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div id="tab-1" class="tab-pane active">
                        <div class="sidebar-title">
                            <h3> <i class="fa fa-comments-o"></i> 主题设置</h3>
                            <small><i class="fa fa-tim"></i> 你可以从这里选择和预览主题的布局和样式，这些设置会被保存在本地，下次打开的时候会直接应用这些设置。</small>
                        </div>
                        <div class="skin-setttings">
                            <div class="title">主题设置</div>
                            <div class="setings-item">
                                <span>收起左侧菜单</span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="collapsemenu">
                                        <label class="onoffswitch-label" for="collapsemenu">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>固定顶部</span>

                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="fixednavbar" class="onoffswitch-checkbox" id="fixednavbar">
                                        <label class="onoffswitch-label" for="fixednavbar">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                        固定宽度
                    </span>

                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="boxedlayout" class="onoffswitch-checkbox" id="boxedlayout">
                                        <label class="onoffswitch-label" for="boxedlayout">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="title">皮肤选择</div>
                            <div class="setings-item default-skin nb">
                                <span class="skin-name ">
                         <a href="#" class="s-skin-0">
                             默认皮肤
                         </a>
                    </span>
                            </div>
                            <div class="setings-item blue-skin nb">
                                <span class="skin-name ">
                        <a href="#" class="s-skin-1">
                            蓝色主题
                        </a>
                    </span>
                            </div>
                            <div class="setings-item yellow-skin nb">
                                <span class="skin-name ">
                        <a href="#" class="s-skin-3">
                            黄色/紫色主题
                        </a>
                    </span>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
        <!--右侧边栏结束-->

    </div>
    <!-- 修改密码弹出层 开始-->
	<div class="" id="passWord"  style="display:none;">
		<form action="">
			<div class="lf-password mima-mbt" >
	            <span>原始密码：</span>
	            <input class="form-control" type="password" id="oldpassword">
	        </div>
			<div class="lf-password mima-mbt" >
	            <span>新密码：</span>
	            <input class="form-control" type="password" id="newPassword">
	        </div>
	        <div class="lf-password mima-mbt" >
	            <span>确认新密码：</span>
	            <input class="form-control" type="password" id="newPasswords">
	        </div>
	        <div class="mimaguifan">
	       		<p>账号安全密码规范</p>
	       		<p>必须使用6-16位的英文字母加数字组合密码。</p>
	        </div>
	        <a class="btn btn-primary" onclick="close_task()"  style="float:right;margin-right:20px;">取消</a>
	        <a class="btn btn-primary" id="UpassWord" style="float:right;margin-right:20px;">修改密码</a>
	     </form>
	</div>

	<!--修改密码弹出层结束-->	
      <script src="szwqbts/js/jquery.min.js?v=2.1.4"></script>
    <script src="szwqbts/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="szwqbts/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="szwqbts/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
 	    <script src="szwqbts/js/plugins/layer/layer.min.js"></script><!--20170911nc取消注释 这个原来是注释掉了. 不知道什么原因  -->
<!-- 	<script src="szwqbts/js/plugins/layer-v3.0.3/layer/layer.js"></script> 20170911nc注释掉,使用这个会报错. -->

    <script src="szwqbts/js/hplus.min.js?v=4.0.0"></script>
    <script type="text/javascript" src="szwqbts/js/contabs.min.js"></script>
    <script src="szwqbts/js/plugins/pace/pace.min.js"></script>
    <script src="szwqbts/js/content.min.js?v=1.0.0"></script>
    <script src="szwqbts/js/plugins/layer/layim/layim.js"></script>
    <script src="js/b_module/index.js"></script>
    <script type="text/javascript">
   
    var username = '${USERNAME}';
    var basepath='${basepath}';
    
    
	
    /**
     * 首页js
     * guoyu20170802
     */
     //点击当前选中
     $(".J_menuItem").on('click', function() {
    	 $(this).addClass("active").parent("li").siblings("li").find("a").removeClass("active");
    	 $(this).parents(".nav").parents("li").siblings("li").find("a").removeClass("active");
 	});
     $(".nav-item .item").on('click', function() {
    	 $(this).addClass("active").siblings(".item").removeClass("active");
 	});
     //退出登录
    $('#exit').click(function(){
    	layer.msg('您确定退出登录吗？', {
    	  time: 0 //不自动关闭
    	  ,btn: ['确定', '取消']
    	  ,yes: function(index){
    		  location.replace(basepath+"loginaction/logout_index.htm");
    	  }
    	});
    });
     
    //alert(username);
    $("#username").text(username);
   //切换主题皮肤为蓝色
		function skin() {
			return $("body").removeClass("skin-2"), $("body")
				.removeClass("skin-3"), $("body")
				.addClass("skin-1"), !1
		}
		skin();
	//生成快速访问列
		
	</script>
	<script>
		function fun(){
			document.getElementById("plannotice").click();
		}
		function fun1(){
			document.getElementById("rpt_school_manager").click();
		}
		function fun2(){
			document.getElementById("rpt_student_attendence").click();
		}
		function fun3(){
			document.getElementById("plannotice").click();
		}
	</script>
        <!-- 通讯录的html   -->
         
</body>
 
</html>