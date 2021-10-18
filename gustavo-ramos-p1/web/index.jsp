<%-- 
    Document   : index
    Created on : 18 de out. de 2021, 17:29:35
    Author     : User
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int sessions = 0;
    ArrayList<String> sessionList = null;
    if(application.getAttribute("sessionList")!=null){
        sessionList = (ArrayList)application.getAttribute("sessionList");
        sessions = sessionList.size();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página inicial</h2>
        <h3>Sessões: <u><%= sessions %></u></h3>
        <%if(session.getAttribute("auth-username")!=null && sessionList!=null){%>
        <ul>
            <%for(String name: sessionList){%>
            <li><%= name %></li>
            <%}%>
        </ul>
        <%}%>
        <h1>Hello World!</h1>
    </body>
</html>
