package az.edu.bsu.smsproject.repository.implementation;

import az.edu.bsu.smsproject.domain.Enums.Status;
import az.edu.bsu.smsproject.domain.SocialStatus;
import az.edu.bsu.smsproject.repository.SocialStatusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SocialStatusRepositoryImpl implements SocialStatusRepository {

    private final JdbcTemplate jdbcTemplate;

    public SocialStatusRepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private RowMapper<SocialStatus> socialStatusMapper = (resultSet, i) -> {
        long id = resultSet.getLong("id");
        String name = resultSet.getString("name");
        return new SocialStatus(id, name, Status.ACTIVE);
    };

    @Override
    public List<SocialStatus> getSocialStatusList() {
        String sql = "SELECT id, name FROM social_status";
        return jdbcTemplate.query(sql, socialStatusMapper);
    }



}
