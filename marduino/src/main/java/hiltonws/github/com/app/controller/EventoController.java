package hiltonws.github.com.app.controller;

import hiltonws.github.com.app.controller.generic.DefaultController;
import hiltonws.github.com.app.model.Evento;
import hiltonws.github.com.app.service.EventoService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("evento")
public class EventoController extends DefaultController<EventoService, Evento> {

}
