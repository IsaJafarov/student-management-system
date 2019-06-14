package az.edu.bsu.smsproject.Service;

import az.edu.bsu.smsproject.domain.Group;

import java.util.List;

public interface GroupService {
    public long createGroup(String profession, String section, String eduType, int year, int studentCount);
    public Group getGroupById(long groupId);
    public List<Group> getAllGroupList();
    public List<Group> getFilteredGroupList(int begin, int end,String name, String year, String faculty, String profession, String section);
    public Group updateGroup(Group group);
    public boolean deleteGroup(long groupId);

    public int getNumberOfAllGroups();
    public int getNumberOfFilteredGroups(String name, String year, String faculty, String profession, String section);

    //    **********************
    public int getNumberOfFilteredGroups(String searchParam);
    public List<Group> getFilteredGroupList(String searchParam, int startRow, int endRow);
    //************************
    public List<Group> groupStudents(String profession, String section , String eduType, int year ,int groupCount );

}
