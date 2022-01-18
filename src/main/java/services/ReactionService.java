package services;

import java.util.List;

import actions.views.EmployeeConverter;
import actions.views.EmployeeView;
import actions.views.ReactionConverter;
import actions.views.ReactionView;
import actions.views.Reactions_TypeConverter;
import actions.views.Reactions_TypeView;
import actions.views.ReportConverter;
import actions.views.ReportView;
import constants.JpaConst;
import models.Reaction;
import models.Reactions_Type;
import models.Report;
public class ReactionService extends ServiceBase{

   public List<ReactionView> getAllReactions(EmployeeView employee){
       List<Reaction> reactions = em.createNamedQuery(JpaConst.Q_REA_GET_ALL_MINE, Reaction.class)
               .setParameter(JpaConst.JPQL_PARM_EMPLOYEE,EmployeeConverter.toModel(employee))
               .getResultList();
       return ReactionConverter.toViewList(reactions);
   }

   public ReportView findOne(int id) {
       return ReportConverter.toView(findOneInternal(id));
   }
   public Report findOneInternal(int id) {
       return em.find(Report.class, id);
   }

   public Reactions_TypeView findTwo(int id) {
       Reactions_Type e = findTwoInternal(id);
       return Reactions_TypeConverter.toView(e);
   }
   public Reactions_Type findTwoInternal(int id) {
       Reactions_Type e = em.find(Reactions_Type.class, id);

       return e;
   }
   public ReactionView findFinal(int id) {
       Reaction e = findFinalInternal(id);
       return ReactionConverter.toView(e);
   }
   public Reaction findFinalInternal(int id) {
       Reaction e = em.find(Reaction.class, id);

       return e;
   }

   public void create(ReactionView fv) {
       em.getTransaction().begin();
       em.persist(ReactionConverter.toModel(fv));
       em.getTransaction().commit();
   }
   public void destroy(List<ReactionView> re) {
   for(ReactionView r : re) {
        em.getTransaction().begin();
        Reaction rv = findFinalInternal(r.getId());
        em.remove(rv);
        em.getTransaction().commit();
    }
        em.close();
    }
}
