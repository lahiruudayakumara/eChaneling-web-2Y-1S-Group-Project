<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Info Page</title>
    <link rel="stylesheet" href="css/user_info.css">

    <style>
        .user-info {
            margin-top: 5px;
            margin-bottom: 50px;
            background-color: rgba(255, 255, 255, 0.7); /* Transparent white background */
            padding: 50px;
            border-radius: 50px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
        }

        .user-photo {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .user-details {
            margin-bottom: 50px;
        }

        .user-details p {
            margin: 10px 0;
            font-size: 16px;
            color: #333;
        }

        .button-group {
            display: flex;
        }

        .logo img {
            width: 80px;
            height: 80px;
        }
    </style>
	

</head>

<body>

    <div class="user-info">
        <div class="blur-overlay"></div>

        <img src="img/user.jpeg" alt="User Photo" class="user-photo">
        <div class="user-details">
            <p><strong>Name:</strong><#####></p>
            <p><strong>Email:</strong><########></p>
            <p><strong>Address:</strong><########></p>
            <p><strong>Telephone Number:</strong><########></p>
            <p><strong>Appoiment date:</strong><##########></p>
            <p><strong>Vanue:</strong><##########></p>
            
        </div>
        <div class="Settings">
            <a href="update details.html" class="Settings">Account Settings</a>
            </div>
        </div>
        
    </div>
</body>

</html>


    