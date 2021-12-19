package actions.views;

import java.util.ArrayList;
import java.util.List;

import models.Favorite;

public class FavoriteConverter {
    public static Favorite toModel(FavoriteView fv) {
        return new Favorite(
                fv.getId(),
                EmployeeConverter.toModel(fv.getEmployee()),
                ReportConverter.toModel(fv.getReport()));
    }

    public static FavoriteView toView(Favorite f) {
        if(f == null) {
            return null;
        }
        return new FavoriteView(
                f.getId(),
                EmployeeConverter.toView(f.getEmployee()),
                ReportConverter.toView(f.getReport()));
    }

    public static List<FavoriteView> toViewList(List<Favorite> list){
        List<FavoriteView> evs = new ArrayList<>();
        for(Favorite f :list) {
            evs.add(toView(f));
        }
        return evs;
    }

    public static void copyViewToModel(Favorite f, FavoriteView fv) {
        f.setId(fv.getId());
        f.setEmployee(EmployeeConverter.toModel(fv.getEmployee()));
        f.setReport(ReportConverter.toModel(fv.getReport()));
    }

}
