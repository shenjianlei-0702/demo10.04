<%--
  Created by IntelliJ IDEA.
  User: 沈建磊
  Date: 2020/10/3
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/addAll" method="post">
        <table border="1px">
            <tr>
                <td>添加人员</td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name" /></td>
            </tr>
            <tr>
                <td>性别</td>
                <td>
                   <select name="sex">
                       <option value="1">男</option>
                       <option value="2">女</option>
                   </select>
                </td>
            </tr>

            <tr>
                <td>年龄</td>
                <td><input type="text" name="age"></input></td>
            </tr>
            <tr>
                <td>等级</td>
                <td>
                    <select name="rank">
                        <option value="1">1级</option>
                        <option value="2">2级</option>
                        <option value="3">3级</option>
                        <option value="4">4级</option>
                        <option value="5">5级</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>部门</td>
                <td>
                    <select name="department">
                        <option >开发部</option>
                        <option >支持部</option>
                        <option>工商质量部</option>
                    </select>
                </td>

            </tr>
            <tr>
                <td colspan="2" style="text-align: center"><input type="submit" value="提交" /></td>
            </tr>

        </table>
    </form>
    <script type="text/javascript">
        $("td:eq(0)").css("background-color","#DDA0DC");

        $("form").submit(function() {
            var name=$("[name=name]").val();

            if(executor==""){
                alert("用户名不能为空");
                return false;
            }
        })

    </script>
</body>
</html>
