
<!DOCTYPE html>
<html>

    <head>
    <base href="${basepath}">
        <meta charset="UTF-8">
        <title>计划拜访审批</title>
    <#include "/public_css.ftl" > 
	<style>
		.layui-tab-content2 {
    		padding: 0 10px;
		}
	</style>
    </head>

    <body>
        <div class="wrapper" >
<!--             <div class="title-name">拜访审批</div> -->
          
            <!-- table切换开始 -->
            <div class="layui-tab layui-tab-card">
                  <ul class="layui-tab-title">
                    <li class="layui-this">计划拜访审批</li>
               
                  </ul>
                  <div class="layui-tab-content layui-tab-content2" >
                    <div class="layui-tab-item layui-show">
                      <!--搜索开始-->
            <div class="seach seach2 clearfix clearfix-bianju" >
                <button class="layui-btn add" >批量审批</button>
                <button class="layui-btn seach-btn seach-daochu">导出</button>
                <button class="layui-btn seach-screening ">筛查</button>
                <button class="layui-btn seach-btn margin0" >搜索</button>
               <div id="selectdiv"><input type="text" placeholder="搜索客户名称" autocomplete="off" class="layui-input seach-inp">
               </div> 
                <!--高级搜索开始-->
                <div class="filter-select hide1 clearfix ">
                    <div class="filter-wrap left">
                        <form class="layui-form clearfix" action="" id="form1">
          
              			
                        </form>
                    </div>
                    <div class="select-wrap right"><button class="layui-btn">查询</button></div>
                </div>
                <!--高级搜索结束-->
            </div>
            <!--搜索结束-->
                        <!--table开始-->
                            <table id="bfsptable1">  </table>
                             <!--table结束-->
                    </div>
                    <div class="layui-tab-item">
                        <!--table2开始-->
                            <table  id="bfsptable2">
                               
                            </table>
                      </div>
                    <!-- table3开始 -->
                            <div class="layui-tab-item">
                        <!--table3开始-->
                            <table id="bfsptable3" >
                        
                            </table>
                             <!--table3结束-->
                    
                    </div>
                    <!-- table3结束 -->
                  </div>
            </div>
            <!-- table切换结束 -->
            
        </div>
        <!--任务详情开始1-->
        <div class="task-datils hide1" id="xiangqing1">
            <p class="baifangxinxi">拜访信息</p>
            <div class="layui-form-item">
                <label class="layui-form-label">客户名称：</label>
                <span class="positiontop5">中国移动</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">拜访类型：</label>
                <span class="positiontop5">临时拜访</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">拜访人：</label>
                <span class="positiontop5">张三</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">拜访状态：</label>
                <span class="positiontop5 green-color1">审核通过</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">是否有效：</label>
                <span class="positiontop5">是</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">客户地址：</label>
                <span class="positiontop5">中国北京市海淀区知春路63号</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">签到时间：</label>
                <span class="positiontop5">2017-06-20   09:23</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">签到地址：</label>
                <span class="positiontop5">中国北京市海淀区知春路63号<span class="redcolor">误差300米</span></span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">签退时间：</label>
                <span class="positiontop5">2017-06-20   12:23</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">签退地址：</label>
                <span class="positiontop5">中国北京市海淀区知春路63号<span class="redcolor">误差200米</span></span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">持续时间：</label>
                <span class="positiontop5">2小时</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">现场照片：</label>
                  <div class="positiontop5">
                    
                  </div>
            </div>
            <hr>
            <p class="baifangxinxi">拜访日志</p>
            <div class="layui-form-item">
                <label class="layui-form-label">拜访对象：</label>
                <span class="positiontop5">李四</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">拜访目的：</label>
                <span class="positiontop5">洽谈第二次合作事宜</span>
            </div>
            <div class="layui-form-item margin-bottom15">
                <label class="layui-form-label">日志记录：</label>
                <textarea name="" id="" cols="30" rows="10" class="positiontop5 rizhijilu-textarea">中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号中国北京市海淀区知春路63号。
                </textarea>
            </div>
          </div>
        <!--任务详情结束1-->
     </body>
      <#include "/public_js.ftl" > 
     <script type="text/javascript"  src="js/b_module/interviewSh/interviewSh.js"></script>
     
       
</html>