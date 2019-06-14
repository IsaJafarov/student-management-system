<%@ page import="java.time.LocalDate" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta name="description" content="Responsive Admin Template"/>
    <meta name="author" content="SmartUniversity"/>
    <title>Add Student</title>
    <%--custom css--%>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <%--For jquery-ui (pop-up)--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css"><!--For Flatpickr-->
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css"/>
    <!-- icons -->
    <link href="fonts/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="fonts/material-design-icons/material-icon.css" rel="stylesheet" type="text/css"/>
    <!--bootstrap -->
    <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- Material Design Lite CSS -->
    <link rel="stylesheet" href="../assets/plugins/material/material.min.css">
    <link rel="stylesheet" href="../assets/css/material_style.css">
    <!-- Theme Styles -->
    <link href="../assets/css/theme/dark/theme_style.css" rel="stylesheet" id="rt_style_components" type="text/css"/>
    <link href="../assets/css/theme/dark/style.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/plugins.min.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/theme/dark/theme-color.css" rel="stylesheet" type="text/css"/>
    <!-- dropzone -->
    <link href="../assets/plugins/dropzone/dropzone.css" rel="stylesheet" media="screen">
    <!-- Date Time item CSS -->
    <link rel="stylesheet" href="../assets/plugins/material-datetimepicker/bootstrap-material-datetimepicker.css"/>
    <!-- favicon -->
    <link rel="shortcut icon" href="http://radixtouch.in/templates/admin/smart/source/assets/img/favicon.ico"/>
</head>

<body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-dark dark-sidebar-color logo-dark dark-theme">
<% request.setAttribute("currentYear", LocalDate.now().getYear()); %>


<div class="page-wrapper">
    <c:import url="../../common/header.jsp"/>

    <c:import url="../../common/color-quick-setting.jsp"/>

    <!-- start page container -->
    <div class="page-container">

        <c:import url="../../common/sidebar-menu.jsp"/>


        <!-- start page content -->
        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-bar">
                    <div class="page-title-breadcrumb">
                        <div class=" pull-left">
                            <div class="page-title">Add Staff</div>
                        </div>
                        <ol class="breadcrumb page-breadcrumb pull-right">
                            <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                                                                   href="index.html">Home</a>&nbsp;<i
                                    class="fa fa-angle-right"></i>
                            </li>
                            <li><a class="parent-item" href="#">Staff</a>&nbsp;<i class="fa fa-angle-right"></i>
                            </li>
                            <li class="active">Add Staff</li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <div class="card-head">
                                <header>Basic Information</header>
                                <button id="panel-button" class="mdl-button mdl-js-button mdl-button--icon pull-right"
                                        data-upgraded=",MaterialButton">
                                    <i class="material-icons">more_vert</i>
                                </button>
                                <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                                    data-mdl-for="panel-button">
                                    <li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action</li>
                                    <li class="mdl-menu__item"><i class="material-icons">print</i>Another action</li>
                                    <li class="mdl-menu__item"><i class="material-icons">favorite</i>Something else here
                                    </li>
                                </ul>
                            </div>


                            <form:form action="/tutor/addStudent" method="post" modelAttribute="student">
                                <div class="card-body row">
                                        <%--First name--%>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <form:input path="name" cssClass="mdl-textfield__input" id="txtFirstName"/>
                                            <label class="mdl-textfield__label">First Name</label>
                                        </div>
                                    </div>

                                        <%--Last name--%>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <form:input path="surname" cssClass="mdl-textfield__input"
                                                        id="txtLasttName"/>
                                            <label class="mdl-textfield__label">Last Name</label>
                                        </div>
                                    </div>

                                        <%--Birth date--%>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <form:input path="birthDate" id="birth-date-id"
                                                        cssClass="mdl-textfield__input" id="txtFirstName"/>
                                            <label class="mdl-textfield__label">Birth date</label>
                                        </div>
                                    </div>

                                        <%--Birth place--%>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <form:input path="birthPlace" cssClass="mdl-textfield__input"
                                                        id="txtFirstName"/>
                                            <label class="mdl-textfield__label">Birth place</label>
                                        </div>
                                    </div>

                                        <%--Email--%>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <form:input path="email" cssClass="mdl-textfield__input" id="txtemail"/>
                                            <label class="mdl-textfield__label">Email</label>
                                            <span class="mdl-textfield__error">Enter Valid Email Address!</span>
                                        </div>
                                    </div>

                                        <%--Password--%>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <form:password path="password" cssClass="mdl-textfield__input" id="txtPwd"/>
                                            <label class="mdl-textfield__label">Password</label>
                                        </div>
                                    </div>

                                        <%--Phone number--%>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <form:input path="phoneNumber" cssClass="mdl-textfield__input"
                                                        pattern="-?[0-9]*(\.[0-9]+)?" id="text5"/>
                                            <label class="mdl-textfield__label" for="text5">Phone Number</label>
                                            <span class="mdl-textfield__error">Number required!</span>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <input class="mdl-textfield__input" type="text" id="date">
                                            <label class="mdl-textfield__label">Joining Date</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <input class="mdl-textfield__input" type="password" id="txtConfirmPwd">
                                            <label class="mdl-textfield__label">Confirm Password</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <input class="mdl-textfield__input" type="text" id="designation">
                                            <label class="mdl-textfield__label">Designation</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">
                                            <input class="mdl-textfield__input" type="text" id="list2" value="" readonly
                                                   tabIndex="-1">
                                            <label for="list2" class="pull-right margin-0">
                                                <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                                            </label>
                                            <label for="list2" class="mdl-textfield__label">Department</label>
                                            <ul data-mdl-for="list2" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                                                <li class="mdl-menu__item" data-val="DE">Library</li>
                                                <li class="mdl-menu__item" data-val="BY">Administration</li>
                                                <li class="mdl-menu__item" data-val="BY">Transport</li>
                                                <li class="mdl-menu__item" data-val="BY">Laboratory</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">
                                            <input class="mdl-textfield__input" type="text" id="sample2" value=""
                                                   readonly tabIndex="-1">
                                            <label for="sample2" class="pull-right margin-0">
                                                <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                                            </label>
                                            <label for="sample2" class="mdl-textfield__label">Gender</label>
                                            <ul data-mdl-for="sample2"
                                                class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                                                <li class="mdl-menu__item" data-val="DE">Male</li>
                                                <li class="mdl-menu__item" data-val="BY">Female</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                                            <input class="mdl-textfield__input" type="text" id="dateOfBirth">
                                            <label class="mdl-textfield__label">Birth Date</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield txt-full-width">
                                            <textarea class="mdl-textfield__input" rows="4" id="text7"></textarea>
                                            <label class="mdl-textfield__label" for="text7">Address</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 p-t-20">
                                        <label class="control-label col-md-3">Upload Photo
                                        </label>
                                        <div class="col-md-12">
                                            <div id="id_dropzone" class="dropzone"></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 p-t-20">
                                        <div class="mdl-textfield mdl-js-textfield txt-full-width">
                                            <textarea class="mdl-textfield__input" rows="4" id="education"></textarea>
                                            <label class="mdl-textfield__label" for="text7">Education</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 p-t-20 text-center">
                                        <button type="button"
                                                class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 m-r-20 btn-pink">
                                            Submit
                                        </button>
                                        <button type="button"
                                                class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-default">
                                            Cancel
                                        </button>
                                    </div>
                                </div>
                            </form:form>


                            <small><form:errors path="name" cssClass="error"/></small>

                            <small><form:errors path="surname" cssClass="error"/></small>

                            <small><form:errors path="birthDate" cssClass="error"/></small>

                            <small><form:errors path="birthPlace" cssClass="error"/></small>

                            <small><form:errors path="email" cssClass="error"/></small>

                            <small><form:errors path="password" cssClass="error"/></small>

                            <small><form:errors path="phoneNumber" cssClass="error"/></small>
                            
                            <form:label path="gender">Gender</form:label> <br/>
                            Male: <form:radiobutton path="gender" value="M"/>
                            Female: <form:radiobutton path="gender" value="F"/> <br/>
                            <small><form:errors path="gender" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="fatherName">Father Name</form:label>
                            <form:input path="fatherName"/> <br/>
                            <small><form:errors path="fatherName" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="livingPlace">Living place</form:label>
                            <form:input path="livingPlace"/> <br/>
                            <small><form:errors path="livingPlace" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="officialHome">Official Address</form:label>
                            <form:input path="officialHome"/> <br/>
                            <small><form:errors path="officialHome" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="idCardNumber">Id Card Number</form:label>
                            <form:input path="idCardNumber"/> <br/>
                            <small><form:errors path="idCardNumber" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="idCardFinCode">Id Card Fin Code</form:label>
                            <form:input path="idCardFinCode"/> <br/>
                            <small><form:errors path="idCardFinCode" cssClass="error"/></small>
                            <br/><br/>

                            <hr/>

                            <form:checkboxes path="socialStatusSet" items="${list}" itemValue="id" itemLabel="name"
                                             delimiter="<br/>"/>

                            <hr/>

                            <br/><br/>
                            <form:label path="parentPhoneNumber">Parent Phone Number</form:label>
                            <form:input path="parentPhoneNumber"/> <br/>
                            <small><form:errors path="parentPhoneNumber" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="graduatedRegion">Graduated Region</form:label>
                            <form:input path="graduatedRegion"/> <br/>
                            <small><form:errors path="graduatedRegion" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="graduatedSchool">Graduated School</form:label>
                            <form:input path="graduatedSchool"/> <br/>
                            <small><form:errors path="graduatedSchool" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="entryIdNumber">Entry Id Number</form:label>
                            <form:input path="entryIdNumber"/> <br/>
                            <small><form:errors path="entryIdNumber" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="entryScore">Entry Score</form:label>
                            <form:input path="entryScore"/> <br/>
                            <small><form:errors path="entryScore" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="presidentialScholarship">Presidential Scholarship</form:label>
                            <form:checkbox path="presidentialScholarship"/>
                            <br/><br/>
                            <form:label path="dovletSifarisli">Dovlet Sifarisli</form:label>
                            <form:checkbox path="dovletSifarisli"/>
                            <br/><br/>
                            <br/><br/>
                            <form:label path="entryYear">Entry Year</form:label>
                            <form:select path="entryYear" id="entry-year">
                                <form:option value="${currentYear}" onclick="fillFaculty(this)"/>
                                <form:option value="${currentYear-1}" onclick="fillFaculty(this)"/>
                                <form:option value="${currentYear-2}" onclick="fillFaculty(this)"/>
                                <form:option value="${currentYear-3}" onclick="fillFaculty(this)"/>
                                <form:option value="${currentYear-4}" onclick="fillFaculty(this)"/>
                            </form:select>
                            <br/><br/>
                            <%--value attribute should be empty not 'Select one', otherwise spring validation will accept
                            'Select one' as faculty name--%>
                            <form:label path="faculty">Faculty</form:label>
                            <form:select path="faculty" id="faculty-select-id">
                                <form:option value="" label="Select one"/>
                            </form:select> <br/>
                            <small><form:errors path="faculty" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="profession">Profession</form:label>
                            <form:select path="profession" id="profession-select-id">
                                <form:option value="" label="Select one"/>
                            </form:select> <br/>
                            <small><form:errors path="profession" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="section">Section</form:label>
                            <form:select path="section" id="section-select-id">
                                <form:option value="" label="Select one"/>
                            </form:select> <br/>
                            <small><form:errors path="section" cssClass="error"/></small>
                            <br/><br/>
                            <form:label path="educationType">Education Type</form:label>
                            <br/>
                            <form:label path="educationType">Eyani</form:label>
                            <form:radiobutton path="educationType" value="Eyani"/>
                            <br/>
                            <form:label path="educationType">Qiyabi</form:label>
                            <form:radiobutton path="educationType" value="Qiyabi"/>
                            <small><form:errors path="educationType" cssClass="error"/></small>
                            <br/>
                            <br/><br/>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <form:button>Submit</form:button>
                            <button type="reset">Reset</button>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end page content -->


        <c:import url="../../common/chat-sidebar.jsp"/>
    </div>
    <!-- end page container -->


    <c:import url="../../common/footer.jsp"/>
</div>


<div id="dialog-success" title="Student Registration">Student was registered successfully</div>
<div id="dialog-fail" title="Student Registration">Error occurred while adding new student</div>

<!-- start js include path -->
<script src="../assets/plugins/jquery/jquery.min.js"></script>
<script src="../assets/plugins/popper/popper.js"></script>
<script src="../assets/plugins/jquery-blockui/jquery.blockui.min.js"></script>
<script src="../assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
<!-- bootstrap -->
<script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- Common js-->
<script src="../assets/js/app.js"></script>
<script src="../assets/js/layout.js"></script>
<script src="../assets/js/theme-color.js"></script>
<!-- Material -->
<script src="../assets/plugins/material/material.min.js"></script>
<script src="../assets/js/pages/material-select/getmdl-select.js"></script>
<script src="../assets/plugins/material-datetimepicker/moment-with-locales.min.js"></script>
<script src="../assets/plugins/material-datetimepicker/bootstrap-material-datetimepicker.js"></script>
<script src="../assets/plugins/material-datetimepicker/datetimepicker.js"></script>
<!-- dropzone -->
<script src="../assets/plugins/dropzone/dropzone.js"></script>
<script src="../assets/plugins/dropzone/dropzone-call.js"></script>
<!-- end js include path -->
<%------------------------------Mine--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%--Inclode jQuery--%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%--popup--%>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%--popup--%>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script><!--For Flatpickr-->
<script>

    $(document).ready(function () {
        $("#dialog-success").hide();
        $("#dialog-fail").hide();
        dateInput();
        popup();
    });

    function dateInput() {
        flatpickr("#birth-date-id",
            {
                // "altInput": true,
                "dateFormat": "Y/m/d",
                // "altDate": "dd-mm-yyyy",
                "allowInput": true,
                "minDate": "1950/01/01",
                "maxDate": "today",
                // "defaultDate": "2000/01/01",
                "onOpen": function (selectedDates, dateStr, instance) {
                    instance.setDate(instance.input.value, false);
                }
            }
        );
    }

    function popup() {

        $("#dialog-success").dialog({autoOpen: false});
        $("#dialog-fail").dialog({autoOpen: false});

        if (${requestScope.success== true}) {
            $("#dialog-success").show();
            $("#dialog-success").dialog("open");
        } else if (${requestScope.get("success") == false}) {
            $("#dialog-fail").show();
            $("#dialog-fail").dialog("open");
        }

    }

    let year;
    let faculty;
    let profession;
    let section;

    function fillFaculty(element) {
        year = element.getAttribute("value");

        let tutor = $.get("/tutor/getFaculties",
            {
                "year": year
            },
            function (data) {

                $('#faculty-select-id')
                    .find('option')
                    .remove()
                    .end();

                for (let i = 0; i < Object.keys(data).length; i++) {
                    let option = document.createElement("option");
                    let valueAttr = document.createAttribute("value");
                    valueAttr.value = data[i];
                    let onclickAttr = document.createAttribute("onclick");
                    onclickAttr.value = 'fillProfession(this)';
                    option.setAttributeNode(valueAttr);
                    option.setAttributeNode(onclickAttr);
                    option.innerText = data[i];
                    document.getElementById("faculty-select-id").add(option);
                }
            }
        );


        <%--var facultySelect = document.getElementById("facultyId");--%>

        <%--for(var i=0; i<facultyArray.length; i++){--%>
        <%--var option = document.createElement("option");--%>
        <%--var valueAttr = document.createAttribute("value");--%>
        <%--var onclickAttr = document.createAttribute("onclick");--%>
        <%--valueAttr.value=facultyArray[i];--%>
        <%--onclickAttr.value='fillProfession(this)';--%>
        <%--option.setAttributeNode(valueAttr);--%>
        <%--option.setAttributeNode(onclickAttr);--%>
        <%--option.innerText = facultyArray[i];--%>
        <%--facultySelect.add(option);--%>
        <%--}--%>

    }

    function fillProfession(element) {
        faculty = element.getAttribute("value");

        $.get("/tutor/getProfessions",
            {
                "year": year,
                "faculty": faculty
            },
            function (data) {

                $('#profession-select-id')
                    .find('option')
                    .remove()
                    .end();

                for (var i = 0; i < Object.keys(data).length; i++) {
                    var option = document.createElement("option");
                    var valueAttr = document.createAttribute("value");
                    valueAttr.value = data[i];
                    var onclickAttr = document.createAttribute("onclick");
                    onclickAttr.value = 'fillSection(this)';
                    option.setAttributeNode(valueAttr);
                    option.setAttributeNode(onclickAttr);
                    option.innerText = data[i];
                    document.getElementById("profession-select-id").add(option);
                }
            });
    }

    function fillSection(element) {
        profession = element.getAttribute("value");
        $.get("/tutor/getSections",
            {
                "year": year,
                "faculty": faculty,
                "profession": profession
            },
            function (data) {

                $('#section-select-id')
                    .find('option')
                    .remove()
                    .end();

                for (var i = 0; i < Object.keys(data).length; i++) {
                    var option = document.createElement("option");
                    var valueAttr = document.createAttribute("value");
                    valueAttr.value = data[i];
                    option.setAttributeNode(valueAttr);
                    option.innerText = data[i];
                    document.getElementById("section-select-id").add(option);
                }
            })

    }

</script>
</body>
</html>
--------------------------------------------------------------------


<%--                            <div class="card-body row">--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="text" id="txtFirstName">--%>
<%--                                        <label class="mdl-textfield__label">First Name</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="text" id="txtLasttName">--%>
<%--                                        <label class="mdl-textfield__label">Last Name</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="email" id="txtemail">--%>
<%--                                        <label class="mdl-textfield__label">Email</label>--%>
<%--                                        <span class="mdl-textfield__error">Enter Valid Email Address!</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="text" id="date">--%>
<%--                                        <label class="mdl-textfield__label">Joining Date</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="password" id="txtPwd">--%>
<%--                                        <label class="mdl-textfield__label">Password</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="password" id="txtConfirmPwd">--%>
<%--                                        <label class="mdl-textfield__label">Confirm Password</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="text" id="designation">--%>
<%--                                        <label class="mdl-textfield__label">Designation</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="text" id="list2" value="" readonly tabIndex="-1">--%>
<%--                                        <label for="list2" class="pull-right margin-0">--%>
<%--                                            <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>--%>
<%--                                        </label>--%>
<%--                                        <label for="list2" class="mdl-textfield__label">Department</label>--%>
<%--                                        <ul data-mdl-for="list2" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">--%>
<%--                                            <li class="mdl-menu__item" data-val="DE">Library</li>--%>
<%--                                            <li class="mdl-menu__item" data-val="BY">Administration</li>--%>
<%--                                            <li class="mdl-menu__item" data-val="BY">Transport</li>--%>
<%--                                            <li class="mdl-menu__item" data-val="BY">Laboratory</li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="text" id="sample2" value="" readonly tabIndex="-1">--%>
<%--                                        <label for="sample2" class="pull-right margin-0">--%>
<%--                                            <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>--%>
<%--                                        </label>--%>
<%--                                        <label for="sample2" class="mdl-textfield__label">Gender</label>--%>
<%--                                        <ul data-mdl-for="sample2" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">--%>
<%--                                            <li class="mdl-menu__item" data-val="DE">Male</li>--%>
<%--                                            <li class="mdl-menu__item" data-val="BY">Female</li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="text5">--%>
<%--                                        <label class="mdl-textfield__label" for="text5">Mobile Number</label>--%>
<%--                                        <span class="mdl-textfield__error">Number required!</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-6 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--                                        <input class="mdl-textfield__input" type="text" id="dateOfBirth">--%>
<%--                                        <label class="mdl-textfield__label">Birth Date</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-12 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield txt-full-width">--%>
<%--                                        <textarea class="mdl-textfield__input" rows="4" id="text7"></textarea>--%>
<%--                                        <label class="mdl-textfield__label" for="text7">Address</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-12 p-t-20">--%>
<%--                                    <label class="control-label col-md-3">Upload Photo--%>
<%--                                    </label>--%>
<%--                                    <div class="col-md-12">--%>
<%--                                        <div id="id_dropzone" class="dropzone"></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-12 p-t-20">--%>
<%--                                    <div class="mdl-textfield mdl-js-textfield txt-full-width">--%>
<%--                                        <textarea class="mdl-textfield__input" rows="4" id="education"></textarea>--%>
<%--                                        <label class="mdl-textfield__label" for="text7">Education</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-12 p-t-20 text-center">--%>
<%--                                    <button type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 m-r-20 btn-pink">Submit</button>--%>
<%--                                    <button type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-default">Cancel</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>





