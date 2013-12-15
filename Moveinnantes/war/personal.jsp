<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 
<%@ page import="com.google.appengine.api.users.*" %>
 
<% UserService userService = UserServiceFactory.getUserService(); %>
 
<!DOCTYPE html>



<html>
    <head>
        <title>Mes informations</title>
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
                <p></br>
                    <div class="row">
                                    <div class="span4">
                                        <div class="bloc2">
                                        <h1>Mes informations</h1>
                                        <form method="post" action="Accueil.jsp">
                                            <table width="100%" border="0">
                                                <tr bgcolor="#E5E5E5">
                                                    <td width="6%">Nom:</td><td><input type="textarea" name="name"></td><td width="70%"></td>
                                                </tr>
                                                <tr bgcolor="#E5E5E5">
                                                    <td>Quartier:</td><td><input type="textarea" name="quartier"></td><td></td>
                                                </tr>
                                                <tr bgcolor="#E5E5E5">
                                                    <td></td><td align="right"><input type="submit" value"Enregistrer"></td><td></td>
                                                </tr>
                                            </table>
                                            <p></p>
                                        </form>   
                                        </div>
                                    </div>
                                </div>
            <hr>

            <footer>
            <p>&copy; minTeam Alexis Benjamin Nicolas 2013 - <a href="http://www.univ-nantes.fr">Université de Nantes</a> - sources <a href="http://www.univ-nantes.fr">ici</a></p>
            </footer>
        </div> <!-- /container -->
    </body>
</html>