<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <link rel="shortcut icon" type="x-icon" href="./images/easycoach-icon.png">
    <link rel="stylesheet" href="./css-files/registration-styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<body>
    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    <nav class="main-nav">
        <div class="logo">
            <a href="#">
                  <img src="./images/easycoach-logo.jpg" alt="logo" height="80px">
            </a>
        </div>
        <div class="right-side-nav">
            <ul class="links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">Bus Hire</a></li>
                <li><a href="#">Percels</a></li>
                <li><a href="#">Contact us</a></li>
                <li><a href="#">About us</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <div class="form-container">
            
            <form method="post" action="register">
                <h1>Sign up</h1>
                <div class="input">
                    <label for="first_name"><img src="./images/person-icon.svg" alt=""></label>
                    <input type="text" id="first_name" name="first_name" placeholder="First Name" required="required">
                </div>
                <div class="input">
                    <label for="last_name"><img src="./images/person-icon.svg" alt=""></label>
                    <input type="text" id="last_name" name="last_name" placeholder="Last Name" required="required">
                </div>
                <div class="input">
                    <label for="email"><img src="./images/mail-icon.svg" alt=""></label>
                    <input type="email" id="email" name="email" placeholder="Your Email" required="required">
                </div>
                <div class="input">
                    <label for="password"><img src="./images/lock-icon.svg" alt=""></label>
                    <input type="password" id="password" name="password" placeholder="Password" required="required">
                </div>
                 <div class="input">
                    <label for="repeat-password"><img src="./images/lock-icon.svg" alt=""></label>
                    <input type="password" id="repeat-password" name="repeat-password" placeholder="Repeat your password" required="required">
                </div>
                <div class="input">
                    <label for="contact"><img src="./images/contact-icon.svg" alt=""></label>
                    <input type="text" id="contact" name="contact" placeholder="Contact no" required="required">
                </div>
                <div class="input">
                    <label for="contact"><img src="./images/person-icon.svg" alt=""></label>
                    <input type="text" id="id" name="id" placeholder="ID or Passport">
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="agree-to-terms" id="agree-to-terms" required="required">
                    <label for="agree-to-terms">I agree to all <a href="#">Terms and Policy</a></label>
                </div>

                <button type="submit">Register</button>

            </form>
        </div>
        <div class="image-container">
            <div>
                <img src="./images/signup-image.jpg" alt="image">
            </div>
            
            <a href="login-page.jsp">I am already a member</a>
        </div>
    </div>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    	let status = document.getElementById("status").value;
    	if(status == "success"){
    		swal("Congrats", "Account created successfully", "success");
    	}else if(status == "failed"){
    		swal("Sorry", "Account was not created, try again", "error");
    	}else if(status == "invalidUmobile"){
    		swal("Sorry", "Invalid mobile number, try again", "error");
    	}else if(status == "passwordMissmatch"){
    		swal("Sorry", "Passwords do not match, try again", "error");	
    	}
    </script>
</body>
</html>