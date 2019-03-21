layui.define(["jquery","form","layer","table","upload","laytpl"], function(exports){
    var form = layui.form;
    var $jq = layui.jquery;
    var layer = layui.layer;
    var table = layui.table;
    var laytpl = layui.laytpl;
    upload = layui.upload;
    var menuTree = null;


    //普通图片上传
    var uploadInst = upload.render({
        elem: '#test1'
        ,url: '/upload/'
        ,before: function(obj){
            //预读本地文件示例，不支持ie8
            obj.preview(function(index, file, result){
                $('#demo1').attr('src', result); //图片链接（base64）
            });
        }
        ,done: function(res){
            //如果上传失败
            if(res.code > 0){
                return layer.msg('上传失败');
            }
            //上传成功
        }
        ,error: function(){
            //演示失败状态，并实现重传
            var demoText = $('#demoText');
            demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
            demoText.find('.demo-reload').on('click', function(){
                uploadInst.upload();
            });
        }
    });



    var obj = {
        /**
         * 页面初始化
         */
        initView : function(){
            this.initTable();
        }
        /**
         * 初始化表格
         */
        ,initTable : function () {
            table.render({
                elem: "#sysBaseSetTable"
                ,url: "/gla/sysBaseSet/page"
                ,height: 500
                ,request: {
                    pageName: "current"
                    ,limitName: "size"
                }
                ,where: {
                    hotSearch: $jq("#hotSearch").val()
                }
                ,cols: [[
                     {field: 'xu', title: 'ID', type: 'numbers', width: 80}
                    ,{field: 'hotSearch', title: '热门关键字'}
                    ,{
                        title: '评价是否审核', align: "center", templet: function (d) {
                            if (d.appraiseExamine == 0) {
                                return "已审核";
                            } else if (d.appraiseExamine == 1) {
                                return "未审核";
                            }
                        }
                     }
                    ,{field: 'defaultImg', title: '默认图片'}
                    ,{field: 'userAgreement', title: '用户协议'}
                    ,{
                        title: '删除状态', align: "center", templet: function (d) {
                            if (d.isDeleted == 0) {
                                return "启用";
                            } else if (d.isDeleted == 1) {
                                return "已删除";
                            }
                        }
                    }
                    ,{field: 'createOn', title: '创建时间', templet: function (d) {
                            return dateToStr(d.createOn);
                        }}
                    ,{field: 'createBy', title: '创建人名称'}
                    ,{fixed: 'right', title: '操作', align: 'center', width:250, templet: function (d) {
                            var operateHtml = '<button class="layui-btn layui-btn-sm layui-btn-normal" lay-event="edit">编辑</button>'
                                                    + '<button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="del">删除</button>';
                            return operateHtml;
                        }}
                ]]
                ,page: {
                    limits:[10,20,50,100]
                }
            });
        }

        /**
         * 添加
         */
        ,addBaseSet : function () {
            var addBaseSet = {
                "id":"",
                "hotSearch":"",
                "appraiseExamine":"",
                "title":"添加设置信息"
            };
            layui.sysBaseSet.addOrUpdateBaseSet(addBaseSet);
        }
        /**
         * 添加或编辑弹出框
         */
        ,addOrUpdateBaseSet : function (baseSet) {
            var html = addOrUpdateBaseSet.innerHTML;
            var htmlStr = laytpl(html).render(baseSet);
            layer.open({
                type:1,
                area:'600px',
                title:baseSet.title,
                content:htmlStr
            });

            form.render();
        }
        /**
         * 事件监听
         */
        ,tool : function (){
            //表格监听事件
            table.on("tool(sysBaseSetEvent)", function (obj) {
                var data = obj.data;//获取一行的数据
                //编辑
                if(obj.event == "edit"){
                    data.title = "编辑角色";
                    layui.sysBaseSet.addOrUpdateBaseSet(data);
                }
                //删除
                if(obj.event == "del"){
                    layer.open({
                        title: "信息",
                        content: "确认删除吗？",
                        btn: ["确定","取消"],
                        yes: function(){
                            $jq.post("/gla/sysBaseSet/del/" + data.id,"",function(data){
                                if(data.code == 0){
                                    layer.closeAll();
                                    layui.sysBaseSet.initView();
                                    layer.msg("删除成功",{icon:1,time:1000});
                                } else {
                                    layer.msg(data.message,{icon:1,time:1000});
                                }
                            })
                        }
                    })
                }
            })
            //表单验证
            form.verify({
                hotSearch : function (value) {
                    if(value == '' || $jq.trim(value).length == 0){
                        return "关键字不能为空";
                    }
                }
            });
            //表单提交(新增或编辑)
            form.on("submit(addOrUpdateBaseSetForm)", function (data) {
                $jq.post("/gla/sysBaseSet/save", data.field, function (data) {
                    if(data.code == 0){
                        layer.closeAll();
                        layui.sysBaseSet.initView();
                        layer.msg("保存成功",{icon:1,time:1000});
                        setTimeout(function(){
                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                            parent.layer.close(index); //再执行关闭
                        },1200);
                    } else {
                        layer.msg(data.message,{icon:1,time:1000});
                        setTimeout(function(){
                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                            parent.layer.close(index); //再执行关闭
                        },1200);
                    }
                })
                //防止表单提交
                return false;
            });
        }
    }

    exports('sysBaseSet', obj);

})