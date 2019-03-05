package hiltonws.github.com.app.service.generic;

import hiltonws.github.com.app.model.generics.DefaultEntity;

public interface IServiceListener<T extends DefaultEntity> {

    void onCreate();

    void onList();

    void onRemove();
}