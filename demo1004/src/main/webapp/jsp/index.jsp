<%--
  Created by IntelliJ IDEA.
  User: 沈建磊
  Date: 2020/10/3
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px">
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>部门</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${list}" var="list">
        <tr>
            <td>${list.id}</td>
            <td>${list.name}</td>
            <td>${list.sex}</td>
            <td>${list.age}</td>
            <%--<td>${list.rank}</td>--%>
            <td>
                <c:if test="${list.rank==1}">1级</c:if>
                <c:if test="${list.rank==2}">2级</c:if>
                <c:if test="${list.rank==3}">3级</c:if>
                <c:if test="${list.rank==4}">4级</c:if>
                <c:if test="${list.rank==5}">5级</c:if>
            </td>
            <td>${list.department}</td>
            <td> <a href="javascript:void(0)" onclick="del(${list.id})">删除</a></td>
        </tr>
    </c:forEach>
    <a href="/add">添加人员</a>
</table>

<script>
    $(function () {
        //1.把奇数行li标签的背景色设置为天蓝色.
        $('tr:odd').css('backgroundColor', 'skyblue');
        //2.把偶数行li标签的背景色设置为红色.
        $('tr:even').css('backgroundColor', 'red');
    })
    function del(id) {
        var flag=confirm("确定删除信息吗");
        if(flag){
            $.ajax({
                type:"GET",
                url:"/deleteDetails/"+id,
                data:{id:id},
                dataType:"json",
                success:function (data) {
                    if(data.result=="success"){
                        alert("删除成功！");
                    }else{
                        alert("删除失败！");
                    }

                }
            })
        }
    }
</script>
</body>
</html>
