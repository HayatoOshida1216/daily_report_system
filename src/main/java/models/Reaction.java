package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import constants.JpaConst;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Table(name = JpaConst.TABLE_REA)
@NamedQueries({

    @NamedQuery(
            name = JpaConst.Q_REA_GET_ALL_MINE,
            query = JpaConst.Q_REA_GET_ALL_MINE_DEF),
    @NamedQuery(
            name = JpaConst.Q_REA_COUNT_ALL_MINE,
            query = JpaConst.Q_REA_COUNT_ALL_MINE_DEF),
    @NamedQuery(
            name = JpaConst.Q_REA_GET_ALL_REP,
            query = JpaConst.Q_REA_GET_ALL_REP_DEF),
    @NamedQuery(
            name = JpaConst.Q_REA_COUNT_ALL_REP,
            query = JpaConst.Q_REA_COUNT_ALL_REP_DEF),
    @NamedQuery(
            name = JpaConst.Q_REA_COUNT_USER,
            query = JpaConst.Q_REA_COUNT_USER_DEF)

})

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Reaction {
   @Id
   @Column(name = JpaConst.REA_COL_ID)
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Integer id;

   @ManyToOne
   @JoinColumn(name = JpaConst.REA_COL_EMP, nullable = false)
   private Employee employee;

   @ManyToOne
   @JoinColumn(name = JpaConst.REA_COL_REP, nullable = false)
   private Report report;

   @ManyToOne
   @JoinColumn(name = JpaConst.REA_COL_RET, nullable = false)
   private Reactions_Type reactions_Type;
}
