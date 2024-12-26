<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Processed Material</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<style>
  /* Center the form */
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f7fafc; /* Gray-100 */
    margin: 0;
  }

  /* Container for the form */
  .form-container {
    background-color: #ffffff; /* White */
    padding: 2rem;
    border-radius: 0.5rem; /* 8px */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    max-width: 24rem; /* 384px */
    width: 100%;
  }

  /* Input Field Styles */
  .form-input {
    width: 100%;
    padding: 0.75rem; /* 12px */
    margin-bottom: 1rem; /* 16px */
    border-radius: 0.375rem; /* 6px */
    border: 1px solid #cbd5e0; /* Gray-300 */
    background-color: #edf2f7; /* Gray-100 */
    color: #1a202c; /* Gray-900 */
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
<body>
  <div class="form-container">
    <form action="updateProcessed" method="post">
      <input type="text" name="pid" placeholder="Enter Processed Material Id" class="form-input">
      <input type="text" name="pquantity" placeholder="Enter Quantity" class="form-input">
      <input type="submit" value="Update" class="form-submit">
    </form>
  </div>
</body>
</html>
