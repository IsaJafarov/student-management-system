package az.edu.bsu.smsproject.Service.implementation;

import az.edu.bsu.smsproject.Service.UserService;
import az.edu.bsu.smsproject.domain.User;
import az.edu.bsu.smsproject.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public User authenticate(String email, String password) {
        return userRepository.authenticate( email, password );
    }


}
