package services;

import java.time.LocalDateTime;
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
import models.validators.ReportValidator;

public class ReportService extends ServiceBase{
   public List<ReportView> getMinePerPage(EmployeeView employee, int page){
       List<Report> reports = em.createNamedQuery(JpaConst.Q_REP_GET_ALL_MINE, Report.class)
               .setParameter(JpaConst.JPQL_PARM_EMPLOYEE, EmployeeConverter.toModel(employee))
               .setFirstResult(JpaConst.ROW_PER_PAGE * (page - 1))
               .setMaxResults(JpaConst.ROW_PER_PAGE)
               .getResultList();
       return ReportConverter.toViewList(reports);
   }

   public long countAllMine(EmployeeView employee) {

       long count = (long) em.createNamedQuery(JpaConst.Q_REP_COUNT_ALL_MINE, Long.class)
               .setParameter(JpaConst.JPQL_PARM_EMPLOYEE, EmployeeConverter.toModel(employee))
               .getSingleResult();

       return count;
   }


   public List<ReportView> getAllPerPage(int page) {

       List<Report> reports = em.createNamedQuery(JpaConst.Q_REP_GET_ALL, Report.class)
               .setFirstResult(JpaConst.ROW_PER_PAGE * (page - 1))
               .setMaxResults(JpaConst.ROW_PER_PAGE)
               .getResultList();
       return ReportConverter.toViewList(reports);
   }
   public long countAll() {
       long reports_count = (long) em.createNamedQuery(JpaConst.Q_REP_COUNT, Long.class)
               .getSingleResult();
       return reports_count;
   }


   public ReportView findOne(int id) {
       return ReportConverter.toView(findOneInternal(id));
   }

   public Reactions_TypeView findTwo(int id) {
       Reactions_Type e = findTwoInternal(id);
       return Reactions_TypeConverter.toView(e);
   }
   public Reactions_Type findTwoInternal(int id) {
       Reactions_Type e = em.find(Reactions_Type.class, id);

       return e;
   }



   public List<String> create(ReportView rv) {
       List<String> errors = ReportValidator.validate(rv);
       if (errors.size() == 0) {
           LocalDateTime ldt = LocalDateTime.now();
           rv.setCreatedAt(ldt);
           rv.setUpdatedAt(ldt);
           createInternal(rv);
       }
       return errors;
   }

   public List<String> update(ReportView rv) {

       List<String> errors = ReportValidator.validate(rv);

       if (errors.size() == 0) {
           LocalDateTime ldt = LocalDateTime.now();
           rv.setUpdatedAt(ldt);
           updateInternal(rv);
       }
       return errors;
   }
   private Report findOneInternal(int id) {
       return em.find(Report.class, id);
   }
   private void createInternal(ReportView rv) {

       em.getTransaction().begin();
       em.persist(ReportConverter.toModel(rv));
       em.getTransaction().commit();

   }

   private void updateInternal(ReportView rv) {

       em.getTransaction().begin();
       Report r = findOneInternal(rv.getId());
       ReportConverter.copyViewToModel(r, rv);
       em.getTransaction().commit();

   }

   public long countAllReactions(ReportView report) {
       long count = (long) em.createNamedQuery(JpaConst.Q_REA_COUNT_ALL_REP,Long.class)
               .setParameter(JpaConst.JPQL_PARM_REPORT, ReportConverter.toModel(report))
               .getSingleResult();
       return count;
   }
   public List<ReactionView> getAllReaction(ReportView report){
       List<Reaction> reactions = em.createNamedQuery(JpaConst.Q_REA_GET_ALL_REP,Reaction.class)
               .setParameter(JpaConst.JPQL_PARM_REPORT,ReportConverter.toModel(report))
               .getResultList();
       return ReactionConverter.toViewList(reactions);
   }
   public long countReactionUser(EmployeeView employee, ReportView report) {
       long count = (long) em.createNamedQuery(JpaConst.Q_REA_COUNT_USER,Long.class)
               .setParameter(JpaConst.JPQL_PARM_EMPLOYEE, EmployeeConverter.toModel(employee))
               .setParameter(JpaConst.JPQL_PARM_REPORT, ReportConverter.toModel(report))
               .getSingleResult();
       return count;
   }



}