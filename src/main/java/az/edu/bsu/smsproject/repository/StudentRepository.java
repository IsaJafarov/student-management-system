package az.edu.bsu.smsproject.repository;

import az.edu.bsu.smsproject.domain.Student;
import java.util.List;
import java.util.Optional;

public interface StudentRepository {

    Optional<Student> addStudent( Student student );

    Student getStudentById(long studentId);
    List<Student> getStudentList();
    int getNumberOfAllStudents();
    Optional<Student> updateStudent(Student student);
    List<Student> getFilteredStudentList(String searchValue, int beginRow, int endRow);
    List<Student> getFilteredStudentList(   int beginRow, int endRow,
                                            String searchValueForName, String searchValueForSurname, String searchValueForFatherName,
                                            String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace,
                                            String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore,
                                            String searchValueForFaculty, String searchValueForProfession, String searchValueForGroup, String searchValueForSection );

    int getNumberOfFilteredStudents(  String searchValueForName, String searchValueForSurname, String searchValueForFatherName,
                                      String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace,
                                      String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore,
                                      String searchValueForFaculty, String searchValueForProfession, String searchValueForGroup, String searchValueForSection );

    List<Student> getFilteredStudentListOfSelectedGroup( int beginRow, int endRow,
                                                         String searchValueForName, String searchValueForSurname, String searchValueForFatherName,
                                                         String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace,
                                                         String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore,
                                                         String searchValueForFaculty, String searchValueForProfession, int groupId, String searchValueForSection );

    int getNumberOfFilteredStudentsOfSelectedGroup( String searchValueForName, String searchValueForSurname, String searchValueForFatherName,
                                                    String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace,
                                                    String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore,
                                                    String searchValueForFaculty, String searchValueForProfession, int groupId, String searchValueForSection );

    //    -------------------------------------
    int getNumberOfAllStudentsNotGrouped();

    int getNumberOfFilteredStudentsNotGrouped(String searchValueForName, String searchValueForSurname, String searchValueForFatherName,
                                              String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace,
                                              String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore,
                                              String searchValueForFaculty, String searchValueForProfession, String searchValueForGroup, String searchValueForSection );

    List<Student> getFilteredStudentListNotGrouped(int beginRow, int endRow,
                                                   String searchValueForName, String searchValueForSurname, String searchValueForFatherName,
                                                   String searchValueForBirthDate, String searchValueForBirthPlace, String searchValueForLivingPlace,
                                                   String searchValueForEntryYear, String searchValueForGraduationRegion, String searchValueForEntryScore,
                                                   String searchValueForFaculty, String searchValueForProfession, String searchValueForGroup, String searchValueForSection );

    int getNumberOfStudentsOfIdenticalGroup(long groupId);
    int getNumberOfFilteredStudentsOfIdenticalGroup(String searchValue , long groupId);
    List<Student> getStudentsOfIdenticalGroup(long groupId , String searchParam, int startRow, int endRow);
    int delete(long userId);

}
