package services;

import java.util.List;

import actions.views.EmployeeConverter;
import actions.views.EmployeeView;
import actions.views.FavoriteConverter;
import actions.views.FavoriteView;
import actions.views.ReportConverter;
import actions.views.ReportView;
import constants.JpaConst;
import models.Favorite;
import models.Report;
public class FavoriteService extends ServiceBase{


public List<FavoriteView> getAllFavorite(EmployeeView employee){
    List<Favorite> favorites = em.createNamedQuery(JpaConst.Q_FAV_GET_ALL_MINE,Favorite.class)
            .setParameter(JpaConst.JPQL_PARM_EMPLOYEE,EmployeeConverter.toModel(employee))
            .getResultList();
    return FavoriteConverter.toViewList(favorites);
}


public ReportView findOne(int id) {
    return ReportConverter.toView(findOneInternal(id));
}

public Report findOneInternal(int id) {
    return em.find(Report.class, id);
}

    public void create(FavoriteView fv) {
        em.getTransaction().begin();
        em.persist(FavoriteConverter.toModel(fv));
        em.getTransaction().commit();
    }


}
