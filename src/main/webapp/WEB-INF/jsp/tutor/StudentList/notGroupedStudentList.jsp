<%@ page import="java.time.LocalDate" %>
<html>
<head>
    <title>Students</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"><%--For datatable--%>
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css"><%--For datatable buttons--%>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"><%--For jquery-ui (pop-up)--%>
    <link rel="stylesheet" href="https://cdn.datatables.net/plug-ins/1.10.19/sorting/numeric-comma.js"><%--For jquery-ui (pop-up)--%>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"><%--For jquery-ui (pop-up)--%>

</head>
<body>
<a href="/tutor/index">Go Back</a>
<br/><br/>
<% request.setAttribute("currentYear", LocalDate.now().getYear() ); %>
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
        <th>Id card number</th>
        <th>Id card fin code</th>
        <th>Gender</th>
        <th>Social Status</th>
        <th>Action</th>

        <%--todo social status id--%>
        <%--todo scholarship status--%>
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
        <th>Id card number</th>
        <th>Id card fin code</th>
        <th>Gender</th>
        <th>Social Status</th>
        <th>Action</th>
        <%--todo social status id--%>
        <%--todo scholarship status--%>

    </tr>
    </tfoot>
</table>


<div id="content">
    <h1>Create group</h1>
    <div id="errorDiv"></div>
    <table>

        <tr>
            <td>Profession</td>
            <td>
                <select id="professionSelect">
                    <option value="Select">Select Profession</option>
                    <option value="physics">Physics</option>
                    <option value="physics teacher">Physics Teacher</option>
                </select>
            </td>
        </tr>



        <tr>
            <td>Section</td>
            <td>
                <select id="sectionSelect">
                    <option value="Select">Select Section</option>
                    <option value="az">Az</option>
                    <option value="eng teacher">Eng </option>
                    <option value="rus">Rus </option>
                </select>
            </td>
        </tr>



        <tr>
            <td>Year</td>
            <td>
                <select id="entryYearSelect" >
                    <option value="Select">Select Year</option>
                    <option value="${currentYear}"  onclick="fillFaculty(this)" >${currentYear}</option>
                    <option value="${currentYear-1}" onclick="fillFaculty(this)" >${currentYear-1}</option>
                    <option value="${currentYear-2}" onclick="fillFaculty(this)" >${currentYear-2}</option>
                    <option value="${currentYear-3}" onclick="fillFaculty(this)" >${currentYear-3}</option>
                    <option value="${currentYear-4}" onclick="fillFaculty(this)" >${currentYear-4}</option>
                </select>
            </td>
        </tr>


        <tr>
            <td>Education type</td>
            <td>
                <select id="eduTypeSelect">
                    <option value="Select">Select Education Type </option>
                    <option value="d">Distance</option>
                    <option value="c">Correspondence</option>
                </select>
            </td>
        </tr>



        <tr>
            <td>Group Count</td>
            <td>
                <select id="groupCountSelect">
                    <option value="Select">Select Group Count</option>
                    <option value="1">1</option>
                    <option value="2">2 </option>
                    <option value="3">3 </option>
                    <option value="4">4 </option>
                    <option value="5">5 </option>
                    <option value="6">6 </option>
                    <option value="7">7 </option>
                    <option value="8">8 </option>
                    <option value="9">9 </option>
                    <option value="10">10 </option>
                    <option value="11">11 </option>
                    <option value="12">12 </option>
                    <option value="13">13 </option>
                    <option value="14">14 </option>
                    <option value="15">15 </option>
                </select>
            </td>
        </tr>


        <tr>
            <td colspan="2"><input type="submit" id="submitButton" value="Create"/></td>
        </tr>


    </table>
</div>


<div id="detailedStudentInformation" title="Student Information"></div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><%--jQuery--%>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><%--dataTables libraries--%>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script><%--buttons for dataTables--%>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js "></script><%--buttons for dataTables--%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script><%--popup--%>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script><%--popup--%>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><%--buttons for dataTables--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script><%--popup--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script><%--popup--%>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script><%--popup--%>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script><%--popup--%>


<script type="text/javascript" src="JS/jquery-3.2.1.js"></script>



<script>

//    $(document).ready(function () {
//        $("#submitButton").click(function() {
//            ValidateAll();
//            return false;
//        });
//    });


    $(document).ready(function () {
        $("#detailedStudentInformation").dialog({autoOpen: false});

        createGroups();
        drawTable();
        $("#mini-form").hide();
    });
    function ValidateAll() {
        var errorCounter = 0;
        var errorMessage = "";



        //Profession
        if ($("#professionSelect").val() == 'Select') {
            errorMessage += " Please select profession <br/>";
            errorCounter++;
        }
        //End

        //Year
        if ($("#entryYearSelect").val() == 'Select') {
            errorMessage += " Please select year <br/>";
            errorCounter++;
        }
        //End


        //Section
        if ($("#sectionSelect").val() == 'Select') {
            errorMessage += " Please select section <br/>";
            errorCounter++;
        }
        //End



        //Education type
        if ($("#eduTypeSelect").val() == 'Select') {
            errorMessage += " Please select section <br/>";
            errorCounter++;
        }


        //Group Count
        if ($("#groupCountSelect").val() == 'Select') {
            errorMessage += " Please select group count <br/>";
            errorCounter++;
        }
        //End


        $("#errorDiv").html(errorMessage);
        if (errorCounter == 0) {
            return true;
        }
        else
        {

        }
    }
    function drawTable() {

        // Setup - add a text input to each footer cell
        $('#student-list-table tfoot th').each( function () {

            var title = $(this).text();
            if (title === 'Name' || title === 'Surname' || title === 'Father name' || title === 'Birth date' || title === 'Birth place' ||
                title === 'Living place' || title === 'Entry year' || title === 'Graduation region' || title === 'Entry score' ||
                title === 'Faculty' || title === 'Profession' || title === 'Group' || title === 'Section'){

                $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
            }
            else{
                $(this).html( '<input type="text" hidden placeholder="Search '+title+'" />' );
            }
        } );






        var myTable = $("#student-list-table").DataTable({
            "processing": true,
            "serverSide": true,
            "order": true,
            "ajax": "/tutor/getNotGroupedStudents",
            "dom": 'lBfrtip',
            // "initComplete": , it works when the table is initialized for the 1st time, but not when you move to next page
            "buttons": [
               {
                    extend: 'collection',
                    text: 'Export',
                    buttons: [

                        {
                            extend: 'copyHtml5',
                            orientation: 'landscape',
                            exportOptions: {
                                columns: ':visible'
                            }
                        },

                        {
                            extend: 'excelHtml5',
                            orientation: 'landscape',
                            exportOptions: {
                                columns: ':visible'
                            }
                        },

                        {
                            extend: 'csvHtml5',
                            orientation: 'landscape',
                            exportOptions: {
                                columns: ':visible'
                            }
                        },


                        {
                            extend: 'pdfHtml5',
                            orientation: 'landscape',
                            exportOptions: {
                                columns: ':visible'
                            }

                        },
                        {
                            extend: 'print',
                            orientation: 'landscape',
                            exportOptions: {
                                columns: ':visible'
                            }

                        }
                    ]
                },

                'colvis'
            ],
            "columnDefs": [

                {
                    "targets": [5],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [6],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [7],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [10],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [11],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [12],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [13],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [14],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [20],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [21],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [22],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [23],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [24],
                    "visible": false,
                    "searchable": false
                },
                {
                    "targets": [-1],
                    "visible": true,
                    "defaultContent": "<button class='detailedInfo'>Detailed!</button> &nbsp " +
                        "<a><button class='updateInfo'>Update!</button></a>"
                }
            ]
        });





        //The draw event is fired whenever the table is redrawn on the page, at the same point as drawCallback.
        myTable.on('draw', function () {

            $(".detailedInfo").click(function () {

                var userId = myTable.row($(this).parents('tr')).data()[0]; //takes value of first column of the row in which button is clicked
                $("#detailedStudentInformation").load(
                    "/tutor/getStudentInfoPopup/" + userId,  // url from which data will be loaded
                    function () {                                   // function is executed when response comes from url
                        $("#detailedStudentInformation").dialog('open');
                    });

            });

            $(".updateInfo").click(function () {

                var userId = myTable.row($(this).parents('tr')).data()[0]; //takes value of first column of the row in which button is clicked
                window.location.href = "/tutor/updateStudent/" + userId;

                // var xhr = new XMLHttpRequest();
                // xhr.open('GET',"/tutor/updateStudent?userId="+userId,false);
                // xhr.send();

            });
        });

        // Apply the search
        myTable.columns().every( function () {
            var that = this;

            $( 'input', this.footer() ).on( 'keyup change', function () {
                if ( that.search() !== this.value ) {
                    that
                        .search( this.value )
                        .draw();
                }
            } );
        } );

    }



    function createGroups(){

        $("#submitButton").click(function() {
            ValidateAll();
            var profession = $( "#professionSelect" ).val();
            var year =  $( "#entryYearSelect" ).val();
            var section =  $( "#sectionSelect" ).val();
            var groupCount =  $( "#groupCountSelect" ).val();
            var educationType =  $( "#eduTypeSelect" ).val();

            window.location.href = "/tutor/getNewCreatedGroup?profession=" + profession +"&section=" + section + "&year=" + year + "&groupCount=" + groupCount + "&educationType=" + educationType;

            // $.get("/tutor/getNewCreatedGroup",
            //     {
            //         "profession": profession,
            //         "section": section,
            //         "year": year,
            //         "educationType": educationType,
            //         "groupCount": groupCount
            //     }
   //     )

        });

    }

</script>
</body>
</html>

