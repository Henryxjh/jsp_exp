<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<html>
    <%
        String username = request.getParameter("name");
        String password = request.getParameter("pass");
        if (username == null) response.setHeader("Refresh", "1;url=login.jsp");
    %>
    <jsp:useBean id="stu" class="vote.service.User" scope="application"/>
    <jsp:setProperty name="stu" property="username" value="<%=username%>"/>
    <jsp:setProperty name="stu" property="password" value="<%=password%>"/>
    <head>
        <title>投票页面</title>
        <meta http-equiv="Content-Type" content="text/html: charset=UTF-8">
        <style type="text/css">
            h1 {
                font-family: 宋体;
                font-size: 40px;
                color: red;
            }
            p {
                font-family: 宋体;
                color: blue;
                text-decoration: underline;
            }
            #userDiv {
                border-bottom: 1px solid black;
                padding: 10px;
            }
            #base_info {
                font-size: 20px;
                color: blue;
                text-decoration: underline;
            }
            #list {
                color: darkblue;
            }
            #user {
                margin-right: 5%;
                display: inline-block;
                border-bottom: 2px solid black;
            }
            table {
                box-shadow: 10px 10px 10px #888888;
            }
            td {
                color: orange;
                box-shadow: 10px 10px 10px #888888;
            }
            body {
                background-image: url(back.jpg);
                background-size: cover;
            }
            #formVote {
                line-height: 30px;
            }
        </style>
    </head>
    <body>
        <h1 align="center">个人信息展示</h1>
        <div id="userDiv">
            <strong id="user">欢迎您，尊敬的用户<span style="font-size: 2em; color: deepskyblue;"><a><%=username%></a></span></strong>
        </div>
        <hr>
        <table border="1" align="center">
            <tr>
                <td id="base_info">
                    基本信息：<br>
                    李白（701~762），字太白，号青莲居士，又号“谪仙人”。
                </td>
                <td id="list">
                    主要代表诗作：
                    <ul>
                        <li>望庐山瀑布</li>
                        <li>行路难</li>
                        <li>将进酒</li>
                        <li>两甫吟</li>
                        <li>早发白帝城</li>
                        <li>静夜思</li>
                        <li>...</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>形象展示：
                    <img src="libai.jpg"/>
                </td>
                <td>好友：杜甫</td>
            </tr>
        </table>
        <hr>
        <form action="result.jsp" method="get" id="formVote">
            为你最喜欢的诗作投票：<br>
            <input type="radio" name="1" value="《望庐山瀑布》">望庐山瀑布<br>
            <input type="radio" name="1" value="《行路难》">行路难<br>
            <input type="radio" name="1" value="《将进酒》">将进酒<br>
            <input type="radio" name="1" value="《梁甫吟》">梁甫吟<br>
            <input type="radio" name="1" value="《早发白帝城》">早发白帝城<br>
            <input type="radio" name="1" value="《静夜思》">静夜思<br>
            <input type="submit" value="投票">
        </form>
    </body>
</html>