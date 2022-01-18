package actions.views;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReactionView {
   private Integer id;

   private EmployeeView employee;

   private ReportView report;

   private Reactions_TypeView reactions_Type;
}
