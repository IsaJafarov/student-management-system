package az.edu.bsu.smsproject.Service;

import az.edu.bsu.smsproject.domain.User;

public interface UserService {
    User authenticate(String email, String password );

}
