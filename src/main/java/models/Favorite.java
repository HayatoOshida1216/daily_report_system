package models;

import  javax.persistence.Column;
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
@Table(name = JpaConst.TABLE_FAV)
@NamedQueries({
    @NamedQuery(
            name = JpaConst.Q_FAV_GET_ALL_MINE,
            query = JpaConst.Q_FAV_GET_ALL_MINE_DEF),
    @NamedQuery(
            name = JpaConst.Q_FAV_COUNT_ALL_MINE,
            query = JpaConst.Q_FAV_COUNT_ALL_MINE_DEF),
    @NamedQuery(
            name = JpaConst.Q_FAV_COUNT_ALL_REP,
            query = JpaConst.Q_FAV_COUNT_ALL_REP_DEF),
    @NamedQuery(
            name = JpaConst.Q_FAV_GET_ALL_REP,
            query = JpaConst.Q_FAV_GET_ALL_REP_DEF),
    @NamedQuery(
            name = JpaConst.Q_FAV_COUNT_ALL_FAV,
            query = JpaConst.Q_FAV_COUNT_ALL_FAV_DEF)
})

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity

public class Favorite {
  @Id
  @Column(name = JpaConst.FAV_COL_ID)
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  @ManyToOne
  @JoinColumn(name = JpaConst.FAV_COL_EMP, nullable = false)
  private Employee employee;

  @ManyToOne
  @JoinColumn(name = JpaConst.FAV_COL_REP, nullable = false)
  private Report report;
}
