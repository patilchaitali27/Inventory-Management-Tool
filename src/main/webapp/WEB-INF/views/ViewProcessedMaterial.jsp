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
    a {
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    h1{
    text-align:center;
    }
</style>
</head>
<body>
<h1>View Processed Material</h1>
		<% 
			List<ProcessedMaterial> processedMaterials=(List<ProcessedMaterial>)request.getAttribute("processedMaterials");
		%>
		<table>
			<tr>
				<th> ID </th>
				<th> Name </th>
				<th> Quantity </th>
				<th> Unit </th>
				<th> Cost per unit </th>
				<th> Action </th>
				<th>Delete</th>
			</tr>
			<%
				for(ProcessedMaterial pro:processedMaterials)
				{%>
					<tr>
						<td><%= pro.getPid() %></td>
						<td><%= pro.getPname() %></td>
						<td><%= pro.getPquantity() %></td>
						<td><%= pro.getPunit() %></td>
						<td><%= pro.getPcostPerUnit() %></td>
						<td><a href="issuedProcessed?id=<%= pro.getPid()%>&name=<%= pro.getPname()%>"> Issue </a></td>
						<td><a href="deleteProcessed?id=<%= pro.getPid() %>" class="custom-link">Delete</a></td>
					</tr>
				<%}
			%>
		</table>
</body>
</html>