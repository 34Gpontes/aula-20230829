<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%
    int[] resultado = new int[10];
    resultado[0] = 1;
    resultado[1] = 1;

    request.setAttribute("resultado", resultado);
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Sequencia de fibonacci</h1>
    <c:forEach var="item" items="${resultado}">
        
    </c:forEach>

</body>
</html>