<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

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
        <section id="account-delete" >
            <h2>Delete Account</h2>
            <button id="delete-account-button" type="submit" onclick="myFunction()">Delete My Account</button>
        </section>
    </main>
    
    <script>
function myFunction() {
  let text;
  if (confirm("Do you wont to delete user account?") == true) {
		    var form = document.createElement("form");
		    form.method = "post";
		    form.action = "userDelete";

		    document.body.appendChild(form);
		    form.submit();
  } 
 
}
</script>

   <main>
    <section id="change-password">
        <h2>Change Password</h2>
        <form id="change-password-form" action="passwordUpdate" method="post" onsubmit="return confirm('Do you want to change your password?');">

            <label for="new-password">New Password:</label>
            <input type="password" id="new-password" name="new-password" required>

            <label for="confirm-password">Confirm New Password:</label>
            <input type="password" id="confirm-password" name="confirmPassword" required>

            <button type="submit">Change Password</button>
        </form>
    </section>
</main>

	<%
		String nic = request.getParameter("nic");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tpno = request.getParameter("tpno");
	%>
    <main>
    <section id="update-details">
        <h2>Update User Details</h2>
        <form id="update-details-form" action="userUpdate" method="post" onsubmit="return confirm('Do you want to update your details?');">

            <label for="userNic">User NIC:</label>
            <input type="text" id="userNic" name="userNic" value="<%= nic %>" required readonly>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%= name %>" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= email %>" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="<%= address %>" required>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" value="<%= tpno %>" required>

            <button type="submit">Update Details</button>
        </form>
    </section>
</main>

    </main>

</body>

<script>
        document.getElementById('change-password-form').addEventListener('submit', function(event) {
            const password = document.getElementById('new-password').value;
            const confirmPassword = document.getElementById('confirm-password').value;

            if (password !== confirmPassword) {
                alert('Passwords do not match.');
                event.preventDefault();
            }
        });
    </script>
</html>
