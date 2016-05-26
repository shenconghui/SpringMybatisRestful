<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/5/25
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>医院信息列表</title>
    <script type="text/javascript" src="/WEB-INF/static/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        function delete_hospital(id){
            var r = window.confirm("确定要删除此数据吗？");
            if(r){
               // location.href = "delete?id="+id;
                $.ajax({
                    type:"DELETE",
                    url:"/SpringMybatisRestful/hospital/"+id,
                    dataType:"json",
                    success:function(data){
                        location.href = "/SpringMybatisRestful/hospital/find";
                    }
                });
            }
        }
    </script>
</head>
<body>
    <div align="center">
        <input type="button" value="新增医院信息" onclick="location.href='toAdd'"/>
    </div>
    <table width="60%" border="1" cellpadding="2" cellspacing="0" align="center">
          <tr>
              <th>医院编码</th>
              <th>医院名称</th>
              <th>医院地址</th>
              <th>医院电话</th>
              <th>医院等级</th>
              <th>医院网址</th>
              <th>管理</th>
          </tr>
        <c:forEach items="${hospitals}" var="hospital">
            <tr>
                <td>${id}</td>
                <td>${name}</td>
                <td>${address}</td>
                <td>${phone}</td>
                <td>${level}</td>
                <td>${website}</td>
                <td>
                    <input type="button" value="修改" onclick="location.href='toUpdate？id=${hospital.id}'"/>
                    <input type="button" value="删除" onclick="delete_hospital(${hospital.id});"/>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
