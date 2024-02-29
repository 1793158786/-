<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2023/12/29
  Time: 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>欢迎注册</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .top-banner{
            background: #ffffff;
            height: 86px;
            text-align: center;
            margin-bottom: 20px;
        }
        .title-line{
            width: 980px;
            height: 28px;
            margin: 0 auto;
            border-bottom: 1px solid #ddd;
            margin-bottom: 50px;
            text-align: center;
        }
        .tit{
            height: 56px;
            line-height: 56px;
            margin: 0 auto;
            padding: 0 20px;
            font-size: 40px;
            background: #fff;
            text-align: center;
        }
        .zhu{
            color: #555;
            display: inline-block;
            height: 36px;
            border: 1px solid #ccc;
            border-radius: 2px;
            width: 184px;
            line-height: 38px;
            font-size: 14px;
            text-align: center;
        }
        .box{
            box-sizing: border-box;
            width: 30%;
            border: 1px solid #ddd;
            border-radius: 2px;
            color: #aaa;
            font-size: 14px;
            padding: 10px;
            height: 40px;
            vertical-align: middle;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="top-banner">
        <img src="img/title2.png">
    </div>
</div>
<div class="title-line">
    <span class="h3 tit">注册</span>
</div>
<div class="container">
    <div class="text-center">
        <form action="${pageContext.request.contextPath}/UserServlet?dowhat=logon" method="post" onsubmit="return check()" name="form">
            <span class="h3">id</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="id" placeholder="该取什么名字好呢" class="box" name="id">
            <br>
            <span id="tip1" style="color: #f66495;">
                ${sessionScope.erro}
            </span>
            <br />
            <br />
            <span class="h3">密码</span>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="password" id="password" placeholder="想想该用什么密码" class="box" id="password" name="password"/>
            <br />
            <span id="tip" style="color: #f66495;"></span>
            <br />
            <br />
            <input type="submit" value="注册" class="zhu"/>
            <br />
            <a href="${pageContext.request.contextPath}/css/login.jsp.jsp">已有账号，直接登录></a>
        </form>
    </div>
</div>
</body>
</html>