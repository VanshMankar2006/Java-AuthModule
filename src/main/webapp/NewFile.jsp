<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | Monochrome</title>
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
            overflow: hidden;
        }

        .welcome-container {
            text-align: center;
            padding: 50px;
            border: 2px solid #ffffff; /* White Border Outline */
            max-width: 500px;
            width: 90%;
            background-color: transparent;
        }

        h1 {
            font-size: 3rem;
            font-weight: 800;
            letter-spacing: 5px;
            margin-bottom: 10px;
            text-transform: uppercase;
        }

        p {
            font-size: 1rem;
            letter-spacing: 1px;
            margin-bottom: 40px;
            color: #cccccc;
        }

        .button-group {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .btn {
            display: block;
            padding: 15px;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
            letter-spacing: 2px;
            transition: 0.4s;
            text-transform: uppercase;
        }

        /* Primary Button: White with Black Text */
        .btn-login {
            background-color: #ffffff;
            color: #000000;
            border: 2px solid #ffffff;
        }

        .btn-login:hover {
            background-color: #000000;
            color: #ffffff;
        }

        /* Secondary Button: Transparent with White Border */
        .btn-register {
            background-color: transparent;
            color: #ffffff;
            border: 2px solid #ffffff;
        }

        .btn-register:hover {
            background-color: #ffffff;
            color: #000000;
        }

        /* Small decorative line */
        .divider {
            width: 50px;
            height: 4px;
            background-color: #ffffff;
            margin: 20px auto;
        }
    </style>
</head>
<body>

    <div class="welcome-container">
        <h1>WELCOME</h1>
        <div class="divider"></div>
        <p>SELECT AN OPTION TO CONTINUE</p>
        
        <div class="button-group">
            <a href="loginPage.jsp" class="btn btn-login">Login</a>
            <a href="register.jsp" class="btn btn-register">Register</a>
        </div>
    </div>

</body>
</html>