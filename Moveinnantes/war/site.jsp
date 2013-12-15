<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 
<%@ page import="com.google.appengine.api.users.*" %>
 
<% UserService userService = UserServiceFactory.getUserService(); %>
 
<!DOCTYPE html>



<html>
    <head>
        <title>Move in Nantes - Accueil</title>
        <meta charset="utf-8" />
        <link href="css/bootstrap.css" rel="stylesheet">
        <style type="text/css">
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
    </style>
    <link href="css/bootstrap-responsive.css" rel=stylesheet">
    <link rel="icon" type="image/png" href="favicon.png" />

    </head>
 
    <body>
        <div class="container">
            
                <p>
                <div class="conteneurLogo" style="text-align:center;">
                    <img style="text-align:center," src="logo2.png" alt="Logo de Move In Nantes" />
                </div>
            <!-- ----------------------------------------- connection ---------------------------------------- -->
            </br>
          
            <% if (userService.getCurrentUser() == null) { %>
            	<p> Vous devez vous connecter pour participer à un évnènement ! </p>
                <p><table><a href="<%= userService.createLoginURL("/") %>">Se connecter</a></table></p>
            <% }
            else { %>
                <p>Bonjour <%= userService.getCurrentUser().getNickname() %> bienvenur !</p>
                <p><a class="btn" href="<%= userService.createLogoutURL("/") %>">Se déconnecter</a></p>
            <% } %>

            <hr valign="bottom">

            <footer>
           	<p>&copy; minTeam Alexis Benjamin Nicolas 2013 - <a href="http://www.univ-nantes.fr">Université de Nantes</a></p>
            </footer>
        </div> <!-- /container -->
    </body>
</html>