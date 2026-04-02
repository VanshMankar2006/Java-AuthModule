<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Monochrome</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #000000; /* Black Background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #ffffff;
        }

        .login-container {
            background-color: #ffffff; /* White Card */
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 10px 25px rgba(255, 255, 255, 0.1);
            width: 100%;
            max-width: 400px;
            color: #000000; /* Black Text */
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: 700;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #000000;
            background: transparent;
            color: #000000;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            background-color: #f0f0f0;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #000000;
            color: #ffffff;
            border: 2px solid #000000;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: 0.3s;
            margin-top: 10px;
        }

        button:hover {
            background-color: #ffffff;
            color: #000000;
        }

        .footer-links {
            text-align: center;
            margin-top: 20px;
            font-size: 13px;
        }

        .footer-links a {
            color: #000000;
            text-decoration: none;
            border-bottom: 1px solid #000000;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Login</h2>
        <form action="loginPage.jsp" method="POST">
            <div class="form-group">
                <label for="username">Email</label>
                <input type="text" id="username" name="username" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <button type="submit">SIGN IN</button>
        </form>
        
        <div class="footer-links">
            <p>Don't have an account? <a href="register.jsp">Register</a></p>
        </div>
    </div>

</body>
</html>