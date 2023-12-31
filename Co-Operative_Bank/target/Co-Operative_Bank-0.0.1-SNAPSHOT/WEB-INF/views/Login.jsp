<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Co-Operative Bank - Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        /* CSS styles for the login form */
        html, body {
            height: 100%;
        }

        body {
            display: flex;
            align-items: center;
        }

        #content {
            padding: 20px;
            background-color: #f8f9fa;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            height: calc(1.5em + 0.75rem + 2px);
            padding: 0.375rem 0.75rem;
            font-size: 0.875rem;
        }

        .btn-primary {
            background-color: #333;
            border-color: #333;
        }

        .btn-primary:hover {
            background-color: #111;
            border-color: #111;
            text-shadow: none;
        }

        #forgotPassword {
            display: block;
            font-size: 0.875rem;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div id="content" class="col-md-4 offset-md-4">
            <h1 class="text-center">Login</h1>
            <form id="loginForm" class="mt-4"  action="home" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" placeholder="Enter your username">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter your password">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
                <a href="SendOtp"  id="forgotPassword">Forgot Password?</a>
            </form>
        </div>
    </div>

    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            event.preventDefault();

            // Get the values from the form fields
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            // Perform login logic here
            if (username === "admin" && password === "password") {
            	this.submit();
                // Redirect to the dashboard or desired page

            } else {
                alert("Invalid credentials. Please try again.");
            }
        });
    </script>
</body>
</html>
