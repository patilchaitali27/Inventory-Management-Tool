<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Issue Processed Material</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

  <style>
    /* Custom Background */
    .custom-background {
      background-image: url('path/to/your/background-image.jpg'); /* Replace with your background image URL */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }

    /* Container for the form */
    .form-container {
      background-color: rgba(255, 255, 255, 0.85); /* Semi-transparent white background */
      padding: 2rem;
      border-radius: 0.5rem;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      max-width: 32rem; /* 512px */
      width: 100%;
    }

    /* Heading Styles */
    .form-heading {
      font-size: 1.75rem; /* 28px */
      font-weight: bold;
      color: #1a202c; /* Gray-900 */
      margin-bottom: 1.5rem; /* 24px */
      text-align: center;
    }

    /* Input Field Styles */
    .form-input {
      width: 100%;
      padding: 0.75rem; /* 12px */
      border-radius: 0.375rem; /* 6px */
      border: 1px solid #cbd5e0; /* Gray-300 */
      background-color: #edf2f7; /* Gray-100 */
      color: #1a202c; /* Gray-900 */
      margin-bottom: 1rem; /* 16px */
      box-sizing: border-box;
    }

    /* Submit Button Styles */
    .form-submit {
      width: 100%;
      padding: 0.75rem; /* 12px */
      border-radius: 0.375rem; /* 6px */
      background-color: #3182ce; /* Blue-600 */
      color: #ffffff;
      cursor: pointer;
      font-size: 1rem; /* 16px */
      font-weight: bold;
      border: none;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      transition: background-color 0.3s ease;
    }

    .form-submit:hover {
      background-color: #2b6cb0; /* Blue-700 */
    }
  </style>
</head>
<body class="custom-background h-screen flex items-center justify-center">
  <div class="form-container">
    <h1 class="form-heading">Issue Processed Material</h1>
    <%
      int pid = Integer.parseInt(request.getParameter("id"));
      String pname = request.getParameter("name");
    %>
    <form action="issuedProcessedMaterial" method="post" class="space-y-4">
      <input type="text" name="pid" value="<%= pid %>" class="form-input" readonly>
      <input type="text" name="pname" value="<%= pname %>" class="form-input" readonly>
      <input type="text" name="ipname" placeholder="Enter Issuer Name" class="form-input">
      <input type="text" name="ipquantity" placeholder="Enter Quantity" class="form-input">
      <input type="date" name="pissueDate" class="form-input">
      <input type="time" name="pissueTime" class="form-input">
      <input type="submit" value="Issue" class="form-submit">
    </form>
  </div>
</body>
</html>
