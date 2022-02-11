<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Clement Chevreuil
  Date: 10/02/2022
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Title</title>

    <%-- methode 0, recupere 1 variable pas plus --%>
    <% String genre = request.getParameter("genre"); %>

    <%-- methode 1 --%>
    <%! String[] listEntree, listPlat ; %>
    <% listEntree = request.getParameterValues("entree");%>
    <% listPlat = request.getParameterValues("plat"); %>

    <%-- methode 2 --%>
    <%! List listDessert; %>
    <% List listDessert = Arrays.asList(request.getParameterValues("dessert")); %>




    <h1>GENRE</h1>
    <p>
        <%= genre %>       <%-- methode 0 --%>
    </p>
    <h1>ENTREE</h1>
    <p>
        <% for(int i=0; i< listEntree.length;i++) { %> <%= listEntree[i] %> <% } %>     <%-- methode 1 --%>
    </p>
    <h1>PLAT</h1>
    <p>
        <% for(int j=0; j < listPlat.length;j++) { %> <%= listEntree[j] %>  <% ; } %>   ,  <%-- methode 1 --%>
    </p>
    <h1>DESSER</h1>
    <p>
        <% for(int k=0; k<listDessert.size();k++) { %>  <%= listDessert.get(k) %> <% ;  } %> ;  <%-- methode 2 --%>
    </p>

    <a href="1commande.jsp">commande</a>
</head>
<body>


