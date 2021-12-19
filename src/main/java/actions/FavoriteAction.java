package actions;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;

import actions.views.EmployeeView;
import actions.views.FavoriteView;
import actions.views.ReportView;
import constants.AttributeConst;
import constants.ForwardConst;
import services.FavoriteService;
public class FavoriteAction extends ActionBase{
    private FavoriteService service;

    @Override
    public void process() throws ServletException, IOException {

        service = new FavoriteService();

        invoke();
        service.close();
    }

    public void index() throws ServletException, IOException{
       EmployeeView loginEmployee = (EmployeeView) getSessionScope(AttributeConst.LOGIN_EMP);

       List<FavoriteView> reports = service.getAllFavorite(loginEmployee);
        putRequestScope(AttributeConst.FAVORITE, reports);
        forward(ForwardConst.FW_FAV_INDEX);

    }


    public void favorite() throws ServletException, IOException{
        EmployeeView ev = (EmployeeView) getSessionScope(AttributeConst.LOGIN_EMP);
        ReportView rv = service.findOne(toNumber(getRequestParam(AttributeConst.REP_ID)));
        FavoriteView fv = new FavoriteView(
                null,
                ev,
                rv);
         service.create(fv);
         redirect(ForwardConst.ACT_REP, ForwardConst.CMD_INDEX);

    }
}
