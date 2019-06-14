package az.edu.bsu.smsproject.domain.DataTransferObject;

public class LoginFormDTO {
    private String email;
    private String password;

    public LoginFormDTO(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public LoginFormDTO() {
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

    @Override
    public String toString() {
        return "LoginFormDTO{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
