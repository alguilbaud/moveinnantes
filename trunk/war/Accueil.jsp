<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 
<%@ page import="com.google.appengine.api.users.*" %>
 
<% UserService userService = UserServiceFactory.getUserService(); %>
 
<!DOCTYPE html>



<html>
    <head>
        <title>accueil</title>
        <meta charset="utf-8" />
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
         <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    	 <!--[if lt IE 9]>-->
     	 <script src="js/html5shiv.js"></script>
    	 <!--<![endif]-->
      	 <script src="http://code.jquery.com/jquery.js"></script>
    </head>
 
    <body>
    	<div class="conteneurLogo" style="text-align:center;">
    		<img style="text-align:center," src="logo2.png" alt="Logo de Move In Nantes" />
    	</div>
        <h1>Bienvenue sur Move in Nantes!</h1>
         
        <% if (userService.getCurrentUser() == null) { %>
        	<p> Prochainement, inscrivez-vous pour vos sports préférés! </p>
            <p><a href="<%= userService.createLoginURL("/") %>">Se connecter</a></p>
        <% }
        else { %>
            <p>Bonjour <%= userService.getCurrentUser().getNickname() %>, le site web est encore en construction mais vous pourrez prochainement vous inscrire pour vos sports favoris.</p>
            <p><a href="<%= userService.createLogoutURL("/") %>">Se déconnecter</a></p>
        <% } %>
        <footer>
       	<p>&copy; Company 2013</p>
        </footer>
    </body>
</html>