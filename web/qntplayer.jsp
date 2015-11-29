<%-- 
    Document   : qntplayer
    Created on : 25/11/2015, 02:52:05
    Author     : Isaac Teixeira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h100">
    <head>
        <title>Shot - Drink&Fun</title>
        <link rel="stylesheet" href="jogo.css"/>
    </head>
    <body class="h100">
        <form method="post" action="<%=request.getContextPath()%>/ServletInicial">
            <div class="centrops">
                <div id="esquerda">
                    <div class="click">
                    </div>
                </div>

                <div id="direita">
                    <div class="alinhamento">
                        <div class="fontwb">
                            <p>Digite o nome do jogador</p>
                        </div>
                        <div>
                            <input name="nomedojogador" class="campop" min="2" max="10"/>
                            <button name="Adicionar" id="addj">Adicionar jogador</button>
                        </div>
                    </div> 
                </div>
            </div>
        </form>
        <div class="iniqnp">
            <form method="post" action="<%= request.getContextPath()%>/Servletpalp">
                <button name="play" id="iniciar">Iniciar</button>
            </form>
                <!--<a href="<%= request.getContextPath()%>/palpite.jsp">Iniciar</a>-->
            <!--<a href="palpite.jsp"><button name="play" id="iniciar" href="qntplayer.jsp">Iniciar</button></a>-->
        </div>
    </body>
</html>
