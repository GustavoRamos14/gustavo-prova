<%-- 
    Document   : gustavo-dica-megasena
    Created on : 18 de out. de 2021, 17:49:57
    Author     : User
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Integer> numbers = (ArrayList)session.getAttribute("auth-numbers");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Minha página</h2>
        <%if(session.getAttribute("auth-username")==null){%>
            <div>Você não tem permissão para ver essa página</div>
        <%}else if(numbers == null){%>
            <div>Não foram gerados números para você. :(</div>
        <%}else{%>
            <table border="1">
                <tr>
                    <th>Número</th>
                </tr>
                <%for(int n: numbers){%>
                <tr>
                    <td><%= n %></td>
                </tr>
                <%}%>
            </table>
        <%}%>
        <h1>Hello World!</h1>
    </body>
</html>
