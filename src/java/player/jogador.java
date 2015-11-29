/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package player;

/**
 *
 * @author Isaac Teixeira
 */
public class jogador {
    private int id;
    private String nome;
    private int cont=0;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public jogador(String nome) {
        this.nome = nome;
        this.id = cont;
        this.cont++;
    }
    
    
    
}
