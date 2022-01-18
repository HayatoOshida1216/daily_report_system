package actions.views;

import java.util.ArrayList;
import java.util.List;

import models.Reactions_Type;

public class Reactions_TypeConverter {

   public static Reactions_Type toModel(Reactions_TypeView rv) {
       return new Reactions_Type(
               rv.getId(),
               rv.getName());
   }
   public static Reactions_TypeView toView(Reactions_Type r) {
       if(r == null) {
           return null;
       }
       return new Reactions_TypeView(
               r.getId(),
               r.getName());
   }

   public static List<Reactions_TypeView> toViewList(List<Reactions_Type> list){
       List<Reactions_TypeView> evs = new ArrayList<>();

       for(Reactions_Type r :list) {
           evs.add(toView(r));
       }
       return evs;
   }
   public static void copyViewToModel(Reactions_Type r, Reactions_TypeView rv) {
       r.setId(rv.getId());
       r.setName(rv.getName());
   }
}
