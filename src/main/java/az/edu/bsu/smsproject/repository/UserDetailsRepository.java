package az.edu.bsu.smsproject.repository;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface UserDetailsRepository {

    UserDetails getUserByUsername(String s) throws UsernameNotFoundException;

}
