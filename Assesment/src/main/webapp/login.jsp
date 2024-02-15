<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>Registration Page</title>
    <style>
        body {
           background: linear-gradient(to right, #3498db, #1abc9c);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .registration-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            width: 400px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            border:none;
        }

        .form-control {
            background: none;
            border: 1px solid #fff;
            color: #fff;
        }

        .btn-register {
            background: #3498db;
            color: #fff;
        }
    </style>
</head>

<body>

    <div class="registration-container">
        <h2 class="text-center mb-4">Registration</h2>
        <form method="post" action="AdminController">
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control placeholder" name="email" placeholder="Enter your email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control placeholder" name="password" placeholder="Enter your password">
            </div>
            <button type="submit" class="btn btn-register btn-block" name="action" value="login">Login</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
