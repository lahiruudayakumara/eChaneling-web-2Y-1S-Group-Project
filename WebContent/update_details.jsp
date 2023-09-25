<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        const deleteAccountButton = document.querySelector('.account-delete');

        deleteAccountButton.addEventListener('click', (event) => {
            event.preventDefault(); // Prevent the default form submission

            const result = confirm('Are you sure you want to delete your account?'); // Display the pop-up dialog box

            if (result) {
                // User clicked "OK" or "Yes"
                // Perform delete account action or redirect to delete account page
                window.location.href = 'delete_user.php?id=<?php echo $ID; ?>';
            } else {
                // User clicked "Cancel" or "No"
                // Do nothing or perform any desired action
            }
        });
    });
</script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="css/update_details.css">
    <style>
        body {
            display: flex;
            flex-direction: row-reverse; /* Change direction to right-to-left */
        }

        main {
            flex: 1;
        }

        /* Add a transparent background to sections */
        section {
            background-color: rgba(83, 229, 15, 0.8); 
            padding: 20px;
            border-radius: 10px; 
            margin: 10px; 
        }
    </style>
    
</head>
<body>

    <main>
        <section id="account-delete">
            <h2>Delete Account</h2>
            <button id="delete-account-button">Delete My Account</button>
        </section>
    </main>

    <main>
        <section id="change-password">
            <h2>Change Password</h2>
            <form id="change-password-form">
                <label for="current-password">Current Password:</label>
                <input type="password" id="current-password" name="current-password" required>

                <label for="new-password">New Password:</label>
                <input type="password" id="new-password" name="new-password" required>

                <label for="confirm-password">Confirm New Password:</label>
                <input type="password" id="confirm-password" name="confirm-password" required>

                <button type="submit">Change Password</button>
            </form>
        </section>
    </main>

    <main>
        <section id="update-details">
            <h2>Update User Details</h2>
            <form id="update-details-form">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>

                <button type="submit">Update Details</button>
            </form>
        </section>
    </main>

</body>
</html>
