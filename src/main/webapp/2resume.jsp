<%@ page import="java.util.List" %>
<%@ page import="com.example.application_entreprise_tp3.Commande" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Clement Chevreuil
  Date: 11/02/2022
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <% List<Commande> listCommande = (ArrayList<Commande>)application.getAttribute("listCommande"); %>
    <%
        for(int i = 0; i < listCommande.size(); i++)
        {
    %>
            <% Commande commande = listCommande.get(i); %>
            <h3><%= commande.getClient() %></h3>

            <p><strong>ENTREE</strong></p>
            <p><% for(int z=0; z< commande.getEntree().size() ;z++) { %> <%= commande.getEntree().get(z) %> <% } %> </p>

            <p><strong>PLAT</strong></p>
            <p><% for(int j=0; j< commande.getPlat().size() ;j++) { %> <%= commande.getPlat().get(j) %> <% } %> </p>

            <p><strong>DESSERT</strong></p>
            <p><% for(int l=0; l<commande.getDessert().size();l++) { %>  <%= commande.getDessert().get(l) %> <%  } %></p>

            <p>______________________________________________________________________________</p>
    <%
        }
    %>

    <!--- methode 2 --->

    <h1>Methode 2 : juste entree</h1>
    <c:forEach var="commandes" items="${applicationScope['listCommande']}">
        <c:forEach var="entree" items="${commandes.getEntree()}">
            <p>${entree}</p>
        </c:forEach>
    </c:forEach>


        <a href="2commande.jsp">commande</a>
</body>
</html>
