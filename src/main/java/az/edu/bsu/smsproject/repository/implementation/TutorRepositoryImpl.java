package az.edu.bsu.smsproject.repository.implementation;

import az.edu.bsu.smsproject.repository.TutorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TutorRepositoryImpl implements TutorRepository {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public TutorRepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

}


