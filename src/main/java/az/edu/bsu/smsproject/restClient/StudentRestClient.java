package az.edu.bsu.smsproject.restClient;

import az.edu.bsu.smsproject.domain.Student;
import az.edu.bsu.smsproject.domain.StudentListWrapper;
import org.springframework.web.client.RestTemplate;

public class StudentRestClient {
    public static void main(String[] args) {
        RestTemplate restTemplate = new RestTemplate();

        Student student = restTemplate.getForObject("http://localhost:8080/studentRest/8", Student.class);
        System.out.println( student );

        StudentListWrapper studentListWrapper = restTemplate.getForObject("http://localhost:8080/studentRest/", StudentListWrapper.class);
        System.out.println( studentListWrapper.getStudentList() );

        restTemplate.delete("http://localhost:8080/studentRest/delete/8");
    }
}
