package az.edu.bsu.smsproject.repository;

import az.edu.bsu.smsproject.domain.Role;

public interface RoleRepository {
    public Role getRoleById( long id );

    public int getRoleIdByName( String name );


}
