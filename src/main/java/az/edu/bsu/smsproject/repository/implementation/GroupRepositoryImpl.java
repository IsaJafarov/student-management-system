package az.edu.bsu.smsproject.repository.implementation;

import az.edu.bsu.smsproject.domain.Enums.Status;
import az.edu.bsu.smsproject.domain.Group;
import az.edu.bsu.smsproject.domain.Student;
import az.edu.bsu.smsproject.repository.GroupRepository;
import az.edu.bsu.smsproject.repository.SQLqueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.PreparedStatementCreatorFactory;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.*;

@Repository
public class GroupRepositoryImpl implements GroupRepository {

    private final JdbcTemplate jdbcTemplate;
    @Autowired
    public GroupRepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public long createGroup(String profession, String section, String eduType, int year, int studentCount) {

        String sql = " INSERT INTO public.groups(" +
                "group_id, group_name, creation_year, faculty, profession, section, student_number, education_type)" +
                "VALUES (nextval('group_sequence'), null , ? , 'Physics', ? , ? , ? , ?) " +
                "returning group_id ";


        PreparedStatementCreatorFactory factory = new PreparedStatementCreatorFactory(sql, Types.INTEGER, Types.VARCHAR, Types.VARCHAR, Types.INTEGER, Types.VARCHAR);
        factory.setReturnGeneratedKeys(true);
        PreparedStatementCreator creator = factory.newPreparedStatementCreator(new Object[]{
                year,
                profession,
                section,
                studentCount,
                eduType,

        });

        KeyHolder keyHolder = new GeneratedKeyHolder();

        jdbcTemplate.update(creator, keyHolder);
        long groupId = (long) keyHolder.getKeyList().get(0).get("group_id");
        return groupId;
    }

    @Override
    public Group getGroupById(long groupId) {
        return null;
    }

    @Override
    public List<Group> getAllGroupList() {
        String sql = "select group_id, group_name, creation_year, faculty, profession, section from groups";
        return jdbcTemplate.query(sql, groupMapper);
    }

    @Override
    public List<Group> getFilteredGroupList(int begin, int end, String name, String year, String faculty, String profession, String section) {
        String sql = "SELECT * FROM( "+
                "SELECT row_number() over(order by group_id) as rownum, * FROM groups " +
                    "WHERE lower(group_name) LIKE lower(?) AND " +
                    "lower(to_char(creation_year, '9999')) LIKE lower(?) AND " +
                    "lower(faculty) LIKE lower(?) AND " +
                    "lower(profession) LIKE lower(?) AND " +
                    "lower(section) LIKE lower(?) "+
                    "ORDER BY group_id"+
                ") as sub "+
                "where sub.rownum between ? and ?";

        return jdbcTemplate.query(sql, groupMapper,
                "%"+name+"%",
                "%"+year+"%",
                "%"+faculty+"%",
                "%"+profession+"%",
                "%"+section+"%",
                begin,
                end);
    }

    @Override
    public int getNumberOfAllGroups() {
        String sql = "SELECT count(*) FROM groups";
        return jdbcTemplate.query(sql,
                ((resultSet, i) -> resultSet.getInt(1))).get(0);
    }

    @Override
    public int getNumberOfFilteredGroups(String name, String year, String faculty, String profession, String section) {
        String sql = "SELECT count(*) FROM groups " +
                "WHERE lower(group_name) LIKE lower(?) AND " +
                "lower(to_char(creation_year, '9999')) LIKE lower(?) AND " +
                "lower(faculty) LIKE lower(?) AND " +
                "lower(profession) LIKE lower(?) AND " +
                "lower(section) LIKE lower(?) ";

        return jdbcTemplate.query(sql,
                (resultSet, i) -> (resultSet.getInt(1)),
                "%"+name+"%",
                "%"+year+"%",
                "%"+faculty+"%",
                "%"+profession+"%",
                "%"+section+"%").get(0);
    }

    @Override
    public int getNumberOfFilteredGroups(String searchParam) {
        String myQuery = " SELECT count(*) FROM groups  WHERE LOWER(group_name) like LOWER (?)";
        return jdbcTemplate.query(myQuery, (resultSet , i) -> resultSet.getInt(1), "%"+searchParam+"%").get(0);
    }

    @Override
    public List<Group> getFilteredGroupList(String searchParam, int startRow, int endRow) {

        String myquery = "select * from(" +
                "select row_number() over(order by group_id) as rownum, * " +
                "from groups " +
                "where lower(group_name) like lower(?) " +
                ") as sub  " +
                "where sub.rownum between ? and ? ";

        List<Group> groupsList = jdbcTemplate.query(myquery, groupMapper , "%"+searchParam+"%" , startRow , endRow);

        System.out.println(groupsList);
        return groupsList;
    }

    @Override
    public Group updateGroup(Group group) {
        return null;
    }

    @Override
    public boolean deleteGroup(long groupId) {
        return false;
    }

    @Override
    public List<Group> groupStudents(String profession, String section, String eduType, int year, int groupCnt) {

        String sql = " select * " +
                "from student s join bdu_user bu on s.user_id = bu.user_id " +
                "where s.profession = ? and s.section = ? and s.education_type = ?  and group_id is null ";

        List<Student> studentList = jdbcTemplate.query(sql,
                new StudentMapper(),
                profession,
                section,
                eduType);


        Student student = new Student();
        List<Student> higherScoredStudentList = new ArrayList<>();
        List<Student> middleScoredStudentList = new ArrayList<>();
        List<Student> lowerScoredStudentList = new ArrayList<>();
        List<Group> newGroups = new ArrayList<>();
        Group[] group = new Group[groupCnt];

        Random random = new Random();
        int counter = 0;
        int groupCount = groupCnt;
        int groupCapacity;
        int totalStudentCount = studentList.size();
        long groupId;
        int currentMemberCount = 0;
        int i = 0;
        int index = 0;


        Collections.sort(studentList, new Student.SortByEntryScore());


        for (Student student1 : studentList) {
            System.out.println(student1.getEntryScore());
        }

        System.out.println("totalStudentCount = " + totalStudentCount);

        int listsize;
        int listsize2;
        if(totalStudentCount % 3 == 0){

            listsize = totalStudentCount / 3;

            while(higherScoredStudentList.size() != listsize){
                higherScoredStudentList.add(studentList.get(counter));
                counter++;
            }


            while(middleScoredStudentList.size() != listsize){
                middleScoredStudentList.add(studentList.get(counter));
                counter++;
            }

            while (lowerScoredStudentList.size() != listsize){
                lowerScoredStudentList.add(studentList.get(counter));
                counter++;
            }

        } else {


            listsize = totalStudentCount / 3;

            while(higherScoredStudentList.size() != listsize){
                higherScoredStudentList.add(studentList.get(counter));
                counter++;
            }

            while(middleScoredStudentList.size() != listsize){
                middleScoredStudentList.add(studentList.get(counter));
                counter++;
            }


            listsize2 = studentList.size() - (higherScoredStudentList.size() + middleScoredStudentList.size());
            while(lowerScoredStudentList.size() != listsize2) {
                lowerScoredStudentList.add(studentList.get(counter));
                counter++;
            }



            System.out.println("studentList size = " + studentList.size());
            System.out.println("High Scored Students' id ");
            for (Student student1 : higherScoredStudentList) {
                System.out.println(student1.getId());
            }


            System.out.println("Middle Scored Students' id ");
            for (Student student1 : middleScoredStudentList) {
                System.out.println(student1.getId());
            }


            System.out.println("Low Scored Students' id ");
            for (Student student1 : lowerScoredStudentList) {
                System.out.println(student1.getId());
            }

            System.out.println("Size of higherScoredStudentList =  " + higherScoredStudentList.size());
            System.out.println("Size of middleScoredStudentList =  " + middleScoredStudentList.size());
            System.out.println("Size of lowerScoredStudentList =  " + lowerScoredStudentList.size());


        }

        if (totalStudentCount % groupCount == 0) {

            groupCapacity = totalStudentCount / groupCount;

            for (int j = 0; j < groupCount; j++) {

                groupId = createGroup(profession, section, eduType, year, groupCapacity);
                System.out.println("group id = " + groupId);
                group[j] = new Group();
                group[j].setId(groupId);
                group[j].setProfession(profession);
                group[j].setSection(section);
                group[j].setEduType(eduType);
                group[j].setCreationYear(year);


                currentMemberCount = 0;

                while (currentMemberCount < groupCapacity) {

                    if (currentMemberCount == groupCapacity)
                        break;

                    if (!higherScoredStudentList.isEmpty()) {
                        ++currentMemberCount;
                        i++;
                        index = random.nextInt(higherScoredStudentList.size());
                        updateStudentGroupID(higherScoredStudentList.get(index).getId(), groupId);
                        System.out.println(i + ")" + higherScoredStudentList.get(index).getId() + " " + groupId);
                        higherScoredStudentList.remove(index);
                    }

                    if (currentMemberCount == groupCapacity)
                        break;


                    if (!middleScoredStudentList.isEmpty()) {
                        ++currentMemberCount;
                        i++;
                        index = random.nextInt(middleScoredStudentList.size());
                        updateStudentGroupID(middleScoredStudentList.get(index).getId(), groupId);
                        System.out.println(i + ")" + middleScoredStudentList.get(index).getId() + " " + groupId);
                        middleScoredStudentList.remove(index);
                    }

                    if (currentMemberCount == groupCapacity)
                        break;


                    if (!lowerScoredStudentList.isEmpty()) {
                        ++currentMemberCount;
                        i++;
                        index = random.nextInt(lowerScoredStudentList.size());
                        updateStudentGroupID(lowerScoredStudentList.get(index).getId(), groupId);
                        System.out.println(i + ")" + lowerScoredStudentList.get(index).getId() + " " + groupId);
                        lowerScoredStudentList.remove(index);

                    }
                }
                group[j].setStudentNumber(currentMemberCount);
                newGroups.add(group[j]);
            }

            return newGroups;

        } else {

            groupCapacity = totalStudentCount / groupCnt;


            for (int j = 0; j < groupCount; j++) {

                if(higherScoredStudentList.isEmpty() && middleScoredStudentList.isEmpty() && lowerScoredStudentList.isEmpty()){
                    System.out.println(" if scope  in for loop ");
                    break;
                }
                groupId = createGroup(profession, section, eduType, year, groupCapacity);
                System.out.println("group id = " + groupId);
                group[j] = new Group();
                group[j].setId(groupId);
                group[j].setProfession(profession);
                group[j].setSection(section);
                group[j].setEduType(eduType);
                group[j].setCreationYear(year);


                currentMemberCount = 0;


                while (index >= 0) {

                    if(higherScoredStudentList.isEmpty() && middleScoredStudentList.isEmpty() && lowerScoredStudentList.isEmpty()){
                        System.out.println("first if scope in while loop ");
                        break;
                    }

                    if (currentMemberCount > groupCapacity) {
                        System.out.println("if scope before  !higherScoredStudentList.isEmpty() ");
                        break;
                    }


                    if (!higherScoredStudentList.isEmpty()) {
                        ++currentMemberCount;
                        i++;
                        index = random.nextInt(higherScoredStudentList.size());
                        updateStudentGroupID(higherScoredStudentList.get(index).getId(), groupId);
                        System.out.println( i + ")" + higherScoredStudentList.get(index).getId() + " " + groupId);
                        higherScoredStudentList.remove(index);
                    }


                    if (currentMemberCount > groupCapacity) {
                        System.out.println("if scope before  !middleScoredStudentList.isEmpty() ");
                        break;
                    }

                    if (!middleScoredStudentList.isEmpty()) {
                        ++currentMemberCount;
                        i++;
                        index = random.nextInt(middleScoredStudentList.size());
                        updateStudentGroupID(middleScoredStudentList.get(index).getId(), groupId);
                        System.out.println(i + ")" + middleScoredStudentList.get(index).getId() + " " + groupId);
                        middleScoredStudentList.remove(index);
                    }



                    if (currentMemberCount > groupCapacity) {
                        System.out.println("if scope before  !lowerScoredStudentList.isEmpty() ");
                        break;
                    }

                    if (!lowerScoredStudentList.isEmpty()) {
                        ++currentMemberCount;
                        i++;
                        index = random.nextInt(lowerScoredStudentList.size());
                        updateStudentGroupID(lowerScoredStudentList.get(index).getId(), groupId);
                        System.out.println(i + ")" + lowerScoredStudentList.get(index).getId() + " " + groupId);
                        lowerScoredStudentList.remove(index);
                    }

                    if(higherScoredStudentList.isEmpty() && middleScoredStudentList.isEmpty() && lowerScoredStudentList.isEmpty()){
                        System.out.println("last if scope ");
                        break;
                    }

                }
                group[j].setStudentNumber(currentMemberCount);
                newGroups.add(group[j]);
            }
            return newGroups;
        }

    }

    private int updateStudentGroupID(long studentId, long groupId) {
        String sql = "UPDATE student " +
                "SET group_id = ? " +
                "WHERE user_id = ? ";

        return jdbcTemplate.update(sql,
                groupId,
                studentId
        );

    }

    private RowMapper<Group> groupMapper = (resultSet, i) -> {
        long groupId = resultSet.getLong("group_id");
        String groupName = resultSet.getString("group_name");
        int creationYear = resultSet.getInt("creation_year");
        String faculty = resultSet.getString("faculty");
        String profession = resultSet.getString("profession");
        String section = resultSet.getString("section");
        String eduType = resultSet.getString("education_type");
        int studentNumber = resultSet.getInt("student_number");
        return new Group(groupId, groupName, Status.ACTIVE, creationYear, faculty, profession, section, eduType, studentNumber);
    };

    private class StudentMapper implements RowMapper<Student> {
        @Override
        public Student mapRow(ResultSet resultSet, int i) throws SQLException {
            Student student = new Student();

            student.setId(resultSet.getLong("user_id"));
            student.setSurname(resultSet.getString("surname"));
            student.setName(resultSet.getString("name"));
            student.setEmail(resultSet.getString("email"));
            student.setRoleId(resultSet.getInt("role_id"));
            student.setPassword(resultSet.getString("password"));
            student.setPhoneNumber(resultSet.getString("phone_num"));
            student.setFaculty(resultSet.getString("faculty"));
            student.setGender(resultSet.getString("gender").charAt(0));
            student.setIdCardNumber(resultSet.getString("id_card_num"));
            student.setIdCardFinCode(resultSet.getString("id_card_fin_code"));
            student.setFatherName(resultSet.getString("father_name")); //
            student.setBirthDate(resultSet.getDate("birth_date").toLocalDate());
            student.setBirthPlace(resultSet.getString("birth_place"));
            student.setLivingPlace(resultSet.getString("living_place"));
            student.setOfficialHome(resultSet.getString("official_home"));
            student.setSocialStatusSet(getSocialStatusSetById(resultSet.getLong("user_id")));
            student.setParentPhoneNumber(resultSet.getString("parent_num"));
            student.setGraduatedRegion(resultSet.getString("graduation_region"));
            student.setEntryIdNumber(resultSet.getInt("entry_id_num"));
            student.setEntryScore(resultSet.getInt("entry_score"));
            student.setEducationType(resultSet.getString("education_type"));
            student.setProfession(resultSet.getString("profession"));
            student.setSection(resultSet.getString("section"));
            student.setGroupId(resultSet.getInt("group_id"));
            student.setScholarshipStatus(resultSet.getInt("scholarship_status"));
            student.setEntryYear(resultSet.getInt("entry_year"));
            student.setGraduatedSchool(resultSet.getString("graduation_school"));
            student.setEnabled( resultSet.getBoolean("enabled") );
            student.setStatus( Status.valueOf(resultSet.getString("status")) );

            return student;
        }
    }

    private Set<Integer> getSocialStatusSetById(long userId ){
        List<Integer> socialStatusList = jdbcTemplate.query( SQLqueries.GET_SOCIAL_STATUS_SET_OF_STUDENT_BY_USER_ID,
                ((resultSet, i) -> resultSet.getInt(1)),
                userId);
        return new HashSet<>(socialStatusList);
    }


}
