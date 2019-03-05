package hiltonws.github.com.app.model;

import hiltonws.github.com.app.model.generics.DefaultEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Getter
@Setter
@Table(name = "EVENTO")
public class Evento extends DefaultEntity implements Serializable {

    @ManyToOne
    @JoinColumn(name = "ID_APARELHO")
    private Aparelho aparelho;
    private String sensor;
    private String valor;
    private String nivel;
    @Column(name = "dt_cadastro")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataCadastro;

}
