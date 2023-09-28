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
    /* Define a keyframes animation called 'buttonAnimation' */
    @keyframes buttonAnimation {
            0% {
                transform: scale(1); /* Initial size */
            }
            50% {
                transform: scale(1.2); /* Scale up to 120% at 50% keyframe */
            }
            100% {
                transform: scale(1); /* Return to original size */
            }
        }

        /* Apply the animation to the buttons when hovered */
        .Settings a:hover {
            animation: buttonAnimation 0.5s ease-in-out; /* Apply the animation with a duration of 0.5 seconds */
        }

        .Settings {
            text-align: center;
            margin-bottom: 20px;
        }

        .Settings a {
            display: inline-block;
            padding: 10px 20px; /* Adjust padding to your liking */
            background-color: #2bec4b;
            border: 1px solid #ffffff; /* Add a border for a beveled look */
            box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.5); /* Add a subtle box shadow for a carved effect */
            text-decoration: none;
            color: #333;
            transition: background-color 0.3s ease; /* Add a smooth transition for background color change */
        }

        .Settings a:hover {
            background-color: #28a9f9; /* Change the background color on hover */
            color: #fff;
        }
        
    </style>
    
    
	

</head>

<body>

    <div class="user-info">
        <div class="blur-overlay"></div>

        <img src="img/user.jpeg" alt="User Photo" class="user-photo">
        <div class="user-details">
            <p><strong>Name:</strong><#####></p>
            <p><strong>ID Number:</strong><########></p>
            <p><strong>Email:</strong><########></p>
            <p><strong>Address:</strong><########></p>
            <p><strong>Telephone Number:</strong><########></p>
            
        
            
        </div>
        </div>
        
    
    
</body>
           <center>
           <div class="Settings">
            <a href="update_details.jsp" class="Settings"><center>Account Settings</center></a>
            <a href="update_details.jsp" class="Settings"><center>Appoiment Detailes</center></a>
            </div>
            </center>
            
            
            

</html>


    