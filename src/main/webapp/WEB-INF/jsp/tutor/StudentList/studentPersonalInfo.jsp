<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<head>
    <style>
        .left{
            float:left;
            width:50%;
        }
        .right{
            float:right;
            width:50%;
        }
    </style>
</head>
<form:form  modelAttribute="student"  cssStyle="width:500px;">
        <div class="left">
<%--    <form:input path="id" disabled="true"/>--%>
    <form:label path="name">Name</form:label>
    <form:input path="name" disabled="true" /> <br/>
    <br/><br/>
    <form:label path="surname">Surname</form:label>
    <form:input path="surname" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="birthDate">Birth Date</form:label>
    <form:input path="birthDate" id="birth-date-id" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="birthPlace">Birth Place</form:label>
    <form:input path="birthPlace" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="email">Email</form:label>
    <form:input path="email" disabled="true"/> <br/>
    <br/>
    <form:hidden path="password" disabled="true"/>
    <br/>
    <form:label path="phoneNumber">Phone Number</form:label>
    <form:input path="phoneNumber" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="gender">Gender</form:label> <br/>
    Male: <form:radiobutton path="gender" value="M"/>
    Female: <form:radiobutton path="gender" value="F"/> <br/>
    <br/><br/>
    <form:label path="fatherName">Father Name</form:label>
    <form:input path="fatherName" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="livingPlace">Living place</form:label>
    <form:input path="livingPlace" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="officialHome">Official Address</form:label>
    <form:input path="officialHome" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="idCardNumber">Id Card Number</form:label>
    <form:input path="idCardNumber" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="idCardFinCode">Id Card Fin Code</form:label>
    <form:input path="idCardFinCode" disabled="true"/> <br/>
    <br/><br/>
        </div>
    <div class="right">
    <label>Social status: </label> <br/><br/>
    <label >Sehid ailesi: </label>
    <form:checkbox path="socialStatusSet" value="1" disabled="true"/> <br/>
    <label>Qacqin: </label>
    <form:checkbox path="socialStatusSet" value="2" disabled="true"/> <br/>
    <label>Asagi teminatli: </label>
    <form:checkbox path="socialStatusSet" value="3" disabled="true"/>
    <br/><br/>

    <form:label path="parentPhoneNumber">Parent Phone Number</form:label>
    <form:input path="parentPhoneNumber" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="graduatedRegion">Graduated Region</form:label>
    <form:input path="graduatedRegion" disabled="true"/>  <br/>
    <br/><br/>
    <form:label path="graduatedSchool">Graduated School</form:label>
    <form:input path="graduatedSchool" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="entryIdNumber">Entry Id Number</form:label>
    <form:input path="entryIdNumber" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="entryScore">Entry Score</form:label>
    <form:input path="entryScore" disabled="true"/> <br/>
    <br/><br/>
    <form:label path="presidentialScholarship">Presidential Scholarship</form:label>
    <form:checkbox path="presidentialScholarship" disabled="true"/>
    <br/><br/>
    <form:label path="dovletSifarisli">Dovlet Sifarisli</form:label>
    <form:checkbox path="dovletSifarisli" disabled="true"/>
    <br/><br/>
    <form:label path="entryYear">Entry Year</form:label>
    <form:input path="entryYear" disabled="true"/>
    <br/><br/>
    <form:label path="faculty" >Faculty</form:label>
    <form:input path="faculty" disabled="true"/>
    <br/><br/>
    <form:label path="profession" >Profession</form:label>
    <form:input path="profession" disabled="true"/>
    <br/><br/>
    <form:label path="section">Section</form:label>
    <form:input path="section" disabled="true"/>
    <br/><br/>
        <form:label path="educationType">Education Type</form:label> <br/>
        <form:label path="educationType" >Eyani</form:label>
        <form:radiobutton path="educationType" value="Eyani" disabled="true"/> <br/>
        <form:label path="educationType" >Qiyabi</form:label>
        <form:radiobutton path="educationType" value="Qiyabi" disabled="true"/>
        </div>
</form:form>
