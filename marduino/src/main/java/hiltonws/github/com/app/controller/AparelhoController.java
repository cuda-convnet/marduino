package hiltonws.github.com.app.controller;

import hiltonws.github.com.app.controller.generic.DefaultController;
import hiltonws.github.com.app.model.Aparelho;
import hiltonws.github.com.app.service.AparelhoService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("aparelho")
public class AparelhoController extends DefaultController<AparelhoService, Aparelho> {

}
