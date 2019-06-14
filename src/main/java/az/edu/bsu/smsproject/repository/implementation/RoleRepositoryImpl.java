package az.edu.bsu.smsproject.repository.implementation;

import az.edu.bsu.smsproject.domain.Enums.Status;
import az.edu.bsu.smsproject.domain.Role;
import az.edu.bsu.smsproject.repository.RoleRepository;
import az.edu.bsu.smsproject.repository.SQLqueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RoleRepositoryImpl implements RoleRepository {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public RoleRepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Role getRoleById(long id) {

        return jdbcTemplate.query( SQLqueries.GET_ROLE_DATA_BY_ID,
                ((resultSet, i) -> {
                    String name = resultSet.getString("name");
                    String defaultController = resultSet.getString("default_controller");
                    String defaultPage = resultSet.getString("default_page");
                    return new Role( id, name, Status.ACTIVE, defaultController, defaultPage );
                }),
                id
                ).get(0);

    }

    @Override
    public int getRoleIdByName(String name) {

        return jdbcTemplate.query( SQLqueries.GET_ROLE_ID_BY_ROLE_NAME,
                ((resultSet, i) -> resultSet.getInt("id")),
                name).get(0);

    }
}
