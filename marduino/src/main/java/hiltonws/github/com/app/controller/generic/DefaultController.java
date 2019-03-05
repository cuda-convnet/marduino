package hiltonws.github.com.app.controller.generic;

import hiltonws.github.com.app.model.generics.DefaultEntity;
import hiltonws.github.com.app.service.generic.DefaultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

public class DefaultController<T extends DefaultService, E extends DefaultEntity> {

    @Autowired
    private T service;

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Long create(@RequestBody E entidade) {
        return service.create(entidade);
    }

    @RequestMapping
    @ResponseStatus(HttpStatus.OK)
    public Page<T> list(@RequestParam Pageable pageable, @RequestParam E param) {
        return service.list(param, pageable);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void remove(@RequestParam Long id) {
        service.remove(id);
    }
}
