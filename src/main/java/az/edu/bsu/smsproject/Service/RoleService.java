package az.edu.bsu.smsproject.Service;

import az.edu.bsu.smsproject.domain.Role;

public interface RoleService {
    public Role getRoleById(long id );

    public int getRoleIdByName( String name );

}
