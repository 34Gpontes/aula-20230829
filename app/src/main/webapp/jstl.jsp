<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>JSTL</title>
    </head>
    <body> 
       <%
            String mensagem = "Boa Tarde";
            request.setAttribute("mensagem", mensagem);
            
            int valor = 50;
            request.setAttribute("numero", valor);
       %>
       <p>${mensagem}</p>

       <c:if test="${numero > 30}">
        <p>Valor Maior que 30</p>
       </c:if>

       <h2>ForEach</h2>
       <c:forEach var="cont" begin="10" end="20">
            ${cont}<br />
       </c:forEach>
       <h3>Listas</h3>
       <c:forTokens var="fruta" items="maçã, manga, melão, abacaxi, jabuticaba" delims=",">
        ${fruta}<br />
       </c:forTokens>

       <h3>Estrututras de Dados</h3>
       <% 
            String[] dias = {"Seg", "Ter", "Qua", "Qui", "sx"};
            request.setAttribute("dias", dias);
       %>

       <C:forEach var="d" items="${dias}">
            ${d}<br />
       </C:forEach>
    </body>
</html>