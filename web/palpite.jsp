<%-- 
    Document   : play
    Created on : 03/11/2015, 14:47:25
    Author     : Isaac Teixeira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-BR">
    <head>
        <title>Shot - Drink&Fun</title>
        <link rel="stylesheet" href="jogo.css"/>
    </head>

    <body>
        <div>
            <div id="numescolhido">
                <p name="imagemNumero"><img src="images/numeio.png" id="numero"></p>
            </div>

            <div id="palpite">
                <p>Palpite Jogador Nº:</p>
                <form  method="post" action="<%= request.getContextPath()%>/Servlet">
                    <input name="palpite" id="campopalpite"/>
                    <button name="OK" id="ok">OK</button>
                </form>
            </div>
            <div id="intervalo">
                <div id="menor">Menor</div>
                <div id="maior">Maior</div>
            </div>
        </div>
    </body>
</html>
