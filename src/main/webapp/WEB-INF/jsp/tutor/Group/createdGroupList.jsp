<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
</head>
<body>

<table id="newGroup-list" class="display" style="width: 100%">
    <!--display is a class in the imported dataTables.min.css-->
    <thead>
    <tr>
        <th>Group Id</th> <!--0-->
        <th>Group Name</th>
        <th>Creation Date</th>
        <th>Faculty</th>
        <th>Profession</th>
        <th>Section</th>
        <th>Student Number</th>
        <th>Actions</th>
    </tr>
    </thead>


    <tfoot>
    <tr>
        <th>Group Id</th> <!--0-->
        <th>Group Name</th>
        <th>Creation Date</th>
        <th>Faculty</th>
        <th>Profession</th>
        <th>Section</th>
        <th>Student Number</th>
        <th>Actions</th>
    </tr>
    </tfoot>
</table>


<%--include jQuery-----------------------------------------------------------------------%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%--Include dataTables libraries--%>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js "></script>
<%--popup--%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>


    $(document).ready(
        groupTable()
    );



    function groupTable() {
        var table = $('#newGroup-list').DataTable( {
            "processing": true,
            "serverSide": true,
            "orderable": false,
            "ajax": "/tutor/createNewGroup",
            "targets": [1,2,3],
            "columnDefs": [
                {
                    "orderable": false,
                    "targets": [2]
                }
                ]
        } );
    } ;



</script>


</body>
</html>

