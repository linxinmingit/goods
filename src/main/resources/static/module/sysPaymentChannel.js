layui.define(["jquery","form","layer","table","laytpl"], function(exports){

    var form = layui.form;
    var $jq = layui.jquery;
    var layer = layui.layer;
    var table = layui.table;
    var laytpl = layui.laytpl;

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
                elem: "#sysPaymentChannelTable"
                ,url: "/gla/sysPaymentChannel/page"
                ,height: 500
                ,request: {
                    pageName: "current"
                    ,limitName: "size"
                }
                ,where: {
                    channelName: $jq("#channelName").val()
                }
                ,cols: [[
                    {field: 'xu', title: 'ID', type: 'numbers', width: 80}
                    ,{field: 'channelName', title: '渠道名称'}
                    ,{field: 'channelCode', title: '渠道编号'}
                    ,{field: 'sort', title: '排序'}
                    ,{
                        title: '是否开启', align: "center", templet: function (d) {
                            if (d.isOpen == 0) {
                                return "启用";
                            } else if (d.isOpen == 1) {
                                return "失效";
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

        ,addPaymentChannel : function () {
            var addPaymentChannel = {
                "id": "",
                "channelName": "",
                "channelCode": "",
                "sort": "",
                "isOpen": "",
                "title":"添加员工"
            };
            layui.sysPaymentChannel.addOrUpdatePaymentChannel(addPaymentChannel);
        }
        /**
         * 添加或编辑弹出框
         */
        ,addOrUpdatePaymentChannel : function (pay) {
            var html = addOrUpdatePaymentChannel.innerHTML;
            var htmlStr = laytpl(html).render(pay);
            layer.open({
                type:1,
                area:'600px',
                title:pay.title,
                content:htmlStr
            });
            form.render();
        }
        /**
         * 事件监听
         */
        ,tool : function (){
            //表格监听事件
            table.on("tool(sysPaymentChannelEvent)", function (obj) {
                var data = obj.data;//获取一行的数据
                //编辑
                if(obj.event == "edit"){
                    data.title = "编辑员工";
                    layui.sysPaymentChannel.addOrUpdatePaymentChannel(data);
                }
                //删除
                if(obj.event == "del"){
                    layer.open({
                        title: "信息",
                        content: "确认删除吗？",
                        btn: ["确定","取消"],
                        yes: function(){
                            $jq.post("/gla/sysPaymentChannel/del/" + data.id,"",function(data){
                                if(data.code == 0){
                                    layer.closeAll();
                                    layui.sysPaymentChannel.initView();
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
                // employeeName : function (value) {
                //     if(value == '' || $jq.trim(value).length == 0){
                //         return "用户名称不能为空";
                //     }
                // },
            });
            //表单提交(新增或编辑)
            form.on("submit(addOrUpdatePaymentChannelForm)", function (data) {
                $jq.post("/gla/sysPaymentChannel/save", data.field, function (data) {
                    if(data.code == 0){
                        layer.closeAll();
                        layui.sysPaymentChannel.initView();
                        layer.msg("保存成功",{icon:1,time:1000});
                    } else {
                        layer.msg(data.message,{icon:1,time:1000});
                    }
                })
                //防止表单提交
                return false;
            });
        }

    }

    exports('sysPaymentChannel', obj);

})