<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="login-container">
        <div class="login-header">
            <h2>Login</h2>
        </div>
        <form action="login" method="post">
            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="pass" name="password" required>
            </div>
            <div class="button-group">
                <button type="submit" class="btn">Submit</button>
                <button type="reset" class="btn btn-clear">Clear</button>
                <button type="button" class="btn btn-register" onclick="window.location.href='register.jsp'">Register</button>
            </div>
            <p id="error-message">
                <% if (request.getParameter("error") != null) { %>
                    User ID or password is incorrect, please check again.
                <% } %>
            </p>
        </form>
    </div>
</body>
</html>
