package az.edu.bsu.smsproject.repository;

public class SQLqueries {
    public static String GET_PASSWORD_FROM_BDU_USER = "SELECT password FROM bdu_user WHERE email = ?";

    public static String GET_ROLE_ID_FROM_BDU_UDER = "SELECT role_id FROM bdu_user WHERE email = ?";

    public static String GET_ALL_DATA_FROM_JOINED_BDU_USER_AND_STUDENT = "SELECT * FROM bdu_user bu JOIN student s ON bu.user_id = s.user_id";

    public static String GET_ALL_DATA_FROM_JOINED_BDU_USER_AND_TUTOR = "SELECT * FROM bdu_user bu JOIN tutor t ON bu.user_id = t.user_id";

    public static String GET_ROLE_ID_IF_EMAIL_AND_PASSWORD_MATCH = "SELECT role_id FROM bdu_user WHERE email = ? and password = ?";

    public static String GET_ROLE_DATA_BY_ID = "select id, name, default_controller, default_page from role where id=? AND status=1";

    public static String GET_ROLE_ID_BY_ROLE_NAME = "SELECT id FROM role WHERE name = ?";

    public static String GET_STUDENT_INFO_BY_ID = "SELECT * FROM bdu_user bu JOIN student s ON bu.user_id = s.user_id WHERE bu.user_id=?";
//            " select u.user_id, u.name, u.surname, u.email, u.faculty , s.father_name , u.gender , s.profession, s.section , " +
//            " s.group_id , s.education_year,  s.birth_date , s.birth_place, s.education_type " +
//            " from bdu_user u inner join student s on u.user_id = s.user_id  " +
//            " where u.user_id = ? ";

    public static String GET_STUDENT_LIST = "SELECT * FROM bdu_user bu JOIN student s ON bu.user_id = s.user_id";

    public static String GET_SECTION_LIST_BY_YEAR = "SELECT DISTINCT(section) FROM groups WHERE creation_year = ?";

    public static String GET_SOCIAL_STATUS_SET_OF_STUDENT_BY_USER_ID =
                    "select ss.id, ss.name " +
                    "from student s join student_social_status sss on s.user_id=sss.user_id " +
                    "join social_status ss on sss.social_status_id=ss.id " +
                    "where s.user_id = ?";
    public static String GET_THE_NUMBER_OF_ALL_STUDENTS = "SELECT count(*) FROM student";

    public static String UPDATE_STUDENT_IN_STUDENT_TABLE = "UPDATE student SET id_card_num  = ?, id_card_fin_code  = ?, father_name  = ?, birth_date  = ?, " +
            "birth_place  = ?, living_place  = ?, official_home  = ?, parent_num  = ?, graduation_region  = ?, graduation_school  = ?, " +
            "entry_id_num  = ?, entry_score  = ?, education_type  = ?, profession  = ?, section  = ?, group_id  = ?, " +
            "scholarship_status  = ?, entry_year  = ? WHERE user_id = ?";

    public static String INSERT_STUDENT_INTO_BDU_USER_TABLE = "INSERT INTO bdu_user(user_id, role_id, name, surname, email, password, phone_num, faculty, gender, status, enabled) " +
            "values(nextval('user_sequence'), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    public static String INSERT_STUDENT_INTO_STUDENT_TABLE = "insert into student(user_id, id_card_num, id_card_fin_code, father_name, birth_date, birth_place, living_place, official_home, parent_num, " +
            "graduation_region, graduation_school, entry_id_num, entry_score, education_type, profession, section, group_id, entry_year, scholarship_status) " +
            "values( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";

    public static String INSERT_INTO_STUDENT_SOCIAL_STATUS_TABLE = "insert into student_social_status(id, user_id, social_status_id) values(nextval('student_social_status_sequence'), ?, ?)";

    public static String GET_FILTERED_STUDENT_LIST = "SELECT * FROM bdu_user bu JOIN student s ON bu.user_id = s.user_id WHERE LOWER(bu.name) like LOWER (?) ";

    public static String UPDATE_STUDENT_IN_BDU_USER_TABLE = "update bdu_user set name = ?, surname = ?,email = ?,phone_num = ?,faculty = ?,gender = ? where user_id = ?";


    public static String GET_THE_NUMBER_OF_ALL_GROUPS = "SELECT count(*) FROM groups";
    public static String GET_THE_NUMBER_OF_STUDENTS_OF_IDENTICAL_GROUP = "SELECT count(*) FROM student WHERE group_id = ? ";

    public static String GET_THE_NUMBER_OF_STUDENTS_NOT_GROUPED  = "select count(*) " +
            "from bdu_user bu  full outer join student s on s.user_id = bu.user_id " +
            "where s.group_id is null ";

    public static String GET_STUDENTS_NOT_GROUPED = "select *  " +
            "from bdu_user bu  full outer join student s on s.user_id = bu.user_id " +
            "where s.group_id is null ";




}
