<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | Registration</title>
    <style>
        :root {
            --primary-color: #3b82f6;
            --primary-hover: #2563eb;
            --text-color: #374151;
            --border-color: #e5e7eb;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            line-height: 1.6;
            color: var(--text-color);
            background-color: #f3f4f6;
            padding: 2rem 1rem;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }

        h1 {
            color: #1f2937;
            font-size: 1.875rem;
            margin-bottom: 1rem;
            text-align: center;
        }

        .description {
            text-align: center;
            color: #6b7280;
            margin-bottom: 2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: #374151;
        }

        input {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid var(--border-color);
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.2s, box-shadow 0.2s;
        }

        input:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        input::placeholder {
            color: #9ca3af;
        }

        .password-strength {
            margin-top: 0.5rem;
            font-size: 0.875rem;
            color: #6b7280;
        }

        button {
            width: 100%;
            padding: 0.75rem;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.2s;
        }

        button:hover {
            background-color: var(--primary-hover);
        }

        .divider {
            border: none;
            border-top: 1px solid var(--border-color);
            margin: 1.5rem 0;
        }

        .terms, .signin {
            text-align: center;
            font-size: 0.875rem;
            color: #6b7280;
        }

        a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }

        a:hover {
            text-decoration: underline;
        }

        @media (max-width: 640px) {
            .container {
                padding: 1.5rem;
            }

            h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="contactForm" onsubmit="return validateForm(event)">
            <h1>Create Account</h1>
            <p class="description">Please fill in the form below to get started</p>

            <div class="form-group">
                <label for="name">First Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>

            <div class="form-group">
                <label for="mobile">Enter Phone Number</label>
                <input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile number" pattern="[0-9]{10}" title="Please enter a valid 10-digit mobile number" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Create a strong password" minlength="8" required>
                <div class="password-strength" id="passwordStrength"></div>
            </div>

            <div class="form-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Repeat your password" required>
            </div>

            <button type="submit">Create Account</button>

            <hr class="divider">

            <p class="terms">
                By creating an account you agree to our 
                <a href="#">Terms of Service</a> and 
                <a href="#">Privacy Policy</a>
            </p>

            <p class="signin">
                Already have an account? <a href="#">Sign in</a>
            </p>
        </form>
    </div>

    <script>
        const form = document.getElementById('contactForm');
        const password = document.getElementById('password');
        const confirmPassword = document.getElementById('confirmPassword');
        const passwordStrength = document.getElementById('passwordStrength');

        password.addEventListener('input', function() {
            const value = this.value;
            let strength = 0;
            let message = '';

            if (value.length >= 8) strength++;
            if (value.match(/[a-z]/)) strength++;
            if (value.match(/[A-Z]/)) strength++;
            if (value.match(/[0-9]/)) strength++;
            if (value.match(/[^a-zA-Z0-9]/)) strength++;

            switch (strength) {
                case 0:
                case 1:
                    message = 'Weak password';
                    passwordStrength.style.color = '#ef4444';
                    break;
                case 2:
                case 3:
                    message = 'Moderate password';
                    passwordStrength.style.color = '#f59e0b';
                    break;
                case 4:
                case 5:
                    message = 'Strong password';
                    passwordStrength.style.color = '#10b981';
                    break;
            }

            passwordStrength.textContent = message;
        });

        function validateForm(event) {
            event.preventDefault();

            // Validate passwords match
            if (password.value !== confirmPassword.value) {
                alert('Passwords do not match!');
                return false;
            }

            // Validate email format
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email.value)) {
                alert('Please enter a valid email address!');
                return false;
            }

            // If all validations pass, you can submit the form
            alert('Form submitted successfully!');
            form.reset();
            return true;
        }
    </script>
</body>
</html>

eksctl create cluster --name hayvid  \
--region us-east-1 \
--node-type t2.small \

example:
eksctl create cluster --name valaxy-cluster \
   --region ap-south-1 \
--node-type t2.small \
