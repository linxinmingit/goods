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
                elem: "#sysEmployeeTable"
                ,url: "/gla/sysEmployee/page"
                ,height: 500
                ,request: {
                    pageName: "current"
                    ,limitName: "size"
                }
                ,where: {
                    employeeName: $jq("#employeeName").val()
                }
                ,cols: [[
                     {field: 'xu', title: 'ID', type: 'numbers', width: 80}
                    ,{field: 'employeeName', title: '用户名'}
                    ,{field: 'loginName', title: '用户登录账号'}
                    ,{field: 'password', title: '账号密码'}
                    ,{field: 'mobile', title: '手机号码'}
                    ,{
                        title: '用户状态', align: "center", templet: function (d) {
                            if (d.status == 0) {
                                return "启用";
                            } else if (d.status == 1) {
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

        ,addEmployee : function () {
            var addEmployee = {
                "id": "",
                "employeeName": "",
                "loginName": "",
                "password": "",
                "mobile": "",
                "title":"添加员工"
            };
            layui.sysEmployee.addOrUpdateEmployee(addEmployee);
        }
        /**
         * 添加或编辑弹出框
         */
        ,addOrUpdateEmployee : function (employee) {
            var html = addOrUpdateEmployee.innerHTML;
            var htmlStr = laytpl(html).render(employee);
            layer.open({
                type:1,
                area:'600px',
                title:employee.title,
                content:htmlStr
            });
            form.render();
        }
        /**
         * 事件监听
         */
        ,tool : function (){
            //表格监听事件
            table.on("tool(sysEmployeeEvent)", function (obj) {
                var data = obj.data;//获取一行的数据
                //编辑
                if(obj.event == "edit"){
                    data.title = "编辑员工";
                    layui.sysEmployee.addOrUpdateEmployee(data);
                }
                //删除
                if(obj.event == "del"){
                    layer.open({
                        title: "信息",
                        content: "确认删除吗？",
                        btn: ["确定","取消"],
                        yes: function(){
                            $jq.post("/gla/sysEmployee/del/" + data.id,"",function(data){
                                if(data.code == 0){
                                    layer.closeAll();
                                    layui.sysEmployee.initView();
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
                employeeName : function (value) {
                    if(value == '' || $jq.trim(value).length == 0){
                        return "用户名称不能为空";
                    }
                },
                loginName : function (value) {
                    if(value == '' || $jq.trim(value).length == 0){
                        return "用户登录账号不能为空";
                    }
                },
                password : function (value) {
                    if(value == '' || $jq.trim(value).length == 0){
                        return "密码不能为空";
                    }
                },
                // mobile : function (value) {
                //     if(value == '' || $jq.trim(value).length == 0){
                //         return "手机号码不能为空";
                //     }
                // }
                mobile: [/^1\d{10}$/, "请输入正确的手机号"],
            });
            //表单提交(新增或编辑)
            form.on("submit(addOrUpdateEmployeeForm)", function (data) {
                $jq.post("/gla/sysEmployee/save", data.field, function (data) {
                    if(data.code == 0){
                        layer.closeAll();
                        layui.sysEmployee.initView();
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

    exports('sysEmployee', obj);

})