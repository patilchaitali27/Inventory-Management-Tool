<%@page import="java.util.List"%>
<%@page import="com.chaitali.inventorydb.ProcessedMaterial"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Processed Materials</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<style>
  .custom-background {
    background-image: url('path/to/your/background-image.jpg'); /* Replace with your background image URL */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }
  .custom-table th, .custom-table td {
    color: #fff; /* White */
    border: 1px solid #fff; /* White border */
  }
  .custom-link {
    color: #fff; /* White */
  }
  .custom-link:hover {
    color: #ccc; /* Light Gray */
  }
</style>
</head>
<body class="custom-background h-screen flex items-center justify-center">
  <div class="bg-black bg-opacity-75 p-6 rounded-lg">
    <h1 class="text-3xl font-bold text-white mb-6">Processed Materials</h1>
    <%
      List<ProcessedMaterial> processedMaterials = (List<ProcessedMaterial>) request.getAttribute("processedMaterials");
    %>
    <table class="custom-table min-w-full text-white">
      <thead>
        <tr>
          <th class="px-4 py-2">ID</th>
          <th class="px-4 py-2">Name</th>
          <th class="px-4 py-2">Quantity</th>
          <th class="px-4 py-2">Unit</th>
          <th class="px-4 py-2">Cost per Unit</th>
          <th class="px-4 py-2">Action</th>
        </tr>
      </thead>
      <tbody>
        <%
          for (ProcessedMaterial pro : processedMaterials) {
        %>
          <tr>
            <td class="border px-4 py-2"><%= pro.getPid() %></td>
            <td class="border px-4 py-2"><%= pro.getPname() %></td>
            <td class="border px-4 py-2"><%= pro.getPquantity() %></td>
            <td class="border px-4 py-2"><%= pro.getPunit() %></td>
            <td class="border px-4 py-2"><%= pro.getPcostPerUnit() %></td>
            <td class="border px-4 py-2"><a href="deleteProcessed?id=<%= pro.getPid() %>" class="custom-link">Delete</a></td>
          </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>
</body>
</html>
