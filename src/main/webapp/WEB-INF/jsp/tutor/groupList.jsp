<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Groups</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"><%--For datatable--%>
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css"><%--For datatable buttons--%>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"><%--For jquery-ui (pop-up)--%>
</head>
<%--Read more: https://datatables.net/blog/2016-03-25--%>
<body>
<a href="/tutor/index">Go Back</a>
<br/><br/>
<table id="group-list-table" class="display" style="width: 80%"> <!--display is a class in the imported dataTables.min.css-->
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Year</th>
        <th>Faculty</th>
        <th>Profession</th>
        <th>Section</th>
        <th>Students</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Year</th>
        <th>Faculty</th>
        <th>Profession</th>
        <th>Section</th>
        <th>Students</th>
    </tr>
    </tfoot>
</table>
<br/><br/>
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
<br/><br/>
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

<script>
    let groupTable;
    let studentsTable;
    let selectedGroupId = -1;

    $(document).ready(function () {
        drawGroupsTable();
        drawStudentsTable();
    });

    function drawGroupsTable() {

        $('#group-list-table tfoot th').each( function () { // Setup - add a text input to each footer cell
            let title = $(this).text();
            if (title === 'Name' || title === 'Year' || title === 'Faculty' || title === 'Profession' || title === 'Section'){
                $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
            }
        } );

        groupTable = $("#group-list-table").DataTable({
            "processing": true,
            "serverSide": true,
            "ordering": true,
            "ajax": "/tutor/getGroups",
            "dom": 'lBfrtip',
            "buttons": [

                {
                    extend: 'collection',
                    text: 'Export',
                    buttons: [

                        {
                            extend: 'copyHtml5',
                            orientation: 'portrait',
                            exportOptions: {
                                columns: ':visible'
                            }
                        },

                        {
                            extend: 'excelHtml5',
                            orientation: 'portrait',
                            exportOptions: {
                                columns: ':visible'
                            }
                        },

                        {
                            extend: 'csvHtml5',
                            orientation: 'portrait',
                            exportOptions: {
                                columns: ':visible'
                            }
                        },


                        {
                            extend: 'pdfHtml5',
                            orientation: 'portrait',
                            exportOptions: {
                                columns: ':visible'
                            }

                        },
                        {
                            extend: 'print',
                            orientation: 'portrait',
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
                    "targets": [-1],
                    "visible": true,
                    "defaultContent": "<button class='detailed-button'>Detailed!</button>"
                }
            ]
        });

        groupTable.on('draw', function () { //The draw event is fired whenever the table is redrawn on the page, at the same point as drawCallback.
            $(".detailed-button").click(function () {
                selectedGroupId = groupTable.row($(this).parents('tr')).data()[0];
                studentsTable.ajax.reload();
            });
        });

        groupTable.columns().every( function () { // Apply the search
            let that = this;

            $( 'input', this.footer() ).on( 'keyup change', function () {
                if ( that.search() !== this.value ) {
                    that
                        .search( this.value )
                        .draw();
                }
            } );
        } );

    }

    function drawStudentsTable() {
        $('#student-list-table tfoot th').each( function () { // Setup - add a text input to each footer cell
            let title = $(this).text();
            if (title === 'Name' || title === 'Surname' || title === 'Father name' || title === 'Birth date' || title === 'Birth place' ||
                title === 'Living place' || title === 'Entry year' || title === 'Graduation region' || title === 'Entry score' ||
                title === 'Faculty' || title === 'Profession' || title === 'Section'){

                $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
            }

        } );

        studentsTable = $("#student-list-table").DataTable({
            "processing": true,
            "serverSide": true,
            "ordering": true,
            "ajax":{
                url: "/tutor/getGroupStudents",
                type: 'get',
                data: function ( d ) {
                        d.groupId = selectedGroupId;
                    }
            } ,
            "dom": 'lBfrtip',
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
                    "defaultContent": "<button class='detailedInfo'>Detailed!</button> &nbsp "
                }
            ]
        });

        studentsTable.on('draw', function () {  //The draw event is fired whenever the table is redrawn on the page, at the same point as drawCallback.

            $(".detailedInfo").click(function () {

                var userId = studentsTable.row($(this).parents('tr')).data()[0]; //takes value of first column of the row in which button is clicked

                $("#detailedStudentInformation").load(
                    "/tutor/getStudentInfoPopup/" + userId,  // url from which data will be loaded
                    function () {                                   // function is executed when response comes from url
                        $("#detailedStudentInformation").dialog({ autoOpen: false});
                        $("#detailedStudentInformation").dialog('open');
                    });

            });
        });

        // Apply the search
        studentsTable.columns().every( function () {
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

</script>

</body>
</html>
