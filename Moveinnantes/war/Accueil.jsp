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
           
    </style>
    <link href="css/bootstrap-responsive.css" rel=stylesheet">
    <link rel="icon" type="image/png" href="favicon.png" />

    </head>
 
    <body>
        <div class="container">	
                <p>
                    <div class="conteneurLogo" style="text-align:center;">
                		<a href="Accueil.jsp"><img style="text-align:center," src="logo2.png" alt="Logo de Move In Nantes" /></a>
                	</div>
                </p>
                <p>
                </br>
                <% if (userService.getCurrentUser() == null) { %>
                    <table>
                        <tr>
                        <td>
                        <div class="row">
                            <div class="span4">
                                <div class="bloc">
                                    <h1><img src="foot.png"> Football</h1>
                                    <p> Nombre de place:  </br> 
                                        Lieu:Nantes </br>
                                        Adresse: Stade stadium</br>
                                        Heure: 18:30</br>
                                        <a class="btn" href="<%= userService.createLoginURL("/") %>">Je participe &raquo;</a>
                                    </p>
                                </div>
                            </div>
                        </div>  
                        </td>
                        <td>
                        <div class="row">
                            <div class="span4">
                              <div class="bloc"> 
                                    <h1> <img src="petanque.png"> Pétanque</h1>
                                    <p> Nombre de place: 3/6 </br> 
                                        Lieu:Nantes </br>
                                        Adresse: Aire de machin </br>
                                        Heure: 15:00 </br>
                                        <a class="btn" href="<%= userService.createLoginURL("/") %>">Je participe &raquo;</a>
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
                                        <a class="btn" href="<%= userService.createLoginURL("/") %>">Je participe &raquo;</a>
                                    </p>
                                </div>      
                            </div>
                        </div>
                        </td>
                        </tr>
                    </table>
            </p>
            </br>
            
                <p><table><a class="btn" href="<%= userService.createLoginURL("/") %>">Se connecter</a></table></p>
            <% }

            else { %>
                <table width="100%">
                    <tr>
                        <td>
                            <div class="row">
                                <div class="span4">
                                    <div class="bloc3">
                                    <h1>Mes évènements</h1>
                                          <table width="100%">
                                                <tr bgcolor="#E5E5E5">
                                                    <td ><img src="favicon.png"> Basket  19/12/2013 5/7 22:30 Terrain Marcel P.</td>
                                                    <td align="right"><a class="btn" href="#">Annuler</a></td>
                                                </tr>
                                                <tr bgcolor="#E5E5E5">
                                                    <td><img src="foot.png"> Foot 6/11 17:30 stade trucmush 19/12/2013</td>
                                                    <td align="right"><a class="btn" href="#">Annuler</a></td>
                                                </tr>
                                                <tr bgcolor="#E5E5E5">
                                                    <td></td><td align="right"><a class="btn" href="newEvent.jsp">Nouveau</a></td>
                                                </tr>
                                            </table>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="span4">
                                    <div class="bloc3">
                                    <h1>Mon espace perso</h1> 
                                        <p>
                                            Nom: <%= userService.getCurrentUser().getNickname() %> </br>
                                            Quartier:</br>
                                            Nombre d'évènements organisé:
                                            </br>

                                            <a class="btn" href="personal.jsp">Modifier</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table> 
                </br> 
                <div class="row">
                    <div class="span4">
                        <div class="bloc2">
                        <h1>Liste des évènements</h1>
                                <table width="100%">
                                    <tr bgcolor="#E5E5E5">
                                        <td ><img src="favicon.png"> Basket  19/12/2013 5/7 22:30 Terrain Marcel P.</td>
                                        <td align="right"><a class="btn" href="#">Je participe &raquo;</a></td>
                                    </tr>
                                    <tr bgcolor="#E5E5E5">
                                        <td><img src="foot.png"> Foot 6/11 17:30 stade trucmush 19/12/2013</td>
                                        <td align="right"><a class="btn" href="#">Je participe &raquo;</a></td>
                                    </tr>
                                </table>
                        </div>
                    </div>
                </div> 
                </br> 
                <p>
                    <table width="100%">
                        <tr>
                            <td align="right"><a class="btn" href="<%= userService.createLogoutURL("/") %>">Se déconnecter</a></td>
                        </tr>
                    </table>
                </p>
            <% } %>

            <hr>

            <footer>
           	<p>&copy; minTeam Alexis Benjamin Nicolas 2013 - <a href="http://www.univ-nantes.fr">Université de Nantes</a> - sources <a href="http://www.univ-nantes.fr">ici</a></p>
            </footer>
        </div> <!-- /container -->
    </body>
</html>