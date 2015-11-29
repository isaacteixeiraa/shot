/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package player;

import java.util.ArrayList;

/**
 *
 * @author Isaac Teixeira
 */
public class Jogadores {

    public static ArrayList<jogador> jgdr = new ArrayList<jogador>();
    public static int cont = 0;

    public static void addjog(String nome) {
        jogador j = new jogador(nome);
        jgdr.add(j);
        cont++;
    }

    public static String getNomeJogador(int id) {

        return jgdr.get(id).getNome();
    }

    public static int getCont() {
        return cont;
    }

}
