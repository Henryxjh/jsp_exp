<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<html>
    <head>
        <title>投票结果</title>
        <style>
            body {
                text-align: center;
                background-size: cover;
                background-image: url("back.jpg");
            }
            h3 {
                font-size: 2em;
                color: deepskyblue;
                height: 300px;
                line-height: 300px;
            }
        </style>
    </head>
    <body>
        <h3>
            <%=request.getParameter("name")%>最喜欢的诗作是<%=request.getParameter("poem")%>
        </h3>
    </body>
</html>