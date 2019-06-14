<%@ page import="mainPack.domain.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="mainPack.domain.DataTableResult" %>
<%@ page import="com.google.gson.Gson" %><%--
  Created by IntelliJ IDEA.
  User: elnurquluzade
  Date: 2019-03-12
  Time: 02:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Student> studentList = (List<Student>) request.getAttribute("studentList");
    DataTableResult dataTableResult = new DataTableResult();


    dataTableResult.setRecordsFiltered(studentList.size());
    dataTableResult.setRecordsTotal(studentList.size());
    dataTableResult.setDraw(request.getParameter("draw"));

    String[][] data = new String[studentList.size()][8];
    for(int i = 0; i < studentList.size(); i++){
        Student student = studentList.get(i);
        data[i][0] = student.getName();
        data[i][1] = student.getSurname();
        data[i][2] = student.getFather_name();
        data[i][3] = String.valueOf(student.getBirth_date());
        data[i][4] = String.valueOf(student.getEntry_score());
        data[i][5] = student.getProfession();
        data[i][6] = student.getSection();
        data[i][7] = String.valueOf(student.getId());

    }

    dataTableResult.setData(data);

    Gson gson = new Gson();
    out.print(gson.toJson(dataTableResult));



%>