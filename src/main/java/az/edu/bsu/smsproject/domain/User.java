package az.edu.bsu.smsproject.domain;

import az.edu.bsu.smsproject.domain.Enums.Status;
import org.hibernate.validator.constraints.Length;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
//todo think about abstract
public class User extends BaseDomain implements Serializable, Comparable<User>, UserDetails {
    private static final long serialVersionUID = -1691632973585761641L;

    protected long roleId;
    protected String surname;
    protected String email;
    protected String password;
    protected String phoneNumber;
    protected String faculty;
    protected char gender;
    private String authority;
    private boolean enabled;

    public User(long id, String name, Status status, long roleId, String surname, String email, String password, String phoneNumber, String faculty, char gender, String authority, boolean enabled) {
        super(id, name, status);
        this.roleId = roleId;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.faculty = faculty;
        this.gender = gender;
        this.authority = authority;
        this.enabled = enabled;
    }

    public User() {
        this(0, "", Status.ACTIVE, 0, "", "", "", "", "", ' ', "", true);
    }

// Spring Security --

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        System.out.println("authority: "+authority);
        return Arrays.asList(new SimpleGrantedAuthority(authority));
    }

    @Override
    public String getUsername() {
        System.out.println("getUsername: "+ email);
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        System.out.println("isAccountNonExpired: "+true);
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        System.out.println("isAccountNonLocked: "+true);
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        System.out.println("isCredentialsNonExpired: "+true);
        return true;
    }

    @Override
    public boolean isEnabled() {
        System.out.println("isEnabled: " + enabled);
        return enabled;
    }

// Spring Security --

    //TODO make sure
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null || obj.getClass() != this.getClass())
            return false;

        User user;
        if (obj instanceof User) {
            user = (User) obj;
            return this.id == user.getId() &&
                    this.name.equals(user.getName()) &&
                    this.surname.equals(user.getSurname()) &&
                    this.email.equals(user.getEmail());
        } else
            return false;

    }

    //TODO make sure
    @Override
    public int hashCode() {
        return Objects.hash(id, name, email);
    }


    @Override
    public String toString() {
        return "User{" +
                ", id=" + id +
                ", name='" + name + '\'' +
                ", roleId=" + roleId +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", faculty='" + faculty + '\'' +
                ", gender=" + gender +
                ", authority='" + authority + '\'' +
                ", status=" + status +
                '}';
    }

    @Override
    public int compareTo(User o) {
        if (this.id != o.getId())
            return (int) (this.id - o.getId());
        else {
            if (!this.name.equals(o.getName()))
                return this.name.compareTo(o.getName());
            else
                return this.surname.compareTo(o.getSurname());
        }
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public long getRoleId() {
        return roleId;
    }

    public void setRoleId(long roleId) {
        this.roleId = roleId;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

}
