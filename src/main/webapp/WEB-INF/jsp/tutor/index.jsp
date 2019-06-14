<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"><%--For datatable--%>
</head>
<body>
<a href="/tutor/studentForm">Add Student</a>
<br/> <br/>
<a href="/tutor/studentsList">Students List</a>
<br/> <br/>
<a href="/tutor/groups">Groups</a>
<br/> <br/>
<a href="/tutor/getNotGroupedStudent">Ungrouped Students</a>
<br/>
<form action="/sign-out" method="post">
    <input type="submit" value="Log out" />
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<br/>
<%------------------------------------------------------------------------------------------------------%>
<table id="order-list-table" class="display" style="width: 80%"> <!--display is a class in the imported dataTables.min.css-->
    <thead>
    <tr>
        <th>Image</th>
        <th>Name</th>
        <th>Creation Time</th>
        <th>Last Access Time</th>
        <th>Size</th>
        <th>Open</th>
        <th>Download</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>Image</th>
        <th>Name</th>
        <th>Creation Time</th>
        <th>Last Access Time</th>
        <th>Size</th>
        <th>Open</th>
        <th>Download</th>
    </tfoot>
</table>
<br/><br/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><%--jQuery--%>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><%--dataTables libraries--%>
<script>

    $(document).ready(function () {
        drawOrdersTable();
    });

    function drawOrdersTable() {

        $('#order-list-table tfoot th').each( function () { // Setup - add a text input to each footer cell
            let title = $(this).text();
            if (title === 'Name' || title === 'Creation Time' || title === 'Last Access Time' || title === 'Size'){
                $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
            }
        } );

        let orderTable = $("#order-list-table").DataTable({
            "processing": true,
            "serverSide": true,
            "ordering": true,
            "ajax": "/tutor/showOrders",
            "dom": 'Bfrtip',
            "buttons": [
                'colvis'
            ]
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

</script>
<%------------------------------------------------------------------------------------------------------%>
</body>
</html>