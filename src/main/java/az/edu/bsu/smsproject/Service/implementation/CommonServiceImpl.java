package az.edu.bsu.smsproject.Service.implementation;

import az.edu.bsu.smsproject.Service.CommonService;
import az.edu.bsu.smsproject.repository.CommonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Set;

@Service
public class CommonServiceImpl implements CommonService {

    private final CommonRepository commonRepository;

    @Autowired
    public CommonServiceImpl(CommonRepository commonRepository) {
        this.commonRepository = commonRepository;
    }

    @Override
    public Set<String> getFacultySet(int year) {
        return commonRepository.getFacultySet(year);
    }



    @Override
    public Set<String> getProfessionSet(int year, String faculty) {
        return commonRepository.getProfessionSet(year, faculty);
    }

    @Override
    public Set<String> getSectionSet(int year, String faculty, String profession) {
        return commonRepository.getSectionSet(year, faculty, profession);
    }

//    ------------------------------------------------------------------------------------------------------------------


    @Override
    public String getDefaultControllerNameByEmail(String email) {
        return commonRepository.getDefaultControllerNameByEmail(email);
    }

    @Override
    public String getDefaultControllerNameByRoleName(String roleName) {
        return commonRepository.getDefaultControllerNameByRoleName(roleName);
    }
}
