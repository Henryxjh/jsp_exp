<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@page import="vote.service.User"%>
<%request.setCharacterEncoding("UTF-8");%>
<html>
    <head>
        <title>投票结果</title>
    </head>
    <body>
        <jsp:useBean id="stu" class="vote.service.User" scope="application"/>
        <%
            String name = stu.getUsername();
            String poem = request.getParameter("1");
            if (name == null) response.setHeader("Refresh", "1;url=login.jsp");
        %>
        <jsp:forward page="res.jsp">
            <jsp:param name="name" value="<%=name%>"/>
            <jsp:param name="poem" value="<%=poem%>"/>
        </jsp:forward>
    </body>
</html>
