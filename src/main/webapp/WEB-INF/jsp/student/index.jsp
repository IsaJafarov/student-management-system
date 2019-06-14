<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <style>
        table, th, td{
            border: 1px solid black;
        }
        table{
            width: 60%;
            border-collapse: collapse;
        }
        /*tr{*/
        /*    width: 100px;*/
        /*}*/
    </style>
</head>
<body>

<a href="/logout/"> <button >LOG OUT</button> </a> <br/><br/>

<%--<button onclick="connect()">Connect</button>    <br/> <br/>--%>

<input type="text" id="input-id"/>              <br/> <br/>

<button onclick="sendMessage()">Send</button>
<br/>
<table id="conversation-table">
    <thead>
        <tr>
            <th>Came</th>
            <th>Sent</th>
        </tr>
    </thead>
    <tbody>

    </tbody>

</table>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script>
    $(document).ready(function () {
        connect();
    });

    function connect() {
        socket = new SockJS('/myChoice');
        stompClient = Stomp.over(socket);
        stompClient.connect({}, function (frame) {
            stompClient.subscribe('/topic/destination', renderPublicMessages);
        });
    }

    function renderPublicMessages(message) {
        var json = JSON.parse(message.body);
        if (JSON.parse(message.body).sender !== 'student') {
            $("#conversation-table tbody").append(
                "<tr>" +
                "<td><small style='color: blue;'>"+new Date(json.time).getHours()+":" + new Date(json.time).getMinutes()+" </small>"+json.content+"</td>" +
                "<td></td>" +
                "</tr>"
            );
        }
    }

    function sendMessage() {
        var time = new Date();
        var localTime = new Date(time.getTime()-time.getTimezoneOffset()*60*1000); //because it doesn't consider GMT when I return new Date()
        var instantMessage = {
            'content': $("#input-id").val(),
            'sender': "student",
            'receiver': "everybody",
            'time': localTime
        };
        stompClient.send("/app/", {}, JSON.stringify(instantMessage));
        $("#conversation-table tbody").append(
            "<tr>" +
            "<td></td>" +
            "<td><small style='color: blue;'>"+time.getHours()+":" + time.getMinutes()+" </small>"+instantMessage.content+"</td>" +
            "</tr>"
        );
    }
</script>

</body>
</html>
