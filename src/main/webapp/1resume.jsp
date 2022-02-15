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

    <h1>GENRE</h1><%-- methode 0 --%>
    <% String genre = request.getParameter("genre"); %>
    <p><%= genre %></p>


    <h1>ENTREE</h1><%-- methode 1 --%>
    <%! String[] listEntree, listPlat ; %>
    <% listEntree = request.getParameterValues("entree");%>
    <p><% for(int i=0; i< listEntree.length;i++) { %> <%= listEntree[i] %> <% } %></p>


    <h1>PLAT</h1> <%-- methode 3 --%>
    <jsp:useBean id="commande" class="com.example.application_entreprise_tp3.Commande"></jsp:useBean>
    <jsp:setProperty property="*" name="commande"></jsp:setProperty>
    <c:forEach var="entree" items="${commande.plat}"><p>${plat}</p></c:forEach>


    <h1>DESSER</h1><%-- methode 2 --%>
    <% List listDessert = Arrays.asList(request.getParameterValues("dessert")); %>
    <p><% for(int k=0; k<listDessert.size();k++) { %>  <%= listDessert.get(k) %> <% ;  } %></p>

    <a href="1commande.jsp">commande</a>
</head>
<body>


