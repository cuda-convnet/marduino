package hiltonws.github.com.app.model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Evento.class)
public abstract class Evento_ extends hiltonws.github.com.app.model.generics.DefaultEntity_ {

	public static volatile SingularAttribute<Evento, Aparelho> aparelho;
	public static volatile SingularAttribute<Evento, String> valor;
	public static volatile SingularAttribute<Evento, String> sensor;
	public static volatile SingularAttribute<Evento, String> nivel;
	public static volatile SingularAttribute<Evento, Date> dataCadastro;

}

