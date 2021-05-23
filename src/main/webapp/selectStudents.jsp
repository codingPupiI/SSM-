<%--
  Created by IntelliJ IDEA.
  User: zzz
  Date: 2021/5/23
  Time: 11:29
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
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            loadStudent();
            $("#btnLoader").click(function () {
                loadStudent();
            })
        })
        function loadStudent(){
            $.ajax({
                url:"student/selectStudents.do",
                type: "get",
                dataType: "json",
                success:function (data) {
                    $.each(data, function (i,n) {
                        $("#info").html("");
                        $("#info").append("<tr>")
                            .append("<td>" + n.id + "</td>")
                            .append("<td>" + n.name + "</td>")
                            .append("<td>" + n.age + "</td>")
                            .append("</tr>")
                    })
                }
            })
        }

    </script>
</head>
<body>
    <div align="center">
        <table>
            <thead>
                <tr>
                    <td>学号</td>
                    <td>姓名</td>
                    <td>年龄</td>
                </tr>
            </thead>
            <tbody id="info">

            </tbody>
        </table>
        <input type="button" id="btnLoader" value="查询数据" />
    </div>
</body>
</html>
