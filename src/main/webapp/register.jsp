<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .container {
            max-width: 400px;
            width: 100%;
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-weight: 700;
        }
        .input-group {
            margin-bottom: 20px;
        }
        .input-group label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 400;
        }
        .input-group input {
            width: 100%;
            padding: 12px;
            border: 2px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }
        .input-group input:focus {
            border-color: #667eea;
            outline: none;
        }
        .btn {
		    padding: 12px 24px;
		    border: none;
		    border-radius: 50px;
		    cursor: pointer;
		    font-size: 16px;
		    font-weight: 600;
		    transition: all 0.3s ease;
		    text-transform: uppercase;
		}
        .button-group {
            text-align: center;
            margin-top: 30px;
        }
        .button-group input {
            padding: 12px 30px;
            border: none;
            border-radius: 50px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            font-size: 18px;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .button-group input:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        .message {
            text-align: center;
            margin-top: 20px;
            font-weight: 300;
        }
        .error {
            color: #e74c3c;
        }
        .success {
            color: #2ecc71;
        }
        @media (max-width: 480px) {
            .container {
                padding: 30px;
            }
            h2 {
                font-size: 24px;
            }
            .input-group input, .button-group input {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Create Account</h2>
        <form action="register" method="post">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required placeholder="Enter your username">
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>
            <div class="button-group">
                <input type="submit" value="Register">
                <button type="button" class="btn" onclick="window.location.href='index.jsp'">Login</button>
            </div>
            <div class="message">
                <% if (request.getParameter("error") != null) { %>
                    <p class="error">Registration failed. Please try again.</p>
                <% } %>
                <% if (request.getParameter("register") != null) { %>
                    <p class="success">Registration successful! You can now <a href="index.jsp">login</a>.</p>
                <% } %>
            </div>
        </form>
    </div>
</body>
</html>