<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<script type="text/javascript">
    layui.use('element', function () {
        //实例化element
        var element = layui.element;
        //初始化动态元素，一些动态生成的元素如果不设置初始化，将不会有默认的动态效果
        element.init();
        //导航条点击监听
        element.on('nav(bigData)', function (elem) {
            console.log(elem);
        });
    });
    layui.use('form', function () {
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

        //……
        //但是，如果你的HTML是动态生成的，自动渲染就会失效
        //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
        form.render();
    });
    function addHtml(url) {
        layer.open({
            type: 2,
            title: '添加页面',
            closeBtn: 0,
            area: ['800px', '600px'],
            content: [url, 'yes'],
            btn: ['取消'],
            yes: function (index) {
                //事件
                layer.close(index);
            }
        });
    }
    function editHtml(url) {
        layer.open({
            type: 2,
            title: '修改页面',
            closeBtn: 0,
            area: ['800px', '600px'],
            content: [url, 'yes'],
            btn: ['取消'],
            yes: function (index) {
                //事件
                layer.close(index);
            }
        });
    }
</script>
