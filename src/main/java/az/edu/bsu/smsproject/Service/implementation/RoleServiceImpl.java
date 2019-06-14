package az.edu.bsu.smsproject.Service.implementation;

import az.edu.bsu.smsproject.Service.RoleService;
import az.edu.bsu.smsproject.domain.Role;
import az.edu.bsu.smsproject.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {

    private final RoleRepository roleRepository;

    @Autowired
    public RoleServiceImpl(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    @Override
    public Role getRoleById(long id) {
        return roleRepository.getRoleById( id );
    }

    @Override
    public int getRoleIdByName(String name) {
        return roleRepository.getRoleIdByName( name );
    }
}
