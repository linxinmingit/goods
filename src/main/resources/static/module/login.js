layui.define(["jquery","form","layer"], function(exports){

    var form = layui.form;
    var $jq = layui.jquery;
    var layer = layui.layer;

    var obj = {
        /**
         * 页面初始化
         */
        initView : function(){
            console.log("登录页面");
        }

        /**
         * 事件监听
         */
        ,tool : function (){
            //表单验证
            form.verify({
                username : function(value){
                    if(value == '' || $jq.trim(value).length == 0){
                        return "用户名不能为空";
                    }
                }
                ,password : function(value){
                    if(value == '' || $jq.trim(value).length == 0){
                        return "密码不能为空";
                    }
                }
            });
            //表单提交
            form.on('submit(login)', function (data) {
                $jq.post("/gla/login", data.field, function (data){
                    if(data.code == 0){
                        window.location.href = "index.html";
                    }else{
                        layer.msg(data.message,{icon:1,time:1000});
                    }
                });
                //防止表单提交
                return false;
            })


        }


    }

    exports('login', obj);

})