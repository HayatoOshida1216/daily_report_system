package services;
import actions.views.Reactions_TypeConverter;
import actions.views.Reactions_TypeView;
public class Reactions_TypeService extends ServiceBase{

    public void create(Reactions_TypeView rv) {
        em.getTransaction().begin();
        em.persist(Reactions_TypeConverter.toModel(rv));
        em.getTransaction().commit();
    }


 }

