<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <link rel="shortcut icon" type="x-icon" href="./images/easycoach-icon.png">
    <link rel="stylesheet" href="./css-files/payment-page.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<input type="hidden" class="userString" value="<%=request.getAttribute("userString")%>">
<input type="hidden" class="userName" value="<%=request.getAttribute("userName")%>">
<body>

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
            <div class="this">
                <a href="login-page.jsp" class="login-btn">Log in</a>
                <a href="registration-page.jsp" class="signup-btn">Sign up</a>
            </div>
        </div>
    </nav>

    <div class="progress-bar-container">
        <div class="progress-bar">
            <div>
                <span class="circle completed"></span>
                <span class="span">Booking Passenger details</span>
            </div>
            <div>
                <span class="circle inprogress"></span>
                <span class="span">Payment</span>
            </div>
            <div>
                <span class="circle"></span>
                <span class="span">Ticket</span>
            </div>
        </div>
    </div>

    <main>
        <div class="first-container">
            <div class="second-container">
                <form method="post" action="BookNowServlet">
                    <div class="details-form">
                        <div class="heading">
                            <h1 class="medium-fontSize">Booking Submission</h1>
                            <p>Need to Cancel or Change your ticket? Email our Team <a href="#">easycoach@gmail.com</a></p>
                        </div>
                        <div class="inputs-grid">
                            <div>
                                <label for="first-name">First Name</label>
                                <div class="input2-container">
                                    <input type="text" name="first-name" id="first-name" placeholder="First Name" required="required">
                                    <ion-icon name="person-outline" class="icon"></ion-icon>
                                </div>  
                            </div>
                            <div>
                                <label for="last-name">Last Name</label>
                                <div class="input2-container">
                                    <input type="text" name="last-name" id="last-name" placeholder="Last Name" required="required">
                                    <ion-icon name="person-outline" class="icon"></ion-icon>
                                </div>  
                            </div>
                            <div>
                                <label for="id">ID/Passport</label>
                                <div class="input2-container">
                                    <input type="text" name="id" id="id" placeholder="ID/Passport" maxlength="8">
                                    <ion-icon name="mail-outline" class="icon"></ion-icon>
                                </div>  
                            </div>

                            <div>
                                <label for="residence">Residence</label>
                                <div class="input2-container">
                                    <input type="text" name="residence" id="residence" placeholder="Residence" required="required">
                                    <ion-icon name="location-outline" class="icon"></ion-icon>
                                </div>  
                            </div>
                            <div>
                                <label for="contact">Passenger phone number</label>
                                <div class="input2-container">
                                    <input type="text" name="contact" id="contact" placeholder="e.g 072000012" maxlength="10" minlength="10" required="required">
                                    <ion-icon name="call-outline" class="icon"></ion-icon>
                                </div>  
                            </div>
                            <div>
                                <h3>Passenger(s) <span><%=request.getAttribute("Totalpassengers") %></span> Seat(s) <span><%=request.getAttribute("SelectedSeats") %></span></h3>
                            </div>
                            
                        </div>
                    </div>

                    <div class="payment">
                        <h2 class="medium-fontSize">Your payment Information</h2>
                        <label for="sms-contact">Mpesa Number (Your ticket SMS will be sent to this number)</label>
                        <div class="sms-contact">
                            <input type="text" name="sms-contact" id="sms-contact" placeholder="Safaricom mpesa no" maxlength="10" required="required">
                            <ion-icon name="chatbox-ellipses-outline" class="icon"></ion-icon>
                        </div> 
                        <p>Please Note: Once seats are selected and paid for, they cannot be changed. Tickets are non-refundable.</p>
                        <div class="checkbox">
                            <input type="checkbox" name="terms" id="terms" required="required">
                            <label for="terms">By submitting my personal data, i consent to Easycoach Limited collecting, processing, and storing my information in accordance with the <a href="#">Easycoach privacy Policy</a> and <a href="#">Terms and Conditions.</a></label>
                        </div>
                        <input type="hidden" name="myName" value="<%=request.getAttribute("userName")%>">
                        <button type="submit">
                            <img src="./images/1200px-M-PESA_LOGO-01.svg.png" alt="img" width="80px">
                            PAY WITH MPESA
                        </button>
                    </div>
                </form>

                <div class="order-details">
                    <h1 class="medium-fontSize">Your Booking</h1>
                    <img src="./images/bus-image1.jpg" alt="img" width="100%">
                    <h2 class="medium-fontSize"><%=request.getAttribute("from") %> - <%=request.getAttribute("to") %></h2>

                    <div>
                        <ion-icon name="calendar-outline"></ion-icon><span>Depature</span><br>
                        <span class="time"> <%=request.getAttribute("depatureTime") %></span>
                    </div>
                    <div>
                        <ion-icon name="calendar-outline"></ion-icon>
                        <span>Arrival</span><br>
                        <span class="time">5:00 AM(morning)</span>
                    </div>

                    <h2 class="medium-fontSize">Order Details</h2>

                    <p>Passenger(s) :  <span><%=request.getAttribute("Totalpassengers") %></span></p>
                    <p>Total Price:  =<span><%=request.getAttribute("TotalAmoutprice") %></span></p>
                </div>
            </div>
        </div>
    </main>
    
    <div class="lastSection-continer">
	    <div class="second">
	        <div class="contacts">
	            <div class="icon">
	                <ion-icon name="call-outline"></ion-icon>
	            </div>
	            <div class="text">
	                <h3>Need help? Contact Us</h3>
	                <p>0114393394</p>
	                <p>easycoach@support.com</p>
	            </div>
	        </div>
	        <div class="Payment">
	            <div class="icon">
	                <ion-icon name="cash-outline"></ion-icon>
	            </div>
	            <div class="text">
	                <h3>Payment</h3>
	                <p>Payment with mpesa</p>
	            </div>
	        </div>
	        <div class="policy">
	            <div class="icon">
	                <ion-icon name="close-outline"></ion-icon>
	            </div>
	            <div class="text">
	                <h3>Cancel Policy</h3>
	                <p>Once seats are selected and paid for they cannot be changed. Tickets are non-refundable</p>
	            </div>               
	        </div>
	    </div>
	</div>
       

    <div class="red-bar">
        <h1>Easycoach is simply the best</h1>
    </div>
    <footer>
        <div class="container-in-footer">
            <div class="logo">
                <img src="./images/easycoach-logo.jpg" alt="" width="250px">
            </div>
            <div>
                <h3>Our Company</h3>
                <ul>              
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#">Bus Hire</a></li>
                    <li><a href="#">Percels</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">About us</a></li>
                </ul>
            </div>
            <div>
                <h3>Our Contacts</h3>
                <ul>
                    <li><a href="#">0722939494</a></li>
                    <li><a href="#">0722939494</a></li>
                    <li><a href="#">0722939494</a></li>
                </ul>
                <h4>Email:</h4>
                <p><a href="#">support@easycoachkenya.com</a></p>
                <p><a href="#">support@easycoachkenya.com</a></p>
            </div>
            <div >
                <h3>Top Routes</h3>
                <ul>
                    <li><a href="index?from=Nairobi&to=Eldoret">Nairobi - Eldoret</a></li>
                    <li><a href="index?from=Nairobi&to=Mumias">Nairobi - Mumias</a></li>
                    <li><a href="index?from=Nairobi&to=Kisumu">Nairobi - Kisumu</a></li>
                    <li><a href="index?from=Nairobi&to=Mombasa">Nairobi - Mombasa</a></li>
                    <li><a href="index?from=Nairobi&to=Kitale">Nairobi - Kitale</a></li>
                </ul>
            </div>
            <div class="apps"> 
                <h3>GET THE APP</h3>
                <a href="#">
                    <img src="./images/app-logo-GooglePlay.png" alt="img" width="170px">
                </a>
                <div class="social-apps">
                    <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
                    <a href="#"><ion-icon name="logo-twitter"></ion-icon></a>
                </div>

            </div>

        </div>
        <div class="copyright-bar">
            <p>Copyright&copy; 2024 <span>Easycoach.</span>All rights reserved</p>
        </div>
    </footer>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    
    <script type="text/javascript">
	    const container = document.querySelector(".this");
	    var userName = document.querySelector(".userName").value; 
	    var dataString = document.querySelector(".userString").value;
	    var userData = dataString.split(" ")
	    
	    
	    console.log(userData)
	    
	    console.log(userName);
	    var userName2 = ".";
	    userName2 += document.querySelector(".userName").value;
	    if(userName2 !== ".null"){
			container. innerHTML = '<a href="#" class="user-icon">'+'<ion-icon name="person"></ion-icon>'+'<span class="tooltip">'+ userName +'</span>'+' </a>'+'<a href="#" class="logOut-btn">Log-out</a>'	
			const logOutBtn = document.querySelector(".logOut-btn");
			document.getElementById("first-name").value = userData[0]
		    document.getElementById("last-name").value = userData[1]
		    document.getElementById("contact").value = userData[2]
		    document.getElementById("sms-contact").value = userData[2]
		    document.getElementById("id").value =  userData[3]	
			
			 logOutBtn.addEventListener('click', ()=>{
				 console.log("hello");
				window.location.href = "index.jsp";
			});
	    }
    
    </script>
</body>
</html>