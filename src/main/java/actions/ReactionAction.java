package actions;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;

import actions.views.EmployeeView;
import actions.views.ReactionView;
import actions.views.Reactions_TypeView;
import actions.views.ReportView;
import constants.AttributeConst;
import constants.ForwardConst;
import services.ReactionService;
public class ReactionAction extends ActionBase{
    private ReactionService service;
   @Override
   public void process() throws ServletException, IOException{
       service = new ReactionService();
       invoke();
       service.close();
   }

   public void index() throws ServletException,IOException{
       EmployeeView loginEmployee = (EmployeeView) getSessionScope(AttributeConst.LOGIN_EMP);
       List<ReactionView> reactions = service.getAllReactions(loginEmployee);
       Reactions_TypeView rt = service.findTwo(1);
       putRequestScope(AttributeConst.REACTIONS,reactions);
       putRequestScope(AttributeConst.REACTIONS_TYPE,rt);
       forward(ForwardConst.FW_REA_INDEX);

   }

   public void reaction() throws ServletException, IOException{
       EmployeeView ev = (EmployeeView) getSessionScope(AttributeConst.LOGIN_EMP);

       ReportView rt = service.findOne(toNumber(getRequestParam(AttributeConst.REP_ID)));
       Reactions_TypeView ft = service.findTwo(1);

       ReactionView rv = new ReactionView(
               null,
               ev,
               rt,
               ft);

       service.create(rv);
       redirect(ForwardConst.ACT_REP, ForwardConst.CMD_INDEX);


   }

}
