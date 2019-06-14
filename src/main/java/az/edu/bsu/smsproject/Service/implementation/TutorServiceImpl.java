package az.edu.bsu.smsproject.Service.implementation;

import az.edu.bsu.smsproject.Service.TutorService;
import az.edu.bsu.smsproject.domain.Group;
import az.edu.bsu.smsproject.domain.Student;
import az.edu.bsu.smsproject.repository.TutorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class TutorServiceImpl implements TutorService {

    private final TutorRepository tutorRepository;

    @Autowired
    public TutorServiceImpl(TutorRepository tutorRepository) {
        this.tutorRepository = tutorRepository;
    }


}
