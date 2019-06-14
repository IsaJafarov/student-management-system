package az.edu.bsu.smsproject.domain.DataTransferObject;

import az.edu.bsu.smsproject.domain.Enums.Status;
import az.edu.bsu.smsproject.domain.Student;
import az.edu.bsu.smsproject.domain.User;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.crypto.password.PasswordEncoder;
import java.time.LocalDate;
import java.util.Set;

public class StudentDTO extends User {
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

    public Student toStudent(PasswordEncoder passwordEncoder){
        Student student = new Student();
        student.setId( id );
        student.setName(name);
        student.setSurname(surname);
        student.setEmail( email );
        student.setRoleId(roleId);
        student.setPassword(passwordEncoder.encode(password));
        student.setPhoneNumber(phoneNumber);
        student.setFaculty(faculty);
        student.setGender(gender);
        student.setIdCardNumber(idCardNumber);
        student.setIdCardFinCode(idCardFinCode);
        student.setFatherName(fatherName);
        student.setBirthDate(birthDate);
        student.setBirthPlace(birthPlace);
        student.setLivingPlace(livingPlace);
        student.setOfficialHome(officialHome);
        student.setSocialStatusSet(socialStatusSet);
        student.setParentPhoneNumber(parentPhoneNumber);
        student.setGraduatedRegion(graduatedRegion);
        student.setEntryIdNumber(entryIdNumber);
        student.setEntryScore(entryScore);
        student.setEducationType(educationType);
        student.setProfession(profession);
        student.setSection(section);
        student.setGroupId(groupId);
        student.setScholarshipStatus(scholarshipStatus);
        student.setDovletSifarisli(dovletSifarisli);
        student.setPresidentialScholarship(presidentialScholarship);
        student.setEntryYear(entryYear);
        student.setGraduatedSchool(graduatedSchool);
        student.setStatus( Status.ACTIVE );
        student.setEnabled(true);
        return student;
    }

    @Override
    public String toString() {
        return "StudentDTO{" +
                "  id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", fatherName='" + fatherName + '\'' +
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
                ", roleId=" + roleId +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", faculty='" + faculty + '\'' +
                ", gender=" + gender +
                ", status=" + status +
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

    public Set<Integer> getSocialStatusSet() {
        return socialStatusSet;
    }

    public void setSocialStatusSet(Set<Integer> socialStatusSet) {
        this.socialStatusSet = socialStatusSet;
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
}
