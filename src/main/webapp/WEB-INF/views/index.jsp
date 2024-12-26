<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <style>
    .custom-background {
      background-image: url('path/to/your/background-image.jpg'); /* Replace with your background image URL */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      position: relative;
    }

    .overlay {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.6); /* Dark overlay */
      z-index: 1;
    }

    .login-container {
      position: relative;
      z-index: 2;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      text-align: center;
      color: #ffffff;
    }

    .login-container h2 {
      font-size: 2.5rem; /* 40px */
      font-weight: bold;
      margin-bottom: 1rem;
      animation: fadeInDown 1s ease-in-out;
    }

    .login-container a {
      background-color: #3182ce; /* Blue-600 */
      color: #ffffff;
      padding: 0.75rem 1.5rem; /* 12px 24px */
      border-radius: 0.375rem; /* 6px */
      text-decoration: none;
      font-size: 1.25rem; /* 20px */
      font-weight: bold;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      transition: background-color 0.3s ease, transform 0.3s ease;
      animation: fadeInUp 1s ease-in-out;
    }

    .login-container a:hover {
      background-color: #2b6cb0; /* Blue-700 */
      transform: translateY(-2px);
    }

    @keyframes fadeInDown {
      0% {
        opacity: 0;
        transform: translateY(-20px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes fadeInUp {
      0% {
        opacity: 0;
        transform: translateY(20px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>
</head>
<body class="custom-background">
  <div class="overlay"></div>
  <div class="login-container">
    <h2>Welcome to Inventory Management Tool</h2>
    <a href="login" class="btn btn-primary">Login</a>
  </div>
</body>
</html>
