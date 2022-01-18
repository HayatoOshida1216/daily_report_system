package constants;

public interface JpaConst {

    String PERSISTENCE_UNIT_NAME = "daily_report_system";

    int ROW_PER_PAGE = 15;

    String TABLE_EMP = "employees";

    String EMP_COL_ID = "id";
    String EMP_COL_CODE = "code";
    String EMP_COL_NAME = "name";
    String EMP_COL_PASS = "password";
    String EMP_COL_ADMIN_FLAG = "admin_flag";
    String EMP_COL_CREATED_AT = "created_at";
    String EMP_COL_UPDATED_AT = "updated_at";
    String EMP_COL_DELETE_FLAG = "delete_flag";

    int ROLE_ADMIN = 1;
    int ROLE_GENERAL = 0;
    int EMP_DEL_TRUE = 1;
    int EMP_DEL_FALSE = 0;


    String TABLE_REP = "reports";

    String REP_COL_ID = "id";
    String REP_COL_EMP = "employee_id";
    String REP_COL_REP_DATE = "report_date";
    String REP_COL_TITLE = "title";
    String REP_COL_CONTENT = "content";
    String REP_COL_CREATED_AT = "created_at";
    String REP_COL_UPDATED_AT = "updated_at";

    String TABLE_RET = "reactions_types";
    String RET_COL_ID = "id";
    String RET_COL_NAME = "name";

    String TABLE_REA = "reactions";
    String REA_COL_ID = "id";
    String REA_COL_EMP = "employee_id";
    String REA_COL_REP = "report_id";
    String REA_COL_RET = "reaction_id";

    String ENTITY_EMP = "employee";
    String ENTITY_REP = "report";
    String ENTITY_REA = "reaction";
    String ENTITY_RET = "reactions_Type";

    String JPQL_PARM_CODE = "code";
    String JPQL_PARM_PASSWORD = "password";
    String JPQL_PARM_EMPLOYEE = "employee";
    String JPQL_PARM_REPORT = "report";
    String JPQL_PARM_REACTION = "reaction";
    String JPQL_PARM_REACTIONS_TYPE = "reactions_Type";

    String Q_EMP_GET_ALL = ENTITY_EMP + ".getAll";
    String Q_EMP_GET_ALL_DEF = "SELECT e FROM Employee AS e ORDER BY e.id DESC";

    String Q_EMP_COUNT = ENTITY_EMP + ".count";
    String Q_EMP_COUNT_DEF = "SELECT COUNT(e) FROM Employee AS e";

    String Q_EMP_GET_BY_CODE_AND_PASS = ENTITY_EMP + ".getByCodeAndPass";
    String Q_EMP_GET_BY_CODE_AND_PASS_DEF = "SELECT e FROM Employee AS e WHERE e.deleteFlag = 0 AND e.code = :" + JPQL_PARM_CODE + " AND e.password = :" + JPQL_PARM_PASSWORD;

    String Q_EMP_COUNT_RESISTERED_BY_CODE = ENTITY_EMP + ".countRegisteredByCode";
    String Q_EMP_COUNT_RESISTERED_BY_CODE_DEF = "SELECT COUNT(e) FROM Employee AS e WHERE e.code = :" + JPQL_PARM_CODE;

    String Q_REP_GET_ALL = ENTITY_REP + ".getAll";
    String Q_REP_GET_ALL_DEF = "SELECT r FROM Report AS r ORDER BY r.id DESC";

    String Q_REP_COUNT = ENTITY_REP + ".count";
    String Q_REP_COUNT_DEF = "SELECT COUNT(r) FROM Report AS r";

    String Q_REP_GET_ALL_MINE = ENTITY_REP + ".getAllMine";
    String Q_REP_GET_ALL_MINE_DEF = "SELECT r FROM Report AS r WHERE r.employee = :" + JPQL_PARM_EMPLOYEE + " ORDER BY r.id DESC";

    String Q_REP_COUNT_ALL_MINE = ENTITY_REP + ".countAllMine";
    String Q_REP_COUNT_ALL_MINE_DEF = "SELECT COUNT(r) FROM Report AS r WHERE r.employee = :" + JPQL_PARM_EMPLOYEE;

    String Q_RET_GET_ALL_MINE = ENTITY_RET + ".getAllMine";
    String Q_RET_GET_ALL_MINE_DEF = "SELECT t FROM Reactions_Type AS t ORDER BY t.id DESC";

    String Q_REA_GET_ALL_MINE = ENTITY_REA + ".getAllMine";
    String Q_REA_GET_ALL_MINE_DEF = "SELECT f FROM Reaction AS f WHERE f.employee = :" + JPQL_PARM_EMPLOYEE + " ORDER BY f.id DESC";

    String Q_REA_COUNT_ALL_MINE = ENTITY_REA + ".countAllMine";
    String Q_REA_COUNT_ALL_MINE_DEF = "SELECT COUNT(f) FROM Reaction as f WHERE f.employee = :" + JPQL_PARM_EMPLOYEE;

    String Q_REA_GET_ALL_REP = ENTITY_REA + ".getAllReport";
    String Q_REA_GET_ALL_REP_DEF = "SELECT f FROM Reaction AS f WHERE f.report = :" + JPQL_PARM_REPORT + " ORDER BY f.id DESC";
    String Q_REA_COUNT_ALL_REP = ENTITY_REA + ".countAllReport";
    String Q_REA_COUNT_ALL_REP_DEF = "SELECT COUNT(f) FROM Reaction as f WHERE f.report = :" + JPQL_PARM_REPORT;

    String Q_REA_COUNT_USER = ENTITY_REA + ".countUser";
    String Q_REA_COUNT_USER_DEF = "SELECT COUNT(f) FROM Reaction as f WHERE f.employee = :" + JPQL_PARM_EMPLOYEE + " AND f.report = :" + JPQL_PARM_REPORT;




}