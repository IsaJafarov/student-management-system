package az.edu.bsu.smsproject.domain;

import az.edu.bsu.smsproject.domain.Enums.Status;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;

public class Student extends User implements Serializable {
    private static final long serialVersionUID = 3743824363989869865L;

    private String fatherName;
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private LocalDate birthDate;
    private String birthPlace;
    private String livingPlace;
    private String officialHome;
    private String idCardNumber;
    private String idCardFinCode;
    private String parentPhoneNumber;
    private String graduatedRegion;
    private String graduatedSchool;
    private int entryIdNumber;
    private int entryScore;
    private Set<Integer> socialStatusSet;
    private String educationType;
    private boolean presidentialScholarship;            // true -> prezident teqaudcusu
    private boolean dovletSifarisli;                    // true -> dovlet sifarisli false -> odenisli
    private int entryYear;
    private String profession;
    private String section;
    private long groupId;
    private int scholarshipStatus;


    public Student(long id, String name, Status status, long roleId, String surname, String email, String password, String phoneNumber, String faculty, char gender, String authority, boolean enabled, String fatherName, LocalDate birthDate, String birthPlace, String livingPlace, String officialHome, String idCardNumber, String idCardFinCode, String parentPhoneNumber, String graduatedRegion, String graduatedSchool, int entryIdNumber, int entryScore, Set<Integer> socialStatusSet, String educationType, boolean presidentialScholarship, boolean dovletSifarisli, int entryYear, String profession, String section, long groupId, int scholarshipStatus) {
        super(id, name, status, roleId, surname, email, password, phoneNumber, faculty, gender, authority, enabled);
        this.fatherName = fatherName;
        this.birthDate = birthDate;
        this.birthPlace = birthPlace;
        this.livingPlace = livingPlace;
        this.officialHome = officialHome;
        this.idCardNumber = idCardNumber;
        this.idCardFinCode = idCardFinCode;
        this.parentPhoneNumber = parentPhoneNumber;
        this.graduatedRegion = graduatedRegion;
        this.graduatedSchool = graduatedSchool;
        this.entryIdNumber = entryIdNumber;
        this.entryScore = entryScore;
        this.socialStatusSet = socialStatusSet;
        this.educationType = educationType;
        this.presidentialScholarship = presidentialScholarship;
        this.dovletSifarisli = dovletSifarisli;
        this.entryYear = entryYear;
        this.profession = profession;
        this.section = section;
        this.groupId = groupId;
        this.scholarshipStatus = scholarshipStatus;
    }

    public Student() {
        this.fatherName = "";
        this.birthPlace = "";
        this.livingPlace = "";
        this.officialHome = "";
        this.idCardNumber = "";
        this.idCardFinCode = "";
        this.parentPhoneNumber = "";
        this.graduatedRegion = "";
        this.graduatedSchool = "";
        this.socialStatusSet = new HashSet<>();
        this.educationType = "";
        this.presidentialScholarship = false;
        this.dovletSifarisli = false;
        this.profession = "";
        this.section = "";
        this.gender = ' '; //otherwise spring initializes gender and when gender isn't selected in addStudent form,
        //it is validated as correct
    }

    @Override
    public String toString() {
        return "Student{" +
                "fatherName='" + fatherName + '\'' +
                ", birthDate=" + birthDate +
                ", birthPlace='" + birthPlace + '\'' +
                ", livingPlace='" + livingPlace + '\'' +
                ", officialHome='" + officialHome + '\'' +
                ", idCardNumber='" + idCardNumber + '\'' +
                ", idCardFinCode='" + idCardFinCode + '\'' +
                ", parentPhoneNumber='" + parentPhoneNumber + '\'' +
                ", graduatedRegion='" + graduatedRegion + '\'' +
                ", graduatedSchool='" + graduatedSchool + '\'' +
                ", entryIdNumber=" + entryIdNumber +
                ", entryScore=" + entryScore +
                ", socialStatusSet=" + socialStatusSet +
                ", educationType='" + educationType + '\'' +
                ", presidentialScholarship=" + presidentialScholarship +
                ", dovletSifarisli=" + dovletSifarisli +
                ", entryYear=" + entryYear +
                ", profession='" + profession + '\'' +
                ", section='" + section + '\'' +
                ", groupId=" + groupId +
                ", scholarshipStatus=" + scholarshipStatus +
                '}';
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace;
    }

    public String getLivingPlace() {
        return livingPlace;
    }

    public void setLivingPlace(String livingPlace) {
        this.livingPlace = livingPlace;
    }

    public String getOfficialHome() {
        return officialHome;
    }

    public void setOfficialHome(String officialHome) {
        this.officialHome = officialHome;
    }

    public String getIdCardNumber() {
        return idCardNumber;
    }

    public void setIdCardNumber(String idCardNumber) {
        this.idCardNumber = idCardNumber;
    }

    public String getIdCardFinCode() {
        return idCardFinCode;
    }

    public void setIdCardFinCode(String idCardFinCode) {
        this.idCardFinCode = idCardFinCode;
    }

    public String getParentPhoneNumber() {
        return parentPhoneNumber;
    }

    public void setParentPhoneNumber(String parentPhoneNumber) {
        this.parentPhoneNumber = parentPhoneNumber;
    }

    public String getGraduatedRegion() {
        return graduatedRegion;
    }

    public void setGraduatedRegion(String graduatedRegion) {
        this.graduatedRegion = graduatedRegion;
    }

    public String getGraduatedSchool() {
        return graduatedSchool;
    }

    public void setGraduatedSchool(String graduatedSchool) {
        this.graduatedSchool = graduatedSchool;
    }

    public int getEntryIdNumber() {
        return entryIdNumber;
    }

    public void setEntryIdNumber(int entryIdNumber) {
        this.entryIdNumber = entryIdNumber;
    }

    public int getEntryScore() {
        return entryScore;
    }

    public void setEntryScore(int entryScore) {
        this.entryScore = entryScore;
    }

    public String getEducationType() {
        return educationType;
    }

    public void setEducationType(String educationType) {
        this.educationType = educationType;
    }

    public boolean isPresidentialScholarship() {
        return presidentialScholarship;
    }

    public void setPresidentialScholarship(boolean presidentialScholarship) {
        this.presidentialScholarship = presidentialScholarship;
    }

    public boolean isDovletSifarisli() {
        return dovletSifarisli;
    }

    public void setDovletSifarisli(boolean dovletSifarisli) {
        this.dovletSifarisli = dovletSifarisli;
    }

    public int getEntryYear() {
        return entryYear;
    }

    public void setEntryYear(int entryYear) {
        this.entryYear = entryYear;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public long getGroupId() {
        return groupId;
    }

    public void setGroupId(long groupId) {
        this.groupId = groupId;
    }

    public int getScholarshipStatus() {
        return scholarshipStatus;
    }

    public void setScholarshipStatus(int scholarshipStatus) {
        this.scholarshipStatus = scholarshipStatus;
    }

    public Set<Integer> getSocialStatusSet() {
        return socialStatusSet;
    }

    public void setSocialStatusSet(Set<Integer> socialStatusSet) {
        this.socialStatusSet = socialStatusSet;
    }

    public static class SortByEntryScore extends Student implements Comparator<Student> {
        public int compare(Student a, Student b) {
            return a.entryScore - b.entryScore;
        }
    }

}
