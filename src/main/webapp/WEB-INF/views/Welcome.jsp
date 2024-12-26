<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <style>
    .custom-background {
      background-image: url('Inventory/src/main/webapp/resources/1.png'); /* Replace with your background image URL */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }
  </style>
</head>
<body class="custom-background h-screen flex items-center justify-center">
  <div class="bg-black bg-opacity-75 p-8 rounded-lg shadow-lg max-w-sm w-full">
    <h1 class="text-3xl font-bold text-white mb-6 text-center">Admin Login</h1>
    <form action="loginAdmin" method="post" class="space-y-4">
      <input type="email" name="email" placeholder="Enter your Email" class="w-full p-3 rounded border border-gray-300 text-black">
      <input type="password" name="password" placeholder="Enter password" class="w-full p-3 rounded border border-gray-300 text-black">
      <input type="submit" value="Login" class="w-full p-3 bg-white text-black rounded cursor-pointer hover:bg-gray-200">
    </form>
  </div>
</body>
</html>
