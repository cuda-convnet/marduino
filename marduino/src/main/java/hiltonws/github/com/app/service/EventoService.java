package hiltonws.github.com.app.service;

import hiltonws.github.com.app.model.Evento;
import hiltonws.github.com.app.repository.EventoRepository;
import hiltonws.github.com.app.service.generic.DefaultService;
import hiltonws.github.com.security.Roles;
import org.springframework.stereotype.Service;

import javax.annotation.security.RolesAllowed;

@Service
public class EventoService extends DefaultService<Evento, EventoRepository> {

    @Override
    @RolesAllowed({Roles.CLIENT_CONFIG_WRITE, Roles.HARDWARE_WRITE})
    public void onCreate() {
    }

    @Override
    @RolesAllowed({Roles.CLIENT_CONFIG_READ, Roles.HARDWARE_READ, Roles.CLIENT_READ})
    public void onList() {
    }

    @Override
    @RolesAllowed(Roles.CLIENT_CONFIG_WRITE)
    public void onRemove() {
    }
}
