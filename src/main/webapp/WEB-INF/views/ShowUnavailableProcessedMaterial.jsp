<%@page import="com.chaitali.inventorydb.ProcessedMaterial"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        background-color: #fff;
    }
    table, th, td {
        border: 1px solid #ccc;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    h1
    {
    text-align:center;
    }
</style>
</head>
<body>
<h1>Show Unavailable Processed Material</h1>
<% 
        List<ProcessedMaterial> processedMaterials0 = (List<ProcessedMaterial>) request.getAttribute("processedMaterials0");
    %>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Unit</th>
            <th>Cost per unit</th>
        </tr>
        <% for (ProcessedMaterial p : processedMaterials0) { %>
            <tr>
                <td><%= p.getPid() %></td>
                <td><%= p.getPname() %></td>
                <td><%= p.getPquantity() %></td>
                <td><%= p.getPunit() %></td>
                <td><%= p.getPcostPerUnit() %></td>
            </tr>
        <% } %>
    </table>
    </body>
</html>