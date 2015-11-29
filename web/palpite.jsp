<%-- 
    Document   : play
    Created on : 03/11/2015, 14:47:25
    Author     : Isaac Teixeira
--%>

<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<html lang="pt-BR">
    <head>
        <title>Shot - Drink&Fun</title>
        <link rel="stylesheet" href="jogo.css"/>

        <script>
            var random;

            window.onload = function iniciaPartida() {//ira executar ao abrir a pagina
                random = Math.floor(Math.random() * 101);//gera numero randomico 0 ~ 100
            };

            function clickOk() {//quando clicar no botao
                var palpite = document.getElementById("campopalpite").value;//recebe valor do input

                if (palpite == random) {
                    document.getElementById("label").innerHTML = "Parabéns, você venceu";
                    alert("Parabéns, você venceu");
                    window.location.href = "play.jsp";
                } else if (palpite > random) {

                    document.getElementById("maior").innerHTML = palpite;

                } else if (palpite < random) {

                    document.getElementById("menor").innerHTML = palpite;

                }

                document.getElementById("campopalpite").value = "";//altera valor do input
            }
        </script>

    </head>

    <body>
        <div>
            <div id="numescolhido">
                <p id="palpiteNumero"><img src="images/numeio.png" id="numero"></p>
            </div>

            <div id="palpite">
                <p id="label" class="fontwb">Palpite Jogador <%= request.getSession().getAttribute("jogador1")%></p>
                <!--<form  method="post" action="/Servlet">-->
                <input name="palpite" class="campop" id="campopalpite"/>
                <button name="OK" id="ok" onclick="clickOk()">OK</button>
                <!--</form>-->
            </div>
            <div id="intervalo">
                <div class="meia" >
                    <div id="menor" class="esq fontwb">0</div></div>
                <div class="meia">
                    <div id="maior" class="dir fontwb">100</div></div>
            </div>
        </div>
    </body>
</html>
