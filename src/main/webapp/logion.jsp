<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

/* Admin Login Form Styling */
:root {
  --primary-color: #3498db;
  --primary-dark: #2980b9;
  --text-color: #333;
  --error-color: #e74c3c;
  --success-color: #2ecc71;
  --background-color: #f8f9fa;
  --box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color: var(--background-color);
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
}

form {
  background-color: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: var(--box-shadow);
  width: 100%;
  max-width: 380px;
}

h2 {
  text-align: center;
  color: var(--text-color);
  margin-bottom: 1.5rem;
  font-weight: 600;
}

label {
  display: block;
  margin-bottom: 0.5rem;
  color: var(--text-color);
  font-weight: 500;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 0.75rem;
  margin-bottom: 1.5rem;
  border: 1px solid #ddd;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 1rem;
  transition: border-color 0.3s ease;
}

input[type="text"]:focus,
input[type="password"]:focus {
  border-color: var(--primary-color);
  outline: none;
  box-shadow: 0 0 0 2px rgba(52, 152, 219, 0.2);
}

input[type="submit"] {
  background-color: var(--primary-color);
  color: white;
  border: none;
  border-radius: 4px;
  padding: 0.75rem;
  font-size: 1rem;
  cursor: pointer;
  width: 100%;
  transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
  background-color: var(--primary-dark);
}

.error-message {
  color: var(--error-color);
  font-size: 0.875rem;
  margin-top: -1rem;
  margin-bottom: 1rem;
  display: none;
}

/* Add this class with JavaScript when validation fails */
.input-error {
  border-color: var(--error-color);
}

/* Optional: Add a branded header */
.admin-header {
  text-align: center;
  margin-bottom: 1.5rem;
}

.admin-header img {
  max-width: 150px;
  margin-bottom: 1rem;
}

/* Optional: Add responsive adjustments */
@media (max-width: 480px) {
  form {
    padding: 1.5rem;
    margin: 0 1rem;
  }
}


</style>

</head>
<body>

<form action="Adminlogin" method="post">

    <label for="username">Username</label>
        <input type="text" id="username" name="n1" required>
        
        <label for="password">Password</label>
        <input type="password" id="password" name="n2" required>
        
        <input type="submit" value="Login">

</form>


</body>
</html>