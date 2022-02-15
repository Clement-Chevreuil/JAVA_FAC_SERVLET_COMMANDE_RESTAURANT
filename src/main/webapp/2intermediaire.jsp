<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="com.example.application_entreprise_tp3.Commande" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Clement Chevreuil
  Date: 11/02/2022
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    <%


          String genre = request.getParameter("genre");
          String nom = request.getParameter("nom");
          String nom_genre = genre + " " + nom ;

          List listEntree = Arrays.asList(request.getParameterValues("entree"));
          List listPlat = Arrays.asList(request.getParameterValues("plat"));
          List listDessert = Arrays.asList(request.getParameterValues("dessert"));

          Commande commande = new Commande();
          commande.setClient(nom_genre);
          commande.setEntree(listEntree);
          commande.setPlat(listPlat);
          commande.setDessert(listDessert);

          if(application.getAttribute("listCommande") == null)
          {
            List<Commande> listCommande = new ArrayList<Commande>();
            listCommande.add(commande);
            application.setAttribute("listCommande", listCommande);
          }
          else
          {
            List<Commande> listCommande = (ArrayList<Commande>) application.getAttribute("listCommande");
            listCommande.add(commande);
            application.setAttribute("listCommande", listCommande);
          }

          request.getRequestDispatcher("2resume.jsp").forward(request, response);

    %>















  </body>
</html>
