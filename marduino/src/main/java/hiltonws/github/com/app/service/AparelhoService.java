package hiltonws.github.com.app.service;

import hiltonws.github.com.app.model.Aparelho;
import hiltonws.github.com.app.repository.AparelhoRepository;
import hiltonws.github.com.app.service.generic.DefaultService;
import hiltonws.github.com.security.Roles;
import org.springframework.stereotype.Service;

import javax.annotation.security.RolesAllowed;

@Service
public class AparelhoService extends DefaultService<Aparelho, AparelhoRepository> {


    @Override
    @RolesAllowed(Roles.CLIENT_CONFIG_WRITE)
    public void onCreate() {
    }

    @Override
    @RolesAllowed(Roles.CLIENT_CONFIG_READ)
    public void onList() {
    }

    @Override
    @RolesAllowed(Roles.CLIENT_CONFIG_WRITE)
    public void onRemove() {
    }
}
