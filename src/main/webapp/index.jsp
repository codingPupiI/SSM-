<%--
  Created by IntelliJ IDEA.
  User: zzz
  Date: 2021/5/23
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" +
            request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>"/>
</head>
<body>
<div align="center">
    <p>SSM_test</p>
    <img src="images/耳机壳.PNG"/>
    <table>
        <tr>
            <td><a href="insertStudent.jsp">注册</a></td>
        </tr>
        <tr>
            <td><a href="selectStudents.jsp"> 浏览</a></td>
        </tr>
    </table>
</div>
</body>
</html>
