package az.edu.bsu.smsproject.repository.implementation;

import az.edu.bsu.smsproject.domain.Enums.Status;
import az.edu.bsu.smsproject.domain.User;
import az.edu.bsu.smsproject.repository.UserDetailsRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

@Repository
public class UserDetailsRepositoryImpl implements UserDetailsRepository {

    private final JdbcTemplate jdbcTemplate;
    private RowMapper<User> userRowMapper = (resultSet, i) -> {
        long userId = resultSet.getLong("user_id");
        String name = resultSet.getString("name");
        String surname = resultSet.getString("surname");
        long roleId = resultSet.getLong("role_id");
        String email = resultSet.getString("email");
        String password = resultSet.getString("password");
        String phoneNumber = resultSet.getString("phone_num");
        String faculty = resultSet.getString("faculty");
        char gender = resultSet.getString("gender").charAt(0);
        String authority = resultSet.getString(12);      // "name" column is defined above and "r.name" isn't allowed
        Status status = Status.valueOf(resultSet.getString("status"));
        boolean enabled = resultSet.getBoolean("enabled");

        User user = new User(userId, name, status, roleId, surname, email, password, phoneNumber, faculty, gender, "", enabled);
        user.setAuthority(authority);

        return user;
    };

    public UserDetailsRepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public UserDetails getUserByUsername(String email) throws UsernameNotFoundException {
        String sql = "SELECT bu.user_id, bu.role_id, bu.name, bu.surname, bu.email, bu.password, bu.phone_num, bu.faculty, bu.gender, bu.status, bu.enabled, r.name, bu.enabled " +
                "FROM bdu_user bu join role r on bu.role_id=r.id WHERE email = ?";
        return jdbcTemplate.query(sql, userRowMapper, email).get(0);
    }

}
