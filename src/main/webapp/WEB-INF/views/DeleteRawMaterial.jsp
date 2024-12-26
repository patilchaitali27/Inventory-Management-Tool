<%@page import="com.chaitali.inventorydb.RawMaterial"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Raw Materials</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<style>
  .custom-background {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  }
  .custom-table th, .custom-table td {
    color: #fff; /* White */
    border: 1px solid #fff; /* White border */
  }
  .custom-link {
    color: #ff6363; /* Light Red */
  }
  .custom-link:hover {
    color: #ffa3a3; /* Light Red on Hover */
  }
  .custom-card {
    background-color: rgba(0, 0, 0, 0.75); /* Semi-transparent black */
  }
</style>
</head>
<body class="custom-background h-screen flex items-center justify-center">
  <div class="custom-card p-6 rounded-lg shadow-lg">
    <h1 class="text-3xl font-bold text-white mb-6">Raw Materials</h1>
    <%
      List<RawMaterial> rawMaterials = (List<RawMaterial>) request.getAttribute("rawMaterials");
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
          for (RawMaterial raw : rawMaterials) {
        %>
          <tr>
            <td class="border px-4 py-2"><%= raw.getRid() %></td>
            <td class="border px-4 py-2"><%= raw.getRname() %></td>
            <td class="border px-4 py-2"><%= raw.getRquantity() %></td>
            <td class="border px-4 py-2"><%= raw.getRunit() %></td>
            <td class="border px-4 py-2"><%= raw.getRcostPerUnit() %></td>
            <td class="border px-4 py-2"><a href="deleteRaw?id=<%= raw.getRid() %>" class="custom-link">Delete</a></td>
          </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>
</body>
</html>
