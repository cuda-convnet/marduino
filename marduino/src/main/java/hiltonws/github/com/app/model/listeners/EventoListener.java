package hiltonws.github.com.app.model.listeners;


import hiltonws.github.com.app.model.Evento;

import javax.persistence.PrePersist;
import java.util.Date;

public class EventoListener {

    @PrePersist
    public void prePersist(Evento evento){
        evento.setDataCadastro(new Date());
    }
}
