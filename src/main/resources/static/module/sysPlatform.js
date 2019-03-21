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
                elem: "#sysPlatformTable"
                ,url: "/gla/sysPlatform/page"
                ,height: 500
                ,request: {
                    pageName: "current"
                    ,limitName: "size"
                }
                ,where: {
                    companyName: $jq("#companyName").val()
                }
                ,cols: [[
                    {field: 'xu', title: 'ID', type: 'numbers', width: 80}
                    ,{field: 'companyName', title: '公司名称'}
                    ,{field: 'tel', title: '联系电话'}
                    ,{field: 'companyUrl', title: '公司网址'}
                    ,{field: 'companyAddr', title: '公司地址'}
                    ,{field: 'qrcode', title: '二维码地址'}
                    ,{field: 'logoName', title: 'logo名称'}
                    ,{field: 'logoUrl', title: 'logo'}
                    ,{
                        title: '用户状态', align: "center", templet: function (d) {
                            if (d.isDeleted == 0) {
                                return "启用";
                            } else if (d.isDeleted == 1) {
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

        ,addPlatform : function () {
            var addPlatform = {
                "id": "",
                "companyName": "",
                "tel": "",
                "companyAddr": "",
                "companyUrl": "",
                "qrcode": "",
                "logoName": "",
                "logoUrl": "",
                "title":"添加平台信息"
            };
            layui.sysPlatform.addOrUpdatePlatform(addPlatform);
        }
        /**
         * 添加或编辑弹出框
         */
        ,addOrUpdatePlatform : function (plateform) {
            var html = addOrUpdatePlatform.innerHTML;
            var htmlStr = laytpl(html).render(plateform);
            layer.open({
                type:1,
                area:["1200px","500px"],
                title:plateform.title,
                content:htmlStr
            });
            form.render();
        }
        /**
         * 事件监听
         */
        ,tool : function (){
            //表格监听事件
            table.on("tool(sysPlatformEvent)", function (obj) {
                var data = obj.data;//获取一行的数据
                //编辑
                if(obj.event == "edit"){
                    data.title = "编辑员工";
                    layui.sysPlatform.addOrUpdatePlatform(data);
                }
                //删除
                if(obj.event == "del"){
                    layer.open({
                        title: "信息",
                        content: "确认删除吗？",
                        btn: ["确定","取消"],
                        yes: function(){
                            $jq.post("/gla/sysPlatform/del/" + data.id,"",function(data){
                                if(data.code == 0){
                                    layer.closeAll();
                                    layui.sysPlatform.initView();
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
                companyName : function (value) {
                    if(value == '' || $jq.trim(value).length == 0){
                        return "公司名称不能为空";
                    }
                },
                tel: [/^1\d{10}$/, "请输入正确的手机号"],
            });
            //表单提交(新增或编辑)
            form.on("submit(addOrUpdatePlatformForm)", function (data) {
                $jq.post("/gla/sysPlatform/save", data.field, function (data) {
                    if(data.code == 0){
                        layer.closeAll();
                        layui.sysPlatform.initView();
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

    exports('sysPlatform', obj);

})