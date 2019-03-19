layui.define(["jquery","form","layer"], function(exports){

    var form = layui.form;
    var $jq = layui.jquery;
    var layer = layui.layer;

    var obj = {
        /**
         * 页面初始化
         */
        initView : function(){
            //加载菜单栏
            layui.index.loadMenu();
            //
        }
        /**
         * 加载菜单栏
         */
        ,loadMenu : function () {
            $jq.post("/gla/sysMenu/findCurrentMenus","",function (data) {
                if(data.code == 0){
                    var menu = {};
                    menu.html = '<ul class="layui-nav layui-nav-tree">';
                    layui.index.parentMenu(menu,data.data);//加载父菜单
                    menu.html += '</ul>';
                    $jq("#menu").html(menu.html);
                    layui.element.render('nav');
                    //菜单栏点击事件
                    layui.index.menuClick();
                } else {
                    layer.msg(data.message,{icon:1,time:1000});
                }
            });
        }
        /**
         * 加载父菜单
         */
        ,parentMenu : function (menu,data) {
            for(var index in data){
                menu.html += '<li class="layui-nav-item">'
                            + '<a href="javascript:;">' + data[index].name + '</a>';
                layui.index.childrenMenu(menu,data[index].children);//加载子菜单
                menu.html += '</li>';
            }
        }
        /**
         * 加载子菜单
         */
        ,childrenMenu : function (menu,data) {
            if(!data) return;
            menu.html += '<dl class="layui-nav-child">';
            for(var index in data){
                menu.html += '<dd><a href="'+ data[index].url +'" data-href="'+ data[index].url +'">' + data[index].name + '</a></dd>';
            }
            menu.html += '</dl>';
        }
        /**
         * 菜单栏点击事件
         */
        ,menuClick : function () {
            $jq("#menu a[data-href]").on("click",function () {
                var href = $jq(this).attr("data-href");
                //加载内容区域
                layui.index.loanMainHtml(href,"#main");
            })
        }
        /**
         * 加载内容区域
         */
        ,loanMainHtml : function (url,id) {
            var url = url.replace("#","");
            $jq.get(url,"random=" + Math.random(),function (data) {
                $jq(id).html(data);
            })
        }
        /**
         * 退出
         */
        ,logout : function () {
            layer.open({
                title: "信息",
                content: "确认退出吗？",
                btn: ["确定","取消"],
                yes: function(){
                    $jq.post("/gla/logout","",function(data){
                        debugger;
                        if(data.code == 0){
                            window.location.href = "login.html";
                        } else {
                            layer.msg(data.message,{icon:1,time:1000});
                        }
                    })
                }
            })
        }

        /**
         * 事件监听
         */
        ,tool : function (){


        }


    }

    exports('index', obj);

})