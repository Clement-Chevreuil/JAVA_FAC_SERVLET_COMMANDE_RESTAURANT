<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Clement Chevreuil
  Date: 10/02/2022
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="1resume.jsp">
        <label>Nom</label>

        <br>

        <select name="genre">
            <%! ArrayList genre = new ArrayList(); int i;%>
            <% if(genre.isEmpty()){ genre.add("Mr");genre.add("Mme");} %>
            <% for (i=0; i<genre.size();i++) {%><option  ><%=genre.get(i)  %></option><%} %>
        </select>

        <br>

        <label>Entrée</label>

        <br>

        <select name="entree" multiple>
            <%! List<String> entree = new ArrayList<String>(); int j;%>
            <% if(entree.isEmpty()){ entree.add("Noix");entree.add("Salade");entree.add("Fois");entree.add("Delice");} %>
            <% for (j=0; j<entree.size();j++) {%><option><%=entree.get(j)  %></option><%} %>
        </select>

        <br>

        <label>Plat</label>

        <br>

        <select multiple name="plat">
            <%! ArrayList plat = new ArrayList(); int k;%>
            <% if(plat.isEmpty()){ plat.add("risoto");plat.add("lasagne");plat.add("pizza");plat.add("pates");} %>
            <% for (k=0; k<plat.size();k++) {%><option  ><%=plat.get(k)  %></option><%} %>
        </select>

        <br>

        <label>Plat</label>

        <br>

        <select multiple name="dessert">
            <%! ArrayList dessert = new ArrayList(); int l;%>
            <% if(dessert.isEmpty()){ dessert.add("glace");dessert.add("cafe");dessert.add("salade");dessert.add("tarte");} %>
            <% for (l=0; l<dessert.size();l++) {%><option  ><%=dessert.get(l)  %></option><%} %>
        </select>

        <button type="submit">Enregistrer</button>
    </form>

    <a href="index.jsp">Index</a>
</body>
</html>
