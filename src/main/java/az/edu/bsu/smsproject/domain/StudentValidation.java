package az.edu.bsu.smsproject.domain;


import az.edu.bsu.smsproject.domain.DataTransferObject.StudentDTO;
import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.time.LocalDate;

@Component
public class StudentValidation implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(StudentDTO.class);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name","addStudent.name.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "surname", "addStudent.surname.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "addStudent.email.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "addStudent.password.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "addStudent.phoneNumber.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "faculty", "addStudent.faculty.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "addStudent.gender.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fatherName", "addStudent.fatherName.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthPlace", "addStudent.birthPlace.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthDate", "addStudent.birthDate.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "livingPlace", "addStudent.livingPlace.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "officialHome", "addStudent.officialHome.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "idCardNumber", "addStudent.idCardNumber.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "idCardFinCode", "addStudent.idCardFinCode.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "parentPhoneNumber", "addStudent.parentPhoneNumber.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "graduatedRegion", "addStudent.graduatedRegion.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "graduatedSchool", "addStudent.graduatedSchool.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "educationType", "addStudent.educationType.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "profession", "addStudent.profession.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "section", "addStudent.section.required");

        StudentDTO student = (StudentDTO) o;
        EmailValidator emailValidator = EmailValidator.getInstance();

        if (!errors.hasErrors()){
//Name
            if ( student.getName().length() < 3 )
                errors.rejectValue("name","addStudent.name.minLength");

            if ( student.getName().length() > 100 )
                errors.rejectValue("name","addStudent.name.maxLength");

            if ( !isNameValid(student.getName() ) )
                errors.rejectValue("name","addStudent.name.invalid");
//Surname
            if ( student.getSurname().length() < 3 )
                errors.rejectValue("name","addStudent.surname.minLength");

            if ( student.getSurname().length() > 100 )
                errors.rejectValue("name","addStudent.surname.maxLength");

            if ( !isNameValid(student.getSurname() ) )
                errors.rejectValue("surname","addStudent.surname.invalid");
//Email
            if ( !emailValidator.isValid(student.getEmail())  )
                errors.rejectValue("email","addStudent.email.invalid");
//Password
            if ( student.getPassword().length() < 8 )
                errors.rejectValue("password","addStudent.password.minLength");

            if ( student.getPassword().equals("weak") ) //todo
                errors.rejectValue("password","addStudent.password.weak");
//Phone number
            if ( !isPhoneNumberValid( student.getPhoneNumber() ) )
                errors.rejectValue("phoneNumber","addStudent.phoneNumber.invalid");
//Father name
            if ( student.getFatherName().length() < 3 )
                errors.rejectValue("fatherName","addStudent.fatherName.minLength");

            if ( student.getFatherName().length() > 100 )
                errors.rejectValue("fatherName","addStudent.fatherName.maxLength");

            if ( !isNameValid( student.getFatherName()) )
                errors.rejectValue("fatherName","addStudent.fatherName.invalid");
//id card number
           if ( student.getIdCardNumber().equals("invalid") ) //todo regular expression
                errors.rejectValue("idCardNumber","addStudent.idCardNumber.invalid");
//idCardFinCode
           if ( student.getIdCardFinCode().equals("invalid") ) //todo regular expression
                errors.rejectValue("idCardFinCode","addStudent.idCardFinCode.invalid");
//Birth date
           if ( student.getBirthDate().isAfter(LocalDate.now()) )
                errors.rejectValue("birthDate","addStudent.birthDate.future");
//            todo if (student.getBirthDate())
//                errors.rejectValue("birthDate", "addStudent.birthDate.invalid");
//Parent's phone number
            if ( !isPhoneNumberValid( student.getParentPhoneNumber() ) )
                errors.rejectValue("parentPhoneNumber","addStudent.parentPhoneNumber.invalid");

        }

    }
    private boolean isNameValid(String word){
        for ( char c: word.toCharArray() ) {
            if ( !((c>=65 && c<=90) || (c>=97 && c<=122)) )
                return false;
        }
        return true;
    }

    private boolean isPhoneNumberValid(String number){
        if ( number.charAt(0) == '0' && number.length()!=10 )
            return false;
        else if ( number.charAt(0) !='0' && number.length()!=9 )
            return false;
        System.out.println(number.toCharArray());
        for ( char c: number.toCharArray() ) {
            if ( c<'0' || c>'9')
                return false;
        }
        return true;
    }
}
