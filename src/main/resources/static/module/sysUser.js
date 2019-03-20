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
                 elem: "#sysUserTable"
                ,url: "/gla/sysUser/page"
                ,height: 500
                ,request: {
                    pageName: "current"
                    ,limitName: "size"
                }
                ,where: {
                    userName: $jq("#userName").val()
                }
                ,cols: [[
                     {field: 'xu', title: 'ID', type: 'numbers', width: 80}
                    ,{field: 'userName', title: '用户名'}
                    ,{
                        title: '性别', align: "center", templet: function (d) {
                            if (d.sex == 0) {
                                return "女";
                            } else if (d.sex == 1) {
                                return "男";
                            }
                        }
                    }
                    ,{field: 'age', title: '年龄'}
                    ,{field: 'loginName', title: '登录账号'}
                    ,{field: 'password', title: '账号密码'}
                    ,{field: 'mobile', title: '手机号码'}
                    ,{field: 'email', title: '邮箱'}
                    ,{
                        title: '账号状态', align: "center", templet: function (d) {
                            if (d.isDeleted == 0) {
                                return "启用";
                            } else if (d.isDeleted == 1) {
                                return "无效";
                            }
                        }
                    }
                    ,{field: 'createOn', title: '创建时间', templet: function (d) {
                            return dateToStr(d.createOn);
                        }}
                    ,{field: 'createBy', title: '创建人名称'}
                    ,{fixed: 'right', title: '操作', align: 'center', width:250, templet: function (d) {
                            var operateHtml = '<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>'
                                                    + '<button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="del">删除</button>';
                            return operateHtml;
                        }}
                ]]
                ,page: {
                    limits:[10,20,50,100]
                }
            });
        }

        ,addUser : function () {
            var addUser = {
                "id": "",
                "userName": "",
                "sex": "",
                "age": "",
                "loginName": "",
                "password": "",
                "mobile": "",
                "email": "",
                "title":"添加用户"
            };
            layui.sysUser.addOrUpdateUser(addUser);
        }
        /**
         * 添加或编辑弹出框
         */
        ,addOrUpdateUser : function (user) {
            var html = addOrUpdateUser.innerHTML;
            var htmlStr = laytpl(html).render(user);
            layer.open({
                type:1,
                area:'600px',
                title:user.title,
                content:htmlStr
            });
            form.render();
        }
        /**
         * 事件监听
         */
        ,tool : function (){
            //表格监听事件
            table.on("tool(sysUserEvent)", function (obj) {
                var data = obj.data;//获取一行的数据
                // //编辑
                // if(obj.event == "edit"){
                //     data.title = "编辑用户";
                //     layui.sysUser.addOrUpdateUser(data);
                // }
                if (obj.event == 'detail')
                {
                    layer.msg('查看操作');
                    layui.sysUser.addOrUpdateUser(data);
                }
                //删除
                if(obj.event == "del"){
                    layer.open({
                        title: "信息",
                        content: "确认删除吗？",
                        btn: ["确定","取消"],
                        yes: function(){
                            $jq.post("/gla/sysUser/del/" + data.id,"",function(data){
                                if(data.code == 0){
                                    layer.closeAll();
                                    layui.sysUser.initView();
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
                userName : function (value) {
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
                mobile: [/^1\d{10}$/, "请输入正确的手机号"],
                email: [/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/, "邮箱格式不正确"],
                age: function(value){
                    var reg=/^(?:[1-9][0-9]?|1[01][0-9]|120)$/;//年龄是1-120之间有效
                    if(!reg.test(value)){
                        return '年龄不在18-80范围';
                    }
                },
            });
            //表单提交(新增或编辑)
            form.on("submit(addOrUpdateUserForm)", function (data) {
                $jq.post("/gla/sysUser/save", data.field, function (data) {
                    if(data.code == 0){
                        layer.closeAll();
                        layui.sysUser.initView();
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

    exports('sysUser', obj);

})