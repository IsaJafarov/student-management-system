package az.edu.bsu.smsproject.web;

import org.springframework.stereotype.Component;

@Component
public class TutorRegistrationForm {
    private static final long serialVersionUID = 659121454602593303L;

    private String name;
    private String surname;
    private String email;
    private String password;
    private String phoneNumber;
    private String faculty;
    private String gender;
    private String orderNumber;


    public TutorRegistrationForm(String name, String surname, String email, String password, String phoneNumber, String faculty, String gender, String orderNumber) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.faculty = faculty;
        this.gender = gender;
        this.orderNumber = orderNumber;
    }

    public TutorRegistrationForm() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }


    @Override
    public String toString() {
        return "TutorRegistrationForm{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", faculty='" + faculty + '\'' +
                ", gender=" + gender +
                ", orderNumber='" + orderNumber + '\'' +
                '}';
    }

}
