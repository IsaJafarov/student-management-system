<%@ page import="az.edu.bsu.smsproject.domain.Student" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
    <title>Add Student</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <!--For Flatpickr-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

    <style>
        .error{ color: red; }
    </style>

</head>
<body>

<form:form action="/tutor/addStudent" method="post" modelAttribute="student" >

    <form:label path="name">Name</form:label>
    <form:input path="name" /> <br/>
    <small><form:errors path="name" cssClass="error"/></small>
    <br/><br/>
    <form:label path="surname">Surname</form:label>
    <form:input path="surname" /> <br/>
    <small><form:errors path="surname" cssClass="error"/></small>
    <br/><br/>
    <form:label path="birthDate">Birth Date <small>(dd/MM/yyyy)</small></form:label> <!--todo jQuery-->
    <form:input path="birthDate" id="birth-date-id"/> <br/>
    <small><form:errors path="birthDate" cssClass="error"/></small>
    <br/><br/>
    <form:label path="birthPlace">Birth Place</form:label>
    <form:input path="birthPlace" /> <br/>
    <small><form:errors path="birthPlace" cssClass="error"/></small>
    <br/><br/>
    <form:label path="email">Email</form:label>
    <form:input path="email" /> <br/>
    <small><form:errors path="email" cssClass="error"/></small>
    <br/><br/>
    <form:label path="password">Password</form:label>
    <form:password path="password" /> <br/>
    <small><form:errors path="password" cssClass="error"/></small>
    <br/><br/>
    <form:label path="phoneNumber">Phone Number</form:label>
    <form:input path="phoneNumber" /> <br/>
    <small><form:errors path="phoneNumber" cssClass="error"/></small>
    <br/><br/>
    <%--todo take from DB--%>
    <form:label path="faculty">Faculty</form:label>
    <form:input path="faculty" /> <br/>
    <small><form:errors path="faculty" cssClass="error"/></small>
    <br/><br/>
    <form:select path="gender">
        <form:option value="M">Male</form:option>
        <form:option value="F">Female</form:option>
    </form:select>
    <br/><br/>
    <form:label path="fatherName">Father Name</form:label>
    <form:input path="fatherName" /> <br/>
    <small><form:errors path="fatherName" cssClass="error"/></small>
    <br/><br/>
    <form:label path="livingPlace">Living place</form:label>
    <form:input path="livingPlace" /> <br/>
    <small><form:errors path="livingPlace" cssClass="error"/></small>
    <br/><br/>
    <form:label path="officialHome">Official Address</form:label>
    <form:input path="officialHome" /> <br/>
    <small><form:errors path="officialHome" cssClass="error"/></small>
    <br/><br/>
    <form:label path="idCardNumber">Id Card Number</form:label>
    <form:input path="idCardNumber" /> <br/>
    <small><form:errors path="idCardNumber" cssClass="error"/></small>
    <br/><br/>
    <form:label path="idCardFinCode">Id Card Fin Code</form:label>
    <form:input path="idCardFinCode" /> <br/>
    <small><form:errors path="idCardFinCode" cssClass="error"/></small>
    <br/><br/>

    <label>Social status: </label> <br/><br/>
    <%--If a radio button isn't checked, it doesn't send request parameter to the controler
    and because controller expects a request parameter, error occurs.
    But, using hidden input we guarantee that there will always be a parameter in request.
    If, checkbox isn't checked @RequestParam(name="...") returns "" (empty String)
    If, it is checked, @RequestParam(name="...") returns ",on". --%>
    <label >Sehid ailesi: </label>
    <form:checkbox path="socialStatusSet" value="1" /> <br/>
    <label>Qacqin: </label>
    <form:checkbox path="socialStatusSet" value="2" /> <br/>
    <label>Asagi teminatli: </label>
    <form:checkbox path="socialStatusSet" value="3" />
    <br/><br/>
    <form:label path="parentPhoneNumber">Parent Phone Number</form:label>
    <form:input path="parentPhoneNumber" /> <br/>
    <small><form:errors path="parentPhoneNumber" cssClass="error"/></small>
    <br/><br/>
    <form:label path="graduatedRegion">Graduated Region</form:label>
    <form:input path="graduatedRegion" />  <br/>
    <small><form:errors path="graduatedRegion" cssClass="error"/></small>
    <br/><br/>
    <form:label path="graduatedSchool">Graduated School</form:label>
    <form:input path="graduatedSchool" /> <br/>
    <small><form:errors path="graduatedSchool" cssClass="error"/></small>
    <br/><br/>
    <form:label path="entryIdNumber">Entry Id Number</form:label>
    <form:input path="entryIdNumber" /> <br/>
    <small><form:errors path="entryIdNumber" cssClass="error"/></small>
    <br/><br/>
    <form:label path="entryScore">Entry Score</form:label>
    <form:input path="entryScore" /> <br/>
    <small><form:errors path="entryScore" cssClass="error"/></small>
    <br/><br/>
    <%--todo What if there isn't qiyabi type in that faculty--%>
    <form:label path="educationType">Education Type</form:label>
    <form:select path="educationType">
        <form:option value="Əyani">Əyani</form:option>
        <form:option value="Qiyabi">Qiyabi</form:option>
    </form:select>
    <br/><br/>
    <form:label path="presidentialScholarship">Presidential Scholarship</form:label>
    <form:checkbox path="presidentialScholarship"/>
    <br/><br/>
    <form:label path="dovletSifarisli">Dovlet Sifarisli</form:label>
    <form:checkbox path="dovletSifarisli"/>
    <br/><br/>
    ----------------------------------------------------
    <br/><br/>
    <form:label path="entryYear">Entry Year</form:label>
    <form:select path="entryYear" id="entry-year">
        <form:option value="2019" year="2019" id="year1"/>
        <form:option value="2018" year="2018" id="year2"/>
        <form:option value="2017" year="2017" id="year3"/>
        <form:option value="2016" year="2016" id="year4"/>
        <form:option value="2015" year="2015" id="year5"/>
    </form:select>
    <br/><br/>
    <form:label path="section">Section</form:label>
    <form:select path="section">
        <form:option value="az"/>
        <form:option value="rus"/>
    </form:select>
    <br/><br/>
    <form:label path="profession">Profession</form:label>
    <form:select path="profession">
        <form:option value="Physics"/>
        <form:option value="Physics teacher"/>
    </form:select>
    <br/><br/>
    <%--
        private String fatherName;
        private LocalDate birthDate;
        private String birthPlace;
        private String livingPlace;
        private String officialHome;
        private String idCardNumber;
        private String idCardFinCode;
        private String socialStatusId;
        private String parentPhoneNumber;
        private String graduatedRegion;
        private String graduatedSchool;
        private int entryIdNumber;
        private int entryScore;
        private String educationType;
        private boolean presidentialScholarship;            // true -> prezident teqaudcusu
        private boolean dovletSifarisli;                    // true -> dovlet sifarisli false -> odenisli
        private int educationYear;
        private String profession;
        private String section;
        private String group;
        private int scholarshipStatus;
    --%>

    <form:button>Submit</form:button>
</form:form>

<div id="dialog-success" title="Student Registration">Student was registered successfully</div>
<div id="dialog-fail" title="Student Registration">Err</div>

<%--Inclode jQuery--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<%--popup--%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<%--Flat date--%>

<%-- Pop-up after submitting --%>
<script>
    $(document).ready(function () {

        dateInput();

        popup();

    });

    function dateInput() {
        flatpickr("#birth-date-id",
            {
                "dateFormat":"d/m/Y",
                "allowInput":true,
                "minDate": "01/01/1950",
                "maxDate": "today",
                "onOpen": function(selectedDates, dateStr, instance) {
                    instance.setDate(instance.input.value, false);
                }
            });
    }

    function popup() {
        $( "#dialog-success" ).dialog({ autoOpen: false });
        $( "#dialog-fail" ).dialog({ autoOpen: false });

        console.log( ${requestScope.success} );
        console.log( ${requestScope.success== true} );

        if (${requestScope.success== true}){
            $( "#dialog-success" ).dialog( "open" );
        }
        else if ( ${requestScope.get("success") == false} ) {
            $( "#dialog-fail" ).dialog( "open" );
        }

    }

</script>

<%--Getting sections accordinging to selected year WIP --%>
<script>
    $(document).ready(function () {
        var currentYear = new Date().getFullYear();

        $("#entry-year").change(function(){

            var year = $(this).find("option:selected").attr("year");
            alert(year);
            $.post("/tutor/getSectionList",
                {selectedYear: year},
                function () {
                    alert("Good Job")
                }
            )
        });
    })
</script>

</body>
<h3>Add New Student Data</h3>
