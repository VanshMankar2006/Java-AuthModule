<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home | Monochrome</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', sans-serif; }
        body { background-color: #000000; color: #ffffff; }

        /* Navigation Bar */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 10%;
            border-bottom: 1px solid #333;
            background: #000;
        }
        .logo { font-size: 24px; font-weight: 800; letter-spacing: 3px; }
        .nav-links a {
            color: #ffffff;
            text-decoration: none;
            margin-left: 30px;
            text-transform: uppercase;
            font-size: 13px;
            letter-spacing: 1px;
            transition: 0.3s;
        }
        .nav-links a:hover { border-bottom: 2px solid #ffffff; }
        .logout-btn {
            background: #ffffff;
            color: #000;
            padding: 8px 20px;
            font-weight: bold;
            border: 2px solid #ffffff;
        }
        .logout-btn:hover { background: #000; color: #fff; }

        /* Content */
        .container {
            height: 80vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        h1 { font-size: 4rem; text-transform: uppercase; letter-spacing: 10px; margin-bottom: 10px; }
        .status-badge {
            border: 1px solid #fff;
            padding: 5px 15px;
            font-size: 12px;
            text-transform: uppercase;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
	<% 
	
		if(session.getAttribute("username")==null){
			response.sendRedirect("loginPage.jsp");
		}
	
	
	%>

    <nav>
        <div class="logo">MONO.</div>
        <div class="nav-links">
            <a href="dashboard.jsp">Dashboard</a>
            <a href="about.jsp">About Us</a>
            <a href="${pageContext.request.contextPath}/logout" class="logout-btn">Logout</a>
        </div>
    </nav>

    <div class="container">
        <div class="status-badge">Session Active</div>
        <h1>Dashboard</h1>
        <p>Welcome back. You are currently logged in to the system.</p>
    </div>

</body>
</html>