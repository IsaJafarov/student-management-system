package az.edu.bsu.smsproject.Service.implementation;

import az.edu.bsu.smsproject.Service.StudentService;
import az.edu.bsu.smsproject.domain.Student;
import az.edu.bsu.smsproject.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentServiceImpl implements StudentService {

    private final StudentRepository studentRepository;

    @Autowired
    public StudentServiceImpl(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    @Override
    public Optional<Student> addStudent(Student student) {
        return studentRepository.addStudent( student );
    }

    @Override
    public Student getStudentById(long id) {
        return studentRepository.getStudentById(id);
    }

    @Override
    public List<Student> getStudentList() {
        return  studentRepository.getStudentList();
    }

    @Override
    public int getNumberOfAllStudents() {
        return studentRepository.getNumberOfAllStudents();
    }

    @Override
    public Optional<Student> updateStudent(Student student) {
        return studentRepository.updateStudent( student );
    }

    @Override
    public List<Student> getFilteredStudentList(int beginRow, int endRow, String searchValueForName, String searchValueForSurname, String searchValueForFatherName, String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace, String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore, String searchValueForFaculty, String searchValueForProfession, String searchValueForGroup, String searchValueForSection) {
        return studentRepository.getFilteredStudentList(beginRow, endRow,  searchValueForName,  searchValueForSurname,  searchValueForFatherName,  searchValueForBirthDate,  searchValueForBirthPlace,  searchValueForLivingPlace,  searchValueForEntryYear,  searchValueForGraduationRegion,  searchValueForEntryScore, searchValueForFaculty,  searchValueForProfession,  searchValueForGroup,  searchValueForSection);
    }

    @Override
    public int getNumberOfFilteredStudents(String searchValueForName, String searchValueForSurname, String searchValueForFatherName, String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace, String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore, String searchValueForFaculty, String searchValueForProfession, String searchValueForGroup, String searchValueForSection) {
        return studentRepository.getNumberOfFilteredStudents( searchValueForName,  searchValueForSurname,  searchValueForFatherName,  searchValueForBirthDate,  searchValueForBirthPlace,  searchValueForLivingPlace,  searchValueForEntryYear,  searchValueForGraduationRegion,  searchValueForEntryScore,  searchValueForFaculty,  searchValueForProfession,  searchValueForGroup,  searchValueForSection);
    }

    public List<Student> getFilteredStudentListOfSelectedGroup(
            int beginRow, int endRow,
            String searchValueForName, String searchValueForSurname, String searchValueForFatherName,
            String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace,
            String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore,
            String searchValueForFaculty, String searchValueForProfession, int groupId, String searchValueForSection ){

        return studentRepository.getFilteredStudentListOfSelectedGroup(
                beginRow, endRow,
                searchValueForName,  searchValueForSurname,  searchValueForFatherName,
                searchValueForBirthDate,  searchValueForBirthPlace,  searchValueForLivingPlace,
                searchValueForEntryYear,  searchValueForGraduationRegion,  searchValueForEntryScore,
                searchValueForFaculty,  searchValueForProfession,  groupId,  searchValueForSection
        );
    }

    public int getNumberOfFilteredStudentsOfSelectedGroup(
            String searchValueForName, String searchValueForSurname, String searchValueForFatherName,
            String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace,
            String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore,
            String searchValueForFaculty, String searchValueForProfession, int groupId, String searchValueForSection ){

        return studentRepository.getNumberOfFilteredStudentsOfSelectedGroup(
                searchValueForName,  searchValueForSurname,  searchValueForFatherName,
                searchValueForBirthDate,  searchValueForBirthPlace,  searchValueForLivingPlace,
                searchValueForEntryYear,  searchValueForGraduationRegion,  searchValueForEntryScore,
                searchValueForFaculty,  searchValueForProfession,  groupId,  searchValueForSection
        );
    }

    @Override
    public List<Student> getStudentsOfIdenticalGroup(long groupId , String searchParam, int startRow, int endRow) {
        return  studentRepository.getStudentsOfIdenticalGroup(groupId , searchParam , startRow , endRow);
    }

    @Override
    public int delete(long userId) {
        return studentRepository.delete(userId);
    }

    @Override
    public int getNumberOfStudentsOfIdenticalGroup(long groupId) {
        return studentRepository.getNumberOfStudentsOfIdenticalGroup(groupId);
    }

    @Override
    public int getNumberOfFilteredStudentsOfIdenticalGroup(String searchValue, long groupId) {
        return studentRepository.getNumberOfFilteredStudentsOfIdenticalGroup(searchValue , groupId);
    }

    @Override
    public int getNumberOfAllStudentsNotGrouped() {
        return studentRepository.getNumberOfAllStudentsNotGrouped();
    }

    @Override
    public int getNumberOfFilteredStudentsNotGrouped(String searchValueForName, String searchValueForSurname, String searchValueForFatherName, String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace, String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore, String searchValueForFaculty, String searchValueForProfession, String searchValueForGroup, String searchValueForSection) {
        return studentRepository.getNumberOfFilteredStudentsNotGrouped(searchValueForName,  searchValueForSurname,  searchValueForFatherName,  searchValueForBirthDate,  searchValueForBirthPlace,  searchValueForLivingPlace,  searchValueForEntryYear,  searchValueForGraduationRegion,  searchValueForEntryScore,  searchValueForFaculty,  searchValueForProfession,  searchValueForGroup,  searchValueForSection);

    }

    @Override
    public List<Student> getFilteredStudentListNotGrouped(int beginRow, int endRow, String searchValueForName, String searchValueForSurname, String searchValueForFatherName, String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace, String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore, String searchValueForFaculty, String searchValueForProfession, String searchValueForGroup, String searchValueForSection){
        return studentRepository.getFilteredStudentListNotGrouped(beginRow, endRow,  searchValueForName,  searchValueForSurname,  searchValueForFatherName,  searchValueForBirthDate,  searchValueForBirthPlace,  searchValueForLivingPlace,  searchValueForEntryYear,  searchValueForGraduationRegion,  searchValueForEntryScore, searchValueForFaculty,  searchValueForProfession,  searchValueForGroup,  searchValueForSection);
    }

    @Override
    public List<Student> getFilteredStudentList(String searchValue, int beginRow, int endRow) {
        return studentRepository.getFilteredStudentList(searchValue, beginRow, endRow);
    }
}
