package az.edu.bsu.smsproject.Service.implementation;

import az.edu.bsu.smsproject.Service.GroupService;
import az.edu.bsu.smsproject.domain.Group;
import az.edu.bsu.smsproject.repository.GroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GroupServiceImpl implements GroupService {
    private final GroupRepository groupRepository;
    @Autowired
    public GroupServiceImpl(GroupRepository groupRepository) {
        this.groupRepository = groupRepository;
    }

    @Override
    public long createGroup(String profession, String section, String eduType, int year, int studentCount) {
        return groupRepository.createGroup(profession, section, eduType, year, studentCount);
    }

    @Override
    public Group getGroupById(long groupId) {
        return groupRepository.getGroupById(groupId);
    }

    @Override
    public List<Group> getAllGroupList() {
        return groupRepository.getAllGroupList();
    }

    @Override
    public List<Group> getFilteredGroupList(int begin, int end,String name, String year, String faculty, String profession, String section) {
        return groupRepository.getFilteredGroupList( begin, end, name, year, faculty, profession, section);
    }

    @Override
    public Group updateGroup(Group group) {
        return groupRepository.updateGroup(group);
    }

    @Override
    public boolean deleteGroup(long groupId) {
        return groupRepository.deleteGroup(groupId);
    }


    @Override
    public int getNumberOfFilteredGroups(String name, String year, String faculty, String profession, String section) {
        return groupRepository.getNumberOfFilteredGroups( name, year, faculty, profession, section);
    }

    @Override
    public int getNumberOfAllGroups() {
        return groupRepository.getNumberOfAllGroups();
    }

    @Override
    public List<Group> getFilteredGroupList(String searchParam, int startRow, int endRow) {
        return groupRepository.getFilteredGroupList(searchParam, startRow, endRow);
    }

    @Override
    public List<Group> groupStudents(String profession, String section, String eduType, int year, int groupCount) {
        return groupRepository.groupStudents(profession, section, eduType, year, groupCount);
    }

    @Override
    public int getNumberOfFilteredGroups(String searchParam) {
        return groupRepository.getNumberOfFilteredGroups(searchParam);
    }

}
