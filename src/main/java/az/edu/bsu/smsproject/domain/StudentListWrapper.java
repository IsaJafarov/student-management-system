package az.edu.bsu.smsproject.domain;

import java.util.List;

public class StudentListWrapper {
    private List<Student> studentList;

    public List<Student> getStudentList() {
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }
}
