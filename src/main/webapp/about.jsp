<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us | Monochrome</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', sans-serif; }
        body { background-color: #ffffff; color: #000000; } /* Inverted theme for About page */

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 10%;
            border-bottom: 2px solid #000;
            background: #fff;
        }
        .logo { font-size: 24px; font-weight: 800; color: #000; }
        .nav-links a {
            color: #000;
            text-decoration: none;
            margin-left: 30px;
            text-transform: uppercase;
            font-size: 13px;
            font-weight: 600;
        }

        .about-section {
            padding: 100px 10%;
            max-width: 900px;
        }
        h2 { font-size: 3rem; text-transform: uppercase; margin-bottom: 30px; border-left: 10px solid #000; padding-left: 20px; }
        p { font-size: 1.2rem; line-height: 1.8; margin-bottom: 20px; color: #333; }
        
        .grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            margin-top: 50px;
        }
        .grid-item { border: 2px solid #000; padding: 20px; }
        .grid-item h3 { text-transform: uppercase; margin-bottom: 10px; }
    </style>
</head>
<body>

    <nav>
        <div class="logo">MONO.</div>
        <div class="nav-links">
            <a href="home.jsp">Dashboard</a>
            <a href="about.jsp">About Us</a>
            <a href="${pageContext.request.contextPath}/logout" class="logout-btn">Logout</a>
        </div>
    </nav>

    <div class="about-section">
        <h2>About The Project</h2>
        <p>This is a minimalist Java-based web application designed with a focus on core functionality and high-contrast UI aesthetics. By removing the distraction of color, we focus entirely on the user experience and data structure.</p>
        
        <div class="grid">
            <div class="grid-item">
                <h3>Our Mission</h3>
                <p>To provide a clean, distraction-free interface for managing digital assets and user data.</p>
            </div>
            <div class="grid-item">
                <h3>The Tech</h3>
                <p>Built using JSP, Servlets, and a 3-layer architecture for maximum scalability.</p>
            </div>
        </div>
    </div>

</body>
</html>