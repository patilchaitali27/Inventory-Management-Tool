<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue Raw Material</title>
<style>
  /* Basic Reset */
  body, h1, form {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  /* Full-page Background */
  body {
    background: #f0f4f8; /* Light gray background */
    font-family: Arial, sans-serif;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
  }

  /* Form Container Styles */
  .form-container {
    background: #ffffff; /* White background */
    padding: 2rem;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
    text-align: center;
  }

  /* Form Heading Styles */
  .form-heading {
    margin-bottom: 1rem;
    font-size: 1.5rem;
    color: #333;
  }

  /* Input Field Styles */
  input[type="text"],
  input[type="date"],
  input[type="time"] {
    width: 100%;
    padding: 0.75rem;
    border-radius: 4px;
    border: 1px solid #ddd;
    margin-bottom: 1rem;
    font-size: 1rem;
  }

  input[type="text"]::placeholder,
  input[type="date"]::placeholder,
  input[type="time"]::placeholder {
    color: #aaa;
  }

  /* Submit Button Styles */
  input[type="submit"] {
    background: #007bff; /* Bootstrap Blue */
    color: #ffffff;
    border: none;
    padding: 0.75rem;
    border-radius: 4px;
    cursor: pointer;
    font-size: 1rem;
  }

  input[type="submit"]:hover {
    background: #0056b3; /* Darker blue on hover */
  }
</style>
</head>
<body>
  <div class="form-container">
    <h1 class="form-heading">Issue Raw Material</h1>
    <%
      int rid = Integer.parseInt(request.getParameter("id"));
      String rname = request.getParameter("name"); 
    %>
    <form action="issueRawMaterial" method="post">
      <input type="text" name="rid" value="<%=rid %>" readonly><br>
      <input type="text" name="rname" value="<%=rname %>" readonly><br>
      <input type="text" name="iname" placeholder="Enter Issuer Name"><br>
      <input type="text" name="iquantity" placeholder="Enter Quantity"><br>
      <input type="date" name="issueDate" placeholder="Enter Date"><br>
      <input type="time" name="issueTime" placeholder="Enter Time"><br>
      <input type="submit" value="Issue">
    </form>
  </div>
</body>
</html>
