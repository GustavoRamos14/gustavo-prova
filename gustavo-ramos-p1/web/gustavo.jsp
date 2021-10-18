<%-- 
    Document   : gustavo
    Created on : 18 de out. de 2021, 17:35:33
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>sobre mim </h1>
    </body>
     <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Minha página</h2>
        <%if(session.getAttribute("auth-username")==null){%>
            <div>Você não tem permissão para ver essa página</div>
        <%}else{%>
            <h3>RA: 1290482012011</h3>
            <h3>Gustavo Ramos Guimaraes</h3>
            <h3>Semestre: 2020-22</h3>
            <h3><a href="https://github.com/GustavoRamos14" target="_blank">Perfil no GitHub</a></h3>
            <table border="1">
                <tr><th>Disciplina</th><th>Professor</th></tr>
                
                    <td>POO</td>
                    <td>Prof. Ricardo Pupo Larguesa</td>
                    
                    <td> Programacao Microinformatica</td>
                    <td> Prof. Gilmar</td>
                    
                    <td> algortimo e logica de programacao</td>
                    <td> Prof. Fernanda Larguesa</td>
                    
                    <td> linguagem de  programacao</td>
                    <td> Prof. Ciro</td>
                    
                    <td>  Banco de dados</td>
                    <td> Prof. simone</td>
                    
                    <td> metodologia e pesquisa</td>
                    <td> Prof. Sabrina</td>
                    
                    <td> estrutura de dados </td>
                    <td> Prof. fernada larguesa</td>
                    
                    
                
            </table>
        <%}%>
</html>
