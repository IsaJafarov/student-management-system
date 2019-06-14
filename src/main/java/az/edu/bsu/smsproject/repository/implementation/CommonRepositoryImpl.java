package az.edu.bsu.smsproject.repository.implementation;

import az.edu.bsu.smsproject.repository.CommonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import java.util.*;

@Repository
public class CommonRepositoryImpl implements CommonRepository {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CommonRepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public Set<String> getFacultySet(int creationYear) {
        String sql = "SELECT distinct(faculty) FROM groups WHERE creation_year = ?";

        List<String> facultyList = jdbcTemplate.query(sql,
                ((resultSet, i) -> resultSet.getString(1)),
                creationYear);

        return new HashSet<>(facultyList);
    }

    public Set<String> getProfessionSet(int creationYear, String faculty) {
        String sql = "SELECT distinct(profession) FROM groups WHERE creation_year = ? and faculty=?";

        List<String> professionList = jdbcTemplate.query(sql,
                ((resultSet, i) -> resultSet.getString(1)),
                creationYear, faculty);

        return new HashSet<>(professionList);
    }

    public Set<String> getSectionSet(int creationYear, String faculty, String profession) {
        String sql = "SELECT distinct(section) FROM groups WHERE creation_year = ? and faculty=? and profession=?";

        List<String> sectionList = jdbcTemplate.query(sql,
                ((resultSet, i) -> resultSet.getString(1)),
                creationYear, faculty, profession);

        return new HashSet<>(sectionList);
    }



    @Override
    public String getDefaultControllerNameByEmail(String email) {
        String sql =    "SELECT r.default_controller " +
                        "FROM bdu_user bu JOIN role r ON bu.role_id = r.id " +
                        "WHERE bu.email = ?";

        return jdbcTemplate.query(sql, (resultSet, i) -> resultSet.getString("default_controller"), email).get(0);

    }

    @Override
    public String getDefaultControllerNameByRoleName(String roleName) {
        String sql =    "SELECT default_controller " +
                        "FROM role " +
                        "WHERE name = ?";
        return jdbcTemplate.query(sql, (resultSet, i) -> resultSet.getString("default_controller"), roleName).get(0);
    }
}
