<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/5/25
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>新增医院信息</title>
</head>
<body>
    <form action="add" method="post">
      <table width="40%" border="1" cellpadding="2" cellspacing="0" align="center">
        <tr>
            <td>医院名称</td>
            <td><input type="text" name="name" /></td>
        </tr>
        <tr>
            <td>医院地址</td>
            <td><input type="text" name="address" /></td>
        </tr>
        <tr>
            <td>医院电话</td>
            <td><input type="text" name="phone" /></td>
        </tr>
        <tr>
            <td>医院等级</td>
            <td><input type="text" name="level" /></td>
        </tr>
        <tr>
            <td>医院网站</td>
            <td><input type="text" name="website" /></td>
        </tr>
        <tr><td colspan="2"><input type="submit" value="保存"></td></tr>

      </table>
    </form>
</body>
</html>
