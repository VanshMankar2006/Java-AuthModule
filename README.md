# Java-AuthModule
A session-based authentication system built using Java Servlets, JSP, and JDBC. This project demonstrates a classic web architecture for managing user login, logout, and protected routing.

Features
Secure Authentication
Access Control:Public Routes: Pages like About Us are accessible to everyone.
Protected Routes: Specific JSP views are restricted and can only be accessed after a successful login.
Data Integrity: Uses the DTO (Data Transfer Object) pattern to pass user credentials between the web layer and the backend logic.

Tech Stack
Frontend: JSP, HTML, CSS
Backend: Java (Servlets, DTOs)
Database: PostgreSQL (via JDBC)
Server: Apache Tomcat
