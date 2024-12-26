<%@page import="com.chaitali.inventorydb.RawMaterial"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Raw Materials</title>
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
    a {
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    h1
    {
    text-align:center;
    }
</style>
</head>
<body>
<h1>View Raw Material</h1>
    <% 
        List<RawMaterial> rawMaterials = (List<RawMaterial>) request.getAttribute("rawMaterials");
    %>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Unit</th>
            <th>Cost per unit</th>
            <th>Action</th>
            <th>Delete</th>
        </tr>
        <% for (RawMaterial raw : rawMaterials) { %>
            <tr>
                <td><%= raw.getRid() %></td>
                <td><%= raw.getRname() %></td>
                <td><%= raw.getRquantity() %></td>
                <td><%= raw.getRunit() %></td>
                <td><%= raw.getRcostPerUnit() %></td>
                <td><a href="issuedRaw?id=<%= raw.getRid() %>&name=<%= raw.getRname() %>">Issue</a></td>
                <td><a href="deleteRaw?id=<%= raw.getRid() %>" class="custom-link">Delete</a></td></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
