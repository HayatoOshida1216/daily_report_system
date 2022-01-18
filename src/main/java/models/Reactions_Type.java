package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import constants.JpaConst;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Table(name = JpaConst.TABLE_RET)
@NamedQueries({
    @NamedQuery(
            name = JpaConst.Q_RET_GET_ALL_MINE,
            query = JpaConst.Q_RET_GET_ALL_MINE_DEF)
})
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Reactions_Type {
   @Id
   @Column(name = JpaConst.RET_COL_ID)
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Integer id;

   @Column(name = JpaConst.RET_COL_NAME, nullable = false)
   private String name;
}
