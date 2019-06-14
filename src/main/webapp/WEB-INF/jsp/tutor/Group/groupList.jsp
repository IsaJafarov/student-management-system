
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%--include jQuery-----------------------------------------------------------------------%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%--Include dataTables libraries--%>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js "></script>
<%--popup--%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<html>
<head>
    <title>Groups</title>
    <%--For datatable--%>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
    <%--For jquery-ui (pop-up)--%>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
</head>

<body>

<table id="group-list" class="display" style="width: 100%">
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



<script>


    $(document).ready(
        groupTable()
    );



    function groupTable() {
        var table = $('#group-list').DataTable( {
            "processing": true,
            "serverSide": true,
            "ajax": "/tutor/getGroups",

        } );
    } ;



</script>


</body>
</html>

