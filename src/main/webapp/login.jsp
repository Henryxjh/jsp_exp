<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>登录</title>
        <style>
            #div1 {
                width: 540px;
                border: 1px solid black;
                background-color: hsla(0%, 0%, 0%, .4);
                margin: 0px auto;
            }
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                background-image: url("back.jpg");
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <div id="div1">
            <form id="loginForm" method="post" action="index.jsp">
                <table style="margin: auto;">
                    <tr>
                        <td colspan="2" align="center">
                            请输入用户名和密码
                        </td>
                    </tr>
                    <tr>
                        <td>
                            用户名
                        </td>
                        <td>
                            <input id="name" type="text" name="name" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            密&nbsp;&nbsp;&nbsp;码
                        </td>
                        <td>
                            <input type="password" name="pass" id="pass" required>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="提交" id="sub">
                            <input type="reset" value="重置">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>