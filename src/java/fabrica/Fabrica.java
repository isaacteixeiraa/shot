package fabrica;

import java.util.Date;
import player.Jogadores;

/**
 *
 * @author Isaac Teixeira
 */
public class Fabrica {

    private static Jogadores jogador;

    public Jogadores getJogador() {

        if (jogador == null) {
            jogador = new Jogadores();

        }

        return jogador;
    }

}
