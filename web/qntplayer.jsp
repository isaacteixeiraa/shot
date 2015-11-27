<%-- 
    Document   : qntplayer
    Created on : 25/11/2015, 02:52:05
    Author     : Isaac Teixeira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shot - Drink&Fun</title>
        <link rel="stylesheet" href="jogo.css"/>
    </head>
    <body>
        <form method="post" action="<%= request.getContextPath()%>/ServletInicial">
            <div class="centrops">
                <div id="esquerda">
                    <a href="play.jsp"><img src="images/LogoShine.png" id="imagemjogadores"/></a>
                </div>

                <div id="direita">
                    <div class="alinhamento">
                        <div id="numjogadores">
                            <p>Numero de Jogadores:</p>
                        </div>
                        <div>
                            <input name="campojogadores" id="campojogadores"/>
                        </div>
                    </div> 
                </div>
            </div>

            <div>
                <button name="play" id="iniciar">Iniciar</button>
                <!--<a href="palpite.jsp"><button name="play" id="iniciar" href="qntplayer.jsp">Iniciar</button></a>-->
            </div>
        </form>
    </body>
</html>
