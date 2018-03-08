   <!--mini聊天窗口开始-->
        <div class="small-chat-box fadeInRight animated" style="height: inherit;width: 300px;">
           <div class="txl-div">
           <!-- 左边 -->
                <div class="txl-div-left">
                    <ul class="nav nav-tabs" >
                        <li class="" onclick="xianshi()"><a> 组织树</a>
                        </li>
                        <li class="" onclick="xianshi2()"><a>联系人</a>
                        </li>
                    </ul>

                        <div id="jstree1" style="width:300px;height:100%" >
                            <ul>
                                <li class="jstree-open">集团
                                    <ul>
                                        <li>宇信
                                            <ul>
                                                <li onclick="qiehuan(1)" >高层</li>
                                                <li onclick="qiehuan(2)" >中层</li>
                                                <li  onclick="qiehuan(3)">员工</li>
                                            </ul>
                                        </li>
                                        <li>神州
                                            <ul>
                                                <li onclick="qiehuan(4)" >高层</li>
                                                <li  onclick="qiehuan(5)">中层</li>
                                                <li onclick="qiehuan(6)" >员工</li>
                                            </ul>
                                        </li>
                                        <li>网元
                                            <ul>
                                                <li  onclick="qiehuan(7)">高层</li>
                                                <li  onclick="qiehuan(8)">中层</li>
                                                <li  onclick="qiehuan(9)">员工</li>
                                            </ul>
                                        </li>
                                       
                                       
                                       
                                    </ul>
                                </li>
                            </ul>
                        </div>
                </div>
                <!-- 左边结束 -->
                <!-- 右边开始 -->
                <div style="width:300px;height:initial;position:absolute;top:40px;left:0;display:none;" id="cs0">
                    <!-- 第一块 -->
                    <div class="feed-activity-list" id="cs1">     
                                <div class="feed-element" >
                                        <button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                	</div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>田亮</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                              
                            </div>
                    <!-- 第一块结束 -->
                    <!-- 第二块 -->
                    <div class="feed-activity-list" id="cs2">
                    <div class="feed-element"  >
                    				<button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>林依晨Ariel</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                           
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                                                 
                            </div>
                    <!-- 第二块结束 -->
                    <!-- 第三块 -->
                    <div class="feed-activity-list" id="cs3">
                    <div class="feed-element"  >
                    				<button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>周杰伦</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                            
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                     
                            </div>
                    <!-- 第三块结束 -->
                    <!-- 第四块 -->
                    <div class="feed-activity-list" id="cs4">
                    <div class="feed-element"  >
                    				<button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>吴尊</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                            
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                     
                            </div>
                    <!-- 第四块结束 -->
                    <!-- 第五块 -->
                    <div class="feed-activity-list" id="cs5">
                    <div class="feed-element"  >
                    				<button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>刘亦菲</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                           
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                     
                            </div>
                    <!-- 第五块结束 -->
                    <!-- 第六块 -->
                    <div class="feed-activity-list" id="cs6">
                    <div class="feed-element"  >
                    				<button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>徐晓晓</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                               
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                     
                            </div>
                    <!-- 第六块结束 -->
                    <!-- 第七块 -->
                    <div class="feed-activity-list" id="cs7">
                    <div class="feed-element"  >
                    				<button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>王大拿</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                         
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                     
                            </div>
                    <!-- 第七块结束 -->
                    <!-- 第八块 -->
                    <div class="feed-activity-list" id="cs8">
                    <div class="feed-element"  >
                    				<button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>吴亦凡</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                            
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                     
                            </div>
                    <!-- 第八块结束 -->
                    <!-- 第九块 -->
                    <div class="feed-activity-list" id="cs9">
                    <div class="feed-element"  >
                    				<button type="button" class="btn btn-sm btn-primary"  onclick="xianshi()"> 返回</button>
                                    <div class="input-group">
                                    <input type="text" placeholder="请输入姓名" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                                </div>
                                <div class="feed-element"  >
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="szwqbts/img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <strong>张书严</strong> 
                                        <br>
                                        <small class="text-muted">电话：186326545668</small>
                                    </div>
                                </div>
                           
                                <div class="feed-element">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination" style="margin:0;"><li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">上一页</a></li><li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">下一页</a></li></ul></div>
                                </div>                     
                            </div>
                    <!-- 第九块结束 -->

                </div>
                <!-- 右边结束 -->
            </div>
        </div>
         <script src="szwqbts/js/plugins/jsTree/jstree.min.js"></script>
    <style>
        .jstree-open>.jstree-anchor>.fa-folder:before{content:"\f07c"}.jstree-default .jstree-icon.none{width:0}
    </style>
    <script>
        $(document).ready(function(){$("#jstree1").jstree({"core":{"check_callback":true},"plugins":["types","dnd"],"types":{"default":{"icon":"fa fa-folder"},"html":{"icon":"fa fa-file-code-o"},"svg":{"icon":"fa fa-file-picture-o"},"css":{"icon":"fa fa-file-code-o"},"img":{"icon":"fa fa-file-image-o"},"js":{"icon":"fa fa-file-text-o"}}});$("#using_json").jstree({"core":{"data":["Empty Folder",{"text":"Resources","state":{"opened":true},"children":[{"text":"css","children":[{"text":"animate.css","icon":"none"},{"text":"bootstrap.css","icon":"none"},{"text":"main.css","icon":"none"},{"text":"style.css","icon":"none"}],"state":{"opened":true}},{"text":"js","children":[{"text":"bootstrap.js","icon":"none"},{"text":"hplus.min.js","icon":"none"},{"text":"jquery.min.js","icon":"none"},{"text":"jsTree.min.js","icon":"none"},{"text":"custom.min.js","icon":"none"}],"state":{"opened":true}},{"text":"html","children":[{"text":"layout.html","icon":"none"},{"text":"navigation.html","icon":"none"},{"text":"navbar.html","icon":"none"},{"text":"footer.html","icon":"none"},{"text":"sidebar.html","icon":"none"}],"state":{"opened":true}}]},"Fonts","Images","Scripts","Templates",]}})});
    </script>
 

    <script>
    function xianshi(){
        $('#cs0').hide();
        $('#jstree1').show();

    }
     function xianshi2(){
        $('#cs0').show();
        $('#jstree1').hide();

    }
    function qiehuan(a){
            if(a==1){
                $('#cs0').show();
                $('#jstree1').hide();
                $('#cs1').show();
                $('#cs2').hide();
                $('#cs3').hide();
                $('#cs4').hide();
                $('#cs5').hide();
                $('#cs6').hide();
                $('#cs7').hide();
                $('#cs8').hide();
                $('#cs9').hide();
            }else if(a==2){
                $('#cs0').show();
                $('#jstree1').hide();
               $('#cs1').hide();
                $('#cs2').show();
                $('#cs3').hide();
                $('#cs4').hide();
                $('#cs5').hide();
                $('#cs6').hide();
                $('#cs7').hide();
                $('#cs8').hide();
                $('#cs9').hide();
            }else if(a==3){
                $('#cs0').show();
                $('#jstree1').hide();
               $('#cs1').hide();
                $('#cs2').hide();
                $('#cs3').show();
                $('#cs4').hide();
                $('#cs5').hide();
                $('#cs6').hide();
                $('#cs7').hide();
                $('#cs8').hide();
                $('#cs9').hide();
            }else if(a==4){
                $('#cs0').show();
                $('#jstree1').hide();
               $('#cs1').hide();
                $('#cs2').hide();
                $('#cs3').hide();
                $('#cs4').show();
                $('#cs5').hide();
                $('#cs6').hide();
                $('#cs7').hide();
                $('#cs8').hide();
                $('#cs9').hide();
            }else if(a==5){
                $('#cs0').show();
                $('#jstree1').hide();
               $('#cs1').hide();
                $('#cs2').hide();
                $('#cs3').hide();
                $('#cs4').hide();
                $('#cs5').show();
                $('#cs6').hide();
                $('#cs7').hide();
                $('#cs8').hide();
                $('#cs9').hide();
            }else if(a==6){
                $('#cs0').show();
                $('#jstree1').hide();
               $('#cs1').hide();
                $('#cs2').hide();
                $('#cs3').hide();
                $('#cs4').hide();
                $('#cs5').hide();
                $('#cs6').show();
                $('#cs7').hide();
                $('#cs8').hide();
                $('#cs9').hide();
            }else if(a==7){
                $('#cs0').show();
                $('#jstree1').hide();
               $('#cs1').hide();
                $('#cs2').hide();
                $('#cs3').hide();
                $('#cs4').hide();
                $('#cs5').hide();
                $('#cs6').hide();
                $('#cs7').show();
                $('#cs8').hide();
                $('#cs9').hide();
            }else if(a==8){
                $('#cs0').show();
                $('#jstree1').hide();
               $('#cs1').hide();
                $('#cs2').hide();
                $('#cs3').hide();
                $('#cs4').hide();
                $('#cs5').hide();
                $('#cs6').hide();
                $('#cs7').hide();
                $('#cs8').show();
                $('#cs9').hide();
            }else if(a==9){
                $('#cs0').show();
                $('#jstree1').hide();
               $('#cs1').hide();
                $('#cs2').hide();
                $('#cs3').hide();
                $('#cs4').hide();
                $('#cs5').hide();
                $('#cs6').hide();
                $('#cs7').hide();
                $('#cs8').hide();
                $('#cs9').show();
            }
 
        }
   </script>