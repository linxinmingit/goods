layui.define(["jquery","form","layer","table","laytpl"], function(exports){

    var form = layui.form;
    var $jq = layui.jquery;
    var layer = layui.layer;
    var table = layui.table;
    var laytpl = layui.laytpl;
    var menuTree = null;

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
                elem: "#sysRoleTable"
                ,url: "/gla/sysRole/page"
                ,height: 500
                ,request: {
                    pageName: "current"
                    ,limitName: "size"
                }
                ,where: {
                    roleName: $jq("#roleName").val()
                }
                ,cols: [[
                    {field: 'xu', title: 'ID', type: 'numbers', width: 80}
                    ,{field: 'roleName', title: '角色名称'}
                    ,{field: 'roleCode', title: '角色编码'}
                    ,{field: 'sort', title: '排序'}
                    ,{field: 'createOn', title: '创建时间', templet: function (d) {
                            return dateToStr(d.createOn);
                        }}
                    ,{field: 'createBy', title: '创建人名称'}
                    ,{fixed: 'right', title: '操作', align: 'center', width:250, templet: function (d) {
                            var operateHtml = '<button class="layui-btn layui-btn-sm" lay-event="auth">授权</button>'
                                                + '<button class="layui-btn layui-btn-sm layui-btn-normal" lay-event="edit">编辑</button>'
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
         * 角色授权
         */
        ,initMenuTree : function(oneData){
            var html = roleAuth.innerHTML;
            var htmlStr = laytpl(html).render(oneData);
            layer.open({
                type:1,
                area:['600px','400px'],
                title:"角色授权",
                content:htmlStr
            });
            var json = "";
            $jq.ajax({
                url: "/gla/sysRole/authRoles",
                type: "post",
                async: false,  //设置为同步
                data: {"roleId":oneData.id},
                dataType: "json",
                success: function (data) {
                    if(data.code == 0){
                        json = data.data;
                    } else {
                        layer.msg(data.message,{icon:1,time:1000});
                    }
                }
            });
            menuTree = new layuiXtree({
                elem: 'menuTree'   //(必填) 放置xtree的容器，样式参照 .xtree_contianer
                , form: form     //(必填) layui 的 from
                , data: json     //(必填) json数据
                , color: "#3877F7"
                , icon: {        //三种图标样式，更改几个都可以，用的是layui的图标
                    open: "&#xe625"       //节点打开的图标
                    , close: "&#xe623;"    //节点关闭的图标
                    , end: ""      //末尾节点的图标
                }
            });
        }
        /**
         * 添加角色---》》》添加角色弹出框
         */
        ,addRole : function () {
            var addRole = {"id":"","roleName":"","roleCode":"","sort":"","title":"添加角色"};
            layui.sysRole.addOrUpdateRole(addRole);
        }
        /**
         * 添加或编辑角色弹出框
         */
        ,addOrUpdateRole : function (role) {
            var html = addOrUpdateRole.innerHTML;
            var htmlStr = laytpl(html).render(role);
            layer.open({
                type:1,
                area:'600px',
                title:role.title,
                content:htmlStr
            });
            form.render();
        }
        /**
         * 事件监听
         */
        ,tool : function (){
            //表格监听事件
            table.on("tool(sysRoleEvent)", function (obj) {
                var data = obj.data;//获取一行的数据
                //授权
                if(obj.event == "auth"){
                    layui.sysRole.initMenuTree(data);
                }
                //编辑
                if(obj.event == "edit"){
                    data.title = "编辑角色";
                    layui.sysRole.addOrUpdateRole(data);
                }
                //删除
                if(obj.event == "del"){
                    layer.open({
                        title: "信息",
                        content: "确认删除吗？",
                        btn: ["确定","取消"],
                        yes: function(){
                            $jq.post("/gla/sysRole/del/" + data.id,"",function(data){
                                if(data.code == 0){
                                    layer.closeAll();
                                    layui.sysRole.initView();
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
                roleName : function (value) {
                    if(value == '' || $jq.trim(value).length == 0){
                        return "角色名称不能为空";
                    }
                }
            });
            //表单提交(新增或编辑)
            form.on("submit(addOrUpdateRoleForm)", function (data) {
                $jq.post("/gla/sysRole/save", data.field, function (data) {
                    if(data.code == 0){
                        layer.closeAll();
                        layui.sysRole.initView();
                        layer.msg("保存成功",{icon:1,time:1000});
                    } else {
                        layer.msg(data.message,{icon:1,time:1000});
                    }
                })
                //防止表单提交
                return false;
            });
            //表单监听提交事件（授权）
            form.on("submit(nowSubmit)",function (data) {
                var oCks = menuTree.GetChecked(); //这是方法
                var menuIds = [];
                for (var i = 0; i < oCks.length; i++) {
                    var b = menuTree.GetParent(oCks[i].value);
                    if(b != null){
                        menuIds.push(b.value);
                    }
                    menuIds.push(oCks[i].value);
                }
                $jq.post("/gla/sysRole/saveRoleMenus",{"roleId":data.field.id,"menuIds":Array.from(new Set(menuIds)).join(",")},function (data) {
                    if(data.code == 0){
                        layer.closeAll();
                        layui.sysRole.initView();
                        layer.msg("保存成功",{icon:1,time:1000});
                    } else {
                        layer.msg(data.message,{icon:1,time:1000});
                    }
                });
                return false;
            })

        }

    }

    exports('sysRole', obj);

})