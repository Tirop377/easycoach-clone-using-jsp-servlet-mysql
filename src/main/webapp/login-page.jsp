<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in page</title>
    <link rel="shortcut icon" type="x-icon" href="./images/easycoach-icon.png">
    <link rel="stylesheet" href="./css-files/sign-in-styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
<body>
    <div class="container">
        <div class="image-container">
            <img src="./images/signin-image.jpg" alt="image">
            <p><a href="./registration-page.jsp">Create an account</a></p>
        </div>
        <div class="form-container">
            <h1>Sign in</h1>
           
            <form method="post" action="sign-in">
                <div class="input">
                    <label for="email"><img src="./images/mail-icon.svg" alt="image"></label>
                    <input type="text" id="email" name="email" placeholder="Your email" required="required">
                </div>
                <div class="input">
                    <label for="password"><img src="./images/lock-icon.svg" alt="image"></label>
                    <input type="password" id="password" name="password" placeholder="Password" required="required">
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="remember-me" id="remember-me">
                    <label for="remember-me">Remember me</label>
                </div>
                <button type="submit">Log in</button>

                <div class="other-options">
                    <span>Or login with:</span>
                    <a href="#" class="icon facebook">
                        <ion-icon name="logo-facebook"></ion-icon>
                    </a>
                    <a href="#" class="icon twitter">
                        <ion-icon name="logo-twitter"></ion-icon>
                    </a>
                    <a  href="#" class="icon google">
                        <ion-icon name="logo-google"></ion-icon>
                    </a>   
                </div>
            </form>
        </div>
    </div>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script> 
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    	let status = document.getElementById("status").value;
    	if(status == "failed"){
    		swal("Sorry", "Wrong email or password, try again", "error");
    	}
    </script>
     
</body>
</html>
