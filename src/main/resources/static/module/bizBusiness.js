layui.define(["jquery","form","layer","table","laytpl"], function(exports){

    var form = layui.form;
    var $jq = layui.jquery;
    var layer = layui.layer;
    var table = layui.table;
    // var select = layer.select();
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
                elem: "#bizBusinessTable"
                ,url: "/gla/bizBusiness/page"
                ,height: 500
                ,request: {
                    pageName: "current"
                    ,limitName: "size"
                }
                ,where: {
                    businessName: $jq("#businessName").val()
                }
                ,cols: [[
                     {field: 'xu', title: 'ID', type: 'numbers', width: 80}
                    ,{field: 'businessName', title: '商家名称'}
                    ,{field: 'linkPeople', title: "联系人"}
                    ,{field: 'mobile', title: '联系电话'}
                    ,{field: 'businessAddress', title: '联系地址'}
                    ,{
                        title: '数据状态', align: "center", templet: function (d) {
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

        ,addBusiness : function () {
            var provinceid = {

            }
            var addBusiness = {
                "id": "",
                "businessName": "",
                "linkPeople": "",
                "provinceId": "",
                "cityId": "",
                "areaId": "",
                "mobile": "",
                "title":"添加商家信息"
            };
            layui.bizBusiness.addOrUpdateBusinessForm(addBusiness);
        }
        /**
         * 添加或编辑弹出框
         */
        ,addOrUpdateBusinessForm : function (business) {
            var html = addOrUpdateBusiness.innerHTML;
            var htmlStr = laytpl(html).render(business);
            layer.open({
                type:1,
                area:'900px',
                title:business.title,
                content:htmlStr
            });
            form.render();
        }
        /**
         * 事件监听
         */
        ,tool : function (){
            //表格监听事件
            table.on("tool(bizBusinessEvent)", function (obj) {
                var data = obj.data;//获取一行的数据
                //编辑
                if(obj.event == "edit"){
                    data.title = "编辑员工";
                    layui.bizBusiness.addOrUpdateBusinessForm(data);
                }
                //删除
                if(obj.event == "del"){
                    layer.open({
                        title: "信息",
                        content: "确认删除吗？",
                        btn: ["确定","取消"],
                        yes: function(){
                            $jq.post("/gla/bizBusiness/del/" + data.id,"",function(data){
                                if(data.code == 0){
                                    layer.closeAll();
                                    layui.bizBusiness.initView();
                                    layer.msg("删除成功",{icon:1,time:1000});
                                } else {
                                    layer.msg(data.message,{icon:1,time:1000});
                                }
                            })
                        }
                    })
                }
            });
            //表单验证
            form.verify({
                businessName : function (value) {
                    if(value == '' || $jq.trim(value).length == 0){
                        return "商家名称不能为空";
                    }
                },
                linkPeople : function (value) {
                    if(value == '' || $jq.trim(value).length == 0){
                        return "联系人名称不能为空";
                    }
                },
                mobile: [/^1\d{10}$/, "请输入正确的手机号"],
            });

            //表单提交(新增或编辑)
            form.on("submit(addOrUpdateBusinessForm)", function (data) {
                $jq.post("/gla/bizBusiness/save", data.field, function (data) {
                    if(data.code == 0){
                        layer.closeAll();
                        layui.bizBusiness.initView();
                        layer.msg("保存成功",{icon:1,time:1000});
                    } else {
                        layer.msg(data.message,{icon:1,time:1000});
                    }
                })
                //防止表单提交
                return false;
            });
           //  //刷新
           //  form.render('select');
           //
           //  //省下拉选事件,获取市下拉选
           // form.on('select(provinceId)', function(data) {
           //      var hosid = data.value;
           //      $.ajax({
           //          type : "post",
           //          url : "gla/sysProvince/query",
           //          data : {hosid:hosid},
           //          dataType : "json",
           //          success : function(d) {
           //              var tmp = '<option value="">--请选择--</option>';
           //
           //              $("#areaId").html(tmp);
           //              for ( var i in d) {
           //                  tmp += '<option value="' + d[i].id +  '">' + d[i].areaName + '</option>';
           //              }
           //              $("#cityId").html(tmp);
           //              form.render();
           //          },
           //          error:function(){
           //              layer.alert('请求失败，稍后再试', {icon: 5});
           //          }
           //
           //      });
           //  });
           //
           //
           // form.on('select(cityId)',function(data){
           //      var division1id = data.value;
           //      $.ajax({
           //          type : "post",
           //          url : "gla/sysCity/query",
           //          data : {division1id:division1id},
           //          dataType : "json",
           //          success : function(d) {
           //              var tmp = '<option value="">--请选择--</option>';
           //              for ( var i in d) {
           //                  tmp += '<option value="' + d[i].id +  '">' + d[i].cityName + '</option>';
           //              }
           //              $("#areaId").html(tmp);
           //              form.render();
           //          },
           //          error:function(){
           //              layer.alert('请求失败，稍后再试', {icon: 5});
           //          }
           //
           //      });
           //  });

        }

    }

    exports('bizBusiness', obj);

})