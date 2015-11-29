/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import fabrica.Fabrica;
import java.io.IOException;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import player.Jogadores;

/**
 *
 * @author Isaac Teixeira
 */
@WebServlet(name = "Servletpalp", urlPatterns = {"/Servletpalp"})
public class Servletpalp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void criarJogadores(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LOG.info("PASSOU");

        int acont = Jogadores.getCont();
        int contf = 0;
        if (contf > acont) {
            contf = 0;
        }
        String nome1 = "";
        nome1 = Jogadores.getNomeJogador(contf);
        contf++;
        HttpSession sessao = request.getSession(true);
        sessao.setAttribute("jogador1", nome1);
        RequestDispatcher rd = request.getRequestDispatcher("/palpite.jsp");
        rd.forward(request, response);
        

        //int numJogadores = Integer.parseInt(jogadores);
        //if (numJogadores > 10 || numJogadores < 2){
        //    criarJogadores(request, response);
        // }
        /*
         try {
         int numJogadores = Integer.parseInt(jogadores);
         new player.Jogadores().setNumJogadores(numJogadores);

         RequestDispatcher rd = request.getRequestDispatcher("/palpite.jsp");
         rd.forward(request, response);
         } catch (Exception ex) {
         //(numJogadores > 10 || numJogadores < 2) = request.getRequestDispatcher("/qntplayer.jsp");
         RequestDispatcher rd = request.getRequestDispatcher("/qntplayer.jsp");
         rd.forward(request, response);
         }*/
    }
    private static final Logger LOG = Logger.getLogger(Servletpalp.class.getName());

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        criarJogadores(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        criarJogadores(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
