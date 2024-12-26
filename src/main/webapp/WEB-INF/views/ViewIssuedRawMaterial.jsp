<%@page import="com.chaitali.inventorydb.IssueRaw"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issued Raw Materials</title>
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
</style>
</head>
<body>
    <% 
        List<IssueRaw> issueRawMaterial = (List<IssueRaw>) request.getAttribute("issueRawMaterial");
    %>
    <table>
        <tr>
            <th>Issue ID</th>
            <th>Material ID</th>
            <th>Material Name</th>
            <th>Issuer Name</th>
            <th>Quantity</th>
            <th>Date</th>
            <th>Time</th>
            
        </tr>
        <% for (IssueRaw ir : issueRawMaterial) { %>
            <tr>
                <td><%= ir.getId() %></td>
                <td><%= ir.getRid() %></td>
                <td><%= ir.getRname() %></td>
                <td><%= ir.getIname() %></td>
                <td><%= ir.getIquantity() %></td>
                <td><%= ir.getIssueDate() %></td>
                <td><%= ir.getIssueTime() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
