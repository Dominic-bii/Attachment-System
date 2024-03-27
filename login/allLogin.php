<!-- login.php -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="style.css">
  
</head>
<body>
  <form action="process_login.php" method="post">
    <label for="user">Select User:</label>
    <select name="user" id="user">
      <option value="admin">ADMIN</option>
      <option value="industrialSpv">INDUSTRIAL SUPERVISOR</option>
      <option value="parent">PARENT</option>
      <option value="student">STUDENT</option>
      <option value="universitySpv">UNIVERSITY SUPERVISOR</option>
    </select>
    <button type="submit">Login</button>
  </form>
</body>
</html>
