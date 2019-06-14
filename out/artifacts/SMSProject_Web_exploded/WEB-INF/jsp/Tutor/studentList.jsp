<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Students</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
</head>
<body>

<%--These columns are hidden when the table is initialisez first time: 5 6 7 10 11 12 13 14 20 21 22 23 24--%>
<%--id of checkboxes refer to column numbers--%>
<%--<div id="columns">--%>
    <%--Name: <input type="checkbox" id="1" onclick="toggleColumn(this)" checked/> <br/>--%>
    <%--Surname: <input type="checkbox" id="2" onclick="toggleColumn(this)" checked/> <br/>--%>
    <%--Father name: <input type="checkbox" id="3" onclick="toggleColumn(this)" checked/> <br/>--%>
    <%--Birth Date: <input type="checkbox" id="4" onclick="toggleColumn(this)" checked/> <br/>--%>
<%--</div>--%>

<br/>
<br/>
<br/>

<label for="section">Section</label>
<select id="section" onchange="filterRows(this)">
    <option value="az" onclick="filerRows(this)">az</option>
    <option value="rus" onclick="flterRows(this)">rus</option>
</select>

<br/>
<br/>
<br/>

<table id="student-list-table" class="display" style="width: 100%">
    <!--display is a class in the imported dataTables.min.css-->
    <thead>
    <tr>
        <th>Id</th> <!--0-->
        <th>Name</th>
        <th>Surname</th>
        <th>Father name</th>
        <th>Birth date</th>
        <th>Birth place</th>
        <th>Living place</th>
        <th>Official address</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Parent phone Number</th><!--10th column-->
        <th>Entry year</th>
        <th>Graduation region</th>
        <th>Graduation school</th>
        <th>Entry Id number</th>
        <th>Entry score</th>
        <th>Section</th>
        <th>Faculty</th>
        <th>Profession</th>
        <th>Group</th>
        <th>Education type</th><!--20th column-->
        <%--<th>Education year</th>--%>
        <th>Id card number</th>
        <th>Id card fin code</th>
        <th>Gender</th>
        <th>Social Status</th>
        <th>Action</th>

        <%--todo social status id--%>
        <%--todo scholarship status--%>
        <%--<th>Action</th>--%>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>Id</th><!--0-->
        <th>Name</th>
        <th>Surname</th>
        <th>Father name</th>
        <th>Birth date</th>
        <th>Birth place</th>
        <th>Living place</th>
        <th>Official address</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Parent phone Number</th> <!--10-->
        <th>Entry year</th>
        <th>Graduation region</th>
        <th>Graduation school</th>
        <th>Entry Id number</th>
        <th>Entry score</th>
        <th>Section</th>
        <th>Faculty</th>
        <th>Profession</th>
        <th>Group</th>
        <th>Education type</th> <!--20-->
        <%--<th>Education year</th>--%>
        <th>Id card number</th>
        <th>Id card fin code</th>
        <th>Gender</th>
        <th>Social Status</th>
        <th>Action</th>
        <%--todo social status id--%>
        <%--todo scholarship status--%>
        <%--<th>Action</th>--%>
    </tr>
    </tfoot>
</table>

<div id="detailedStudentInformation" title="Student Information">
    <form:form action="/tutor/updateStudent" method="post" modelAttribute="student">

    </form:form>
</div>

<%--include jQuery--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%--Include dataTables libraries--%>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js "></script>
<%--popup--%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script>

    $(document).ready(
        drawTable()
    );

    var myTable;

    function drawTable() {

        myTable = $("#student-list-table").DataTable({
            "processing": true,
            "serverSide": true,
            "ordering": true,
            "ajax": "/tutor/getStudents",
            "dom": 'Bfrtip',
            "buttons": [
                'colvis'
            ],
            "columnDefs": [
                {
                    "targets": [5], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [6], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [7], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [10], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [11], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [12], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [13], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [14], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [20], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [21], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [22], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [23], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [24], //todo complete it
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [-1], //todo complete it
                    "visible": true,
                    "defaultContent": "<button>Detailed!</button>"
                }

            ]
        });

    }

    function filterRows(element) {
        var mySearchValue = element.getAttribute("id") + '=' + element.options[element.selectedIndex].value;
        alert(mySearchValue);
        $.post("/tutor/getStudents",
            {
                mySearchValue: mySearchValue
            }
        )
    }

    $('#student-list-table tbody').on( 'click', 'tr', function () {
        popup();
    } );

    function popup() {
        $( "#detailedStudentInformation" ).dialog({ autoOpen: false });

        alert( myTable.row( $(this).parents('tr') ).data()[0] );

        // $( "#dialog-success" ).dialog( "open" );



    }

</script>

</body>
</html>


<%--
<a href="/tutor/studentInfo?id=${student.id}">Info</a>
--%>