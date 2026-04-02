<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard | Monochrome</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', sans-serif; }
        body { background-color: #000000; color: #ffffff; }

        /* Navigation Bar (Consistent with your Home) */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 10%;
            border-bottom: 1px solid #333;
            background: #000;
        }
        .logo { font-size: 24px; font-weight: 800; letter-spacing: 3px; }
        .nav-links { display: flex; align-items: center; }
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
            color: #000 !important;
            padding: 8px 20px;
            font-weight: bold;
            border: 2px solid #ffffff;
        }
        .logout-btn:hover { background: #000 !important; color: #fff !important; }

        /* Dashboard Content */
        .main-content {
            padding: 60px 10%;
        }
        .welcome-section { margin-bottom: 40px; }
        .welcome-section h1 { font-size: 3rem; letter-spacing: 5px; text-transform: uppercase; }
        
        /* Dashboard Cards/Grid */
        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }
        .card {
            border: 1px solid #333;
            padding: 30px;
            transition: 0.3s;
            cursor: pointer;
        }
        .card:hover { border-color: #ffffff; background: #111; }
        .card h3 { font-size: 14px; text-transform: uppercase; letter-spacing: 2px; margin-bottom: 10px; color: #888; }
        .card p { font-size: 24px; font-weight: 300; }
        
        .status-online { color: #00ff00; font-size: 12px; margin-left: 10px; }
    </style>
</head>
<body>
    <% 
        // Session Guard
        if(session.getAttribute("username") == null){
            response.sendRedirect("loginPage.jsp");
        }
    %>

    <nav>
        <div class="logo">MONO.</div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="about.jsp">About Us</a>
            <a href="${pageContext.request.contextPath}/logout" class="logout-btn">Logout</a>
        </div>
    </nav>

    <div class="main-content">
        <div class="welcome-section">
            <h1>Control Panel</h1>
            <p>User: <strong><%= session.getAttribute("username") %></strong> <span class="status-online">● Online</span></p>
        </div>

        <div class="dashboard-grid">
            <div class="card">
                <h3>Profile</h3>
                <p>Manage Account</p>
            </div>
            <div class="card">
                <h3>Projects</h3>
                <p>View My Work</p>
            </div>
            <div class="card">
                <h3>Settings</h3>
                <p>System Config</p>
            </div>
            <div class="card">
                <h3>Analytics</h3>
                <p>Performance Data</p>
            </div>
        </div>
    </div>

</body>
</html>