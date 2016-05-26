<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/5/25
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>更新医院信息</title>
    <script type="text/javascript" src="/WEB-INF/static/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/WEB-INF/js/json.js"></script>
    <script type="text/javascript">
        function save(){
            $.ajax({
                type:"PUT",
                url:"/SpringMybatisRestful/hospital/update",
                data:JSON.stringify($("#myform").serializeObject()),
                dataType:"json",
                contentType:"application/json",
                success:function(data){
                    location.href = "/SpringMybatisRestful/hospital/find";
                }
            });
        }
    </script>
</head>
<body>
    <form action="update" method="post" id="myform">
         <table width="40%" border="1" cellpadding="2" cellspacing="0" align="center">
             <tr>
                 <td>医院名称</td>
                 <td><input type="text" name="name" value="${hospital.name}"/></td>
             </tr>
             <tr>
                 <td>医院地址</td>
                 <td><input type="text" name="address" value="${hospital.address}"/></td>
             </tr>
             <tr>
                 <td>医院电话</td>
                 <td><input type="text" name="phone" value="${hospital.phone}"/></td>
             </tr>
             <tr>
                 <td>医院等级</td>
                 <td><input type="text" name="level" value="${hospital.level}"/></td>
             </tr>
             <tr>
                 <td>医院网站</td>
                 <td><input type="text" name="website" value="${hospital.website}"/></td>
             </tr>
             <tr><td colspan="2"><input type="submit" value="保存" onclick="save()"></td></tr>

         </table>
    </form>
</body>
</html>
