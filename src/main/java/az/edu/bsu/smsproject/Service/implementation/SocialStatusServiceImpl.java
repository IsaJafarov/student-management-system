package az.edu.bsu.smsproject.Service.implementation;

import az.edu.bsu.smsproject.Service.SocialStatusService;
import az.edu.bsu.smsproject.domain.SocialStatus;
import az.edu.bsu.smsproject.repository.SocialStatusRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SocialStatusServiceImpl implements SocialStatusService {

    private final SocialStatusRepository socialStatusRepository;

    public SocialStatusServiceImpl(SocialStatusRepository socialStatusRepository) {
        this.socialStatusRepository = socialStatusRepository;
    }

    @Override
    public List<SocialStatus> getSocialStatusList() {
        return socialStatusRepository.getSocialStatusList();
    }
}
