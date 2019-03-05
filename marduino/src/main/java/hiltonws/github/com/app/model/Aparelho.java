package hiltonws.github.com.app.model;

import hiltonws.github.com.app.model.generics.DefaultEntity;
import hiltonws.github.com.security.model.User;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter
@Table(name = "APARELHO")
public class Aparelho extends DefaultEntity implements Serializable {

    @ManyToOne
    @JoinColumn(name = "ID_USER_")
    private User user;

    @Column(name = "ds_aparelho")
    private String descricao;


}
