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
                </p>
            <p></br>
                <table>
                <tr>
                <td>
                <div class="row">
                    <div class="span4">
                        <div class="bloc">
                            <h1><img src="favicon.png"> Football</h1>
                            <p> Nombre de place:  </br> 
                                Lieu:Nantes </br>
                                Adresse: Stade stadium</br>
                                Heure: 18:30</br>
                                <a class="btn" href="#">Je participe &raquo;</a>
                            </p>
                        </div>
                    </div>
                </div>  
                </td>
                <td>
                <div class="row">
                    <div class="span4">
                      <div class="bloc"> 
                            <h1> <img src="favicon.png"> Pétanque</h1>
                            <p> Nombre de place: 3/6 </br> 
                                Lieu:Nantes </br>
                                Adresse: Aire de machin </br>
                                Heure: 15:00 </br>
                                <a class="btn" href="#">Je participe &raquo;</a>
                            </p>
                        </div>      
                    </div>
                </div>
                </td>
                   <td>
                <div class="row">
                    <div class="span4">
                      <div class="bloc"> 
                            <h1> <img src="favicon.png"> Basket</h1>
                            <p> Nombre de place: 8/11 </br> 
                                Lieu:Nantes </br>
                                Adresse: Stade trucmush </br>
                                Heure: 19:00 </br>
                                <a class="btn" href="#">Je participe &raquo;</a>
                            </p>
                        </div>      
                    </div>
                </div>
                </td>
                </tr>
                </table>
            </p>
            <!-- ----------------------------------------- connection ---------------------------------------- -->
            </br>
            <% if (userService.getCurrentUser() == null) { %>
            	<p> Prochainement, inscrivez-vous pour vos sports préférés! </p>
                <p><table><a href="<%= userService.createLoginURL("/") %>">Se connecter</a></table></p>
            <% }
            else { %>
                <p>Bonjour <%= userService.getCurrentUser().getNickname() %>, le site web est encore en construction mais vous pourrez prochainement vous inscrire pour vos sports favoris.</p>
                <p><a href="<%= userService.createLogoutURL("/") %>">Se déconnecter</a></p>
            <% } %>

            <hr>

            <footer>
           	<p>&copy; minTeam Alexis Benjamin Nicolas 2013 - <a href="http://www.univ-nantes.fr">Université de Nantes</a></p>
            </footer>
        </div> <!-- /container -->
    </body>
</html>