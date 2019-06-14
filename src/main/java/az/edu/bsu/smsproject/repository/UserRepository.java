package az.edu.bsu.smsproject.repository;

import az.edu.bsu.smsproject.domain.User;

public interface UserRepository {
    User authenticate( String email, String password );

}
