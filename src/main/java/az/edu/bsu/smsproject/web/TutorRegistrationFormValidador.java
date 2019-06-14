package az.edu.bsu.smsproject.web;

import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


@Component
public class TutorRegistrationFormValidador  implements Validator {

    private EmailValidator emailValidator= EmailValidator.getInstance();



    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(TutorRegistrationForm.class);

    }

    @Override
    public void validate(Object o, Errors errors) {

        TutorRegistrationForm tutorRegistrationForm = (TutorRegistrationForm) o;


        ValidationUtils.rejectIfEmptyOrWhitespace(errors , "name" , "tutorRegister.name.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors , "surname" , "tutorRegister.surname.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors , "email" , "tutorRegister.email.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors , "password" , "tutorRegister.password.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors , "phoneNumber" , "tutorRegister.phoneNumber.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors , "faculty" , "tutorRegister.faculty.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors , "gender" , "tutorRegister.gender.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors , "orderNumber" , "tutorRegister.orderNumber.required");

        if(!errors.hasErrors()){


            if(tutorRegistrationForm.getName().length() < 3){
                errors.rejectValue("name" , "tutorRegister.name.min.length" );
            }

            if(tutorRegistrationForm.getName().length() > 100){
                errors.rejectValue("surname" , "tutorRegister.name.max.length");
            }

            if(tutorRegistrationForm.getSurname().length() < 3){
                errors.rejectValue("name" , "tutorRegister.surname.min.length" );
            }

            if(tutorRegistrationForm.getSurname().length() > 100){
                errors.rejectValue("surname" , "tutorRegister.surname.max.length");
            }


            if(!emailValidator.isValid(tutorRegistrationForm.getEmail())){
                errors.rejectValue("email" , "tutorRegister.email.invalid");
            }


            if(tutorRegistrationForm.getPassword().length() < 8){
                errors.rejectValue("passwoord" , "tutorRegister.password.min.length");
            }

            if(tutorRegistrationForm.getPhoneNumber().length() < 10) {
                errors.rejectValue("phoneNumber" , "tutorRegister.phoneNumber.invalid");
            }


        }

    }
}
