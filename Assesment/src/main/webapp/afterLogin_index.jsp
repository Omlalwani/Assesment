<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>Your Website</title>
    <style>
        body {
            background: linear-gradient(to right, #3498db, #1abc9c);
            color: #fff;
        }

        .navbar {
            background: linear-gradient(to right, #3498db, #1abc9c);
        }

        .navbar-brand,
        .navbar-nav .nav-link {
            color: #fff;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
        <%
        	Connection cn = new DBUtil().getConnection();
        	String qry = "select * from user";
        	PreparedStatement st = cn.prepareStatement(qry);
        	ResultSet rs = st.executeQuery();
        	while(rs.next())
        	{
        %>
        
        
            <ul class="navbar-nav mx-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout(<%= rs.getString("firstname") %>)</a>
                </li>
            </ul>
        </div>
        
        <%
        	}
        	cn.close();
        %>
    </nav>

    <!-- Your content goes here -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
