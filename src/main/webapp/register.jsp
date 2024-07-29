<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .input-group {
            margin-bottom: 15px;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .button-group {
            text-align: center;
        }
        .button-group input {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #28a745;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .button-group input:hover {
            background-color: #218838;
        }
        .message {
            color: red;
            text-align: center;
            margin-top: 15px;
        }
        .success {
            color: green;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <form action="register" method="post">
            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="button-group">
                <input type="submit" value="Register">
            </div>
            <div class="message">
                <% if (request.getParameter("error") != null) { %>
                    Registration failed. Please try again.
                <% } %>
                <% if (request.getParameter("register") != null) { %>
                    Registration successful! You can now <a href="index.jsp">login</a>.
                <% } %>
            </div>
        </form>
    </div>
</body>
</html>
