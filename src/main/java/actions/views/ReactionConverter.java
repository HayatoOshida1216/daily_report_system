package actions.views;

import java.util.ArrayList;
import java.util.List;

import models.Reaction;

public class ReactionConverter {

    public static Reaction toModel(ReactionView rv) {
        return new Reaction(
                rv.getId(),
                EmployeeConverter.toModel(rv.getEmployee()),
                ReportConverter.toModel(rv.getReport()),
                Reactions_TypeConverter.toModel(rv.getReactions_Type()));

    }
    public static ReactionView toView(Reaction r) {
        if(r == null) {
            return null;
        }
        return new ReactionView(
                r.getId(),
                EmployeeConverter.toView(r.getEmployee()),
                ReportConverter.toView(r.getReport()),
                Reactions_TypeConverter.toView(r.getReactions_Type()));

    }
    public static List<ReactionView> toViewList(List<Reaction> list){
        List<ReactionView> evs = new ArrayList<>();
        for(Reaction r : list) {
            evs.add(toView(r));
        }
        return evs;
    }

    public static void copyViewToModel(Reaction r, ReactionView rv) {
        r.setId(rv.getId());
        r.setEmployee(EmployeeConverter.toModel(rv.getEmployee()));
        r.setReport(ReportConverter.toModel(rv.getReport()));
        r.setReactions_Type(Reactions_TypeConverter.toModel(rv.getReactions_Type()));

    }
}
