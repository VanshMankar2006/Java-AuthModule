<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Monochrome</title>
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
            min-height: 100vh;
            color: #ffffff;
            padding: 20px 0;
        }

        .register-container {
            background-color: #ffffff; /* White Card */
            padding: 40px;
            border-radius: 4px;
            box-shadow: 0 10px 30px rgba(255, 255, 255, 0.05);
            width: 100%;
            max-width: 450px;
            color: #000000;
        }

        h2 {
            text-align: center;
            margin-bottom: 10px;
            text-transform: uppercase;
            letter-spacing: 3px;
            font-weight: 800;
        }

        p.subtitle {
            text-align: center;
            font-size: 12px;
            color: #666;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-size: 13px;
            font-weight: 700;
            text-transform: uppercase;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1.5px solid #000000;
            background: #ffffff;
            color: #000000;
            outline: none;
            transition: all 0.3s ease;
        }

        input:focus {
            background-color: #f8f8f8;
            box-shadow: 4px 4px 0px #000000; /* Brutalist shadow effect */
        }

        .btn-register {
            width: 100%;
            padding: 14px;
            background-color: #000000;
            color: #ffffff;
            border: 2px solid #000000;
            cursor: pointer;
            font-size: 14px;
            font-weight: 900;
            letter-spacing: 2px;
            text-transform: uppercase;
            margin-top: 20px;
            transition: 0.3s;
        }

        .btn-register:hover {
            background-color: #ffffff;
            color: #000000;
        }

        .footer-links {
            text-align: center;
            margin-top: 25px;
            font-size: 13px;
        }

        .footer-links a {
            color: #000000;
            font-weight: bold;
            text-decoration: none;
            border-bottom: 2px solid #000000;
        }
    </style>
</head>
<body>

    <div class="register-container">
        <h2>Join Us</h2>
        <p class="subtitle">Create your monochrome account</p>
        
        <form action="register.jsp" method="POST">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="fullName" placeholder="e.g. Jhon Snow" required>
            </div>

            <div class="form-group">
                <label>Roll Number</label>
                <input type="text" name="rollNo" placeholder="SY25ETE..." required>
            </div>

            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required>
            </div>

            <div class="form-group">
                <label>Confirm Password</label>
                <input type="password" name="confirmPassword" required>
            </div>
            
            <button type="submit" class="btn-register">Create Account</button>
        </form>
        
        <div class="footer-links">
            Already a member? <a href="loginPage.jsp">Login here</a>
        </div>
    </div>

</body>
</html>