package actions;

import java.io.IOException;

import javax.servlet.ServletException;

import actions.views.Reactions_TypeView;
import constants.AttributeConst;
import constants.ForwardConst;
import services.Reactions_TypeService;

public class Reactions_TypeAction extends ActionBase{
   public Reactions_TypeService service;

   @Override
   public void process() throws ServletException, IOException{
       service = new Reactions_TypeService();
       invoke();
       service.close();
   }

   public void entryNew() throws ServletException, IOException{
       putRequestScope(AttributeConst.REACTIONS_TYPE, new Reactions_TypeView());
       forward(ForwardConst.FW_RET_NEW);
   }
   public void create() throws ServletException, IOException{
       Reactions_TypeView rv = new Reactions_TypeView(null, getRequestParam(AttributeConst.RET_NAME));
       service.create(rv);
       redirect(ForwardConst.ACT_REP, ForwardConst.CMD_INDEX);

   }
}
