<%--
  Created by IntelliJ IDEA.
  User: zzz
  Date: 2021/5/23
  Time: 10:25
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
        <form action="student/insertStudent.do" method="post">
            <table>
                <tr>
                    <td>姓名：</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td><input type="text" name="age"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="注册"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
