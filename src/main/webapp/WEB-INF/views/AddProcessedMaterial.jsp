<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Processed Material</title>
<style>
   /* Full-page Background */
body {
  background-color: #f0f4f8; /* Light gray background */
  font-family: Arial, sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
}

/* Form Container */
.container {
  background: #ffffff; /* White background */
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 2rem;
  width: 90%;
  max-width: 400px;
  box-sizing: border-box;
}

/* Form Elements */
form {
  display: flex;
  flex-direction: column;
}

input[type="text"], select {
  padding: 0.75rem;
  margin: 0.5rem 0;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 1rem;
}

input[type="submit"] {
  padding: 0.75rem;
  margin: 0.5rem 0;
  border: none;
  border-radius: 4px;
  background-color: #007bff; /* Blue background */
  color: #ffffff; /* White text */
  font-size: 1rem;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #0056b3; /* Darker blue on hover */
}

/* Placeholder Styling */
input::placeholder {
  color: #aaa; /* Light gray placeholder text */
}

/* Responsive Design */
@media (max-width: 768px) {
  .container {
    width: 100%;
    padding: 1rem;
  }

  input[type="text"], select, input[type="submit"] {
    font-size: 0.875rem; /* Smaller font size on small screens */
  }
}
 
    
</style>
</head>
<body>
    <div class="container">
        <form action="addProcessed" method="post">
            <input type="text" name="pname" placeholder="Enter Processed Material name" required><br>
            <input type="text" name="pquantity" placeholder="Enter Quantity" required><br>
            <select id="runit" name="punit" required>
                <option value="" disabled selected>Select Unit</option>
                <option value="pcs">Pieces</option>
                <option value="kg">Kilogram</option>
                <option value="ltr">Litre</option>
            </select><br>
            <input type="text" name="pcostPerUnit" placeholder="Enter Cost per unit" required><br>
            <input type="submit" value="Add">
        </form>
    </div>
</body>
</html>
