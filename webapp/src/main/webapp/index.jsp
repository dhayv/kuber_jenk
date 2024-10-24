<!DOCTYPE html>
<html>
<head>
    <p>By hayvid</p>
    <title>Contact Us</title>
    <style>
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            opacity: 0.8;
        }
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }
    </style>
</head>
<body>
    <form action="action_page.php" method="post">
        <div class="container">
            <h1>Submit Form to Contact Us</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>

            <label for="Name"><b>Enter Name</b></label>
            <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>
            
            <label for="mobile"><b>Enter Mobile</b></label>
            <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>
            
            <label for="email"><b>Enter Email</b></label>
            <input type="email" placeholder="Enter Email" name="email" id="email" required>
            
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
            
            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
            
            <hr>
            
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
            <button type="submit" class="registerbtn">Register</button>
        </div>
        
        <div class="container signin">
            <p>Already have an account? <a href="#">Sign in</a>.</p>
        </div>
    </form>
</body>
</html>


