<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ticket Page</title>
        <link rel="stylesheet" href="./css-files/ticket-page.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    	<style type="text/css">
    		.user-icon{
			    border: 4px solid rgba(0, 255, 255, 0.774);
			    margin-right: 10px;
			    padding: 10px 10px;
			    border-radius: 50%;
			    color: rgb(77, 160, 77);
			    font-size: 22px;
			    transition: opacity 0.5s;
			    position: relative;
			}
			.tooltip{
			    position: absolute;
			    left: -15px;
			    bottom: -30px;
			    font-size: 14px;
			    padding: 2px 5px;
			    background: #ffdb123f;
			    border-radius: 5px;
			    z-index: 1;
			    color: gray;
			    visibility: hidden; 
			    white-space: nowrap;
			    transition: all 0.5s;
			}
			
			.user-icon:hover .tooltip{
			    visibility: visible;
			}
			.logOut-btn{
			    padding: 13px 15px;
			    text-decoration: none;
			    border-radius: 5px;
			    background-color: rgba(0, 255, 255, 0.356);
			    transition: all 0.5s;
			}
			
			.logOut-btn:hover{
			    background-color: aqua;
			}
    	</style>
    </head>
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
                    <span class="circle completed"></span>
                    <span class="span">Payment</span>
                </div>
                <div>
                    <span class="circle completed"></span>
                    <span class="span">Ticket</span>
                </div>
            </div>
        </div>


        <main>
            <div class="ticket-container">
                <div class="second-container">
                    <div class="left-side">
                        <h1>BOARDING PASS</h1>
                        <div class="grid-container">
                            <div class="fd">
                                <div>
                                    <span>Passanger name:</span>
                                    <h2><%=request.getAttribute("firstName") %> <%=request.getAttribute("lastName") %></h2>
                                </div>
                                <div>
                                    <span>Depature:</span>
                                    <h2><%=request.getAttribute("from") %></h2>
                                </div>  
                            </div>

                            <div class="fd">
                                <div>
                                    <span>Bus:</span>
                                    <h2>BE2344</h2>
                                </div>
                                <div>
                                    <span>Destination:</span>
                                    <h2><%=request.getAttribute("to") %></h2>
                                </div>
                            </div>

                            <div class="last">
                                <ion-icon name="bus"></ion-icon>
                                <h2>Easycoach Buses</h2>
                                <h3>Ticket Number: 1234c</h3>
                            </div>

                        </div>

                        <div class="flex-container">
                            <div>
                                <h3>Date:</h3>
                                <span>12/03/2024</span>
                            </div>
                            <div>
                                <h3>Time:</h3>
                                <span><%=request.getAttribute("depatureTime") %></span>
                            </div>
                            <div>
                                <h3>Seat(s):</h3>
                                <span><%=request.getAttribute("SelectedSeats") %></span>
                            </div>
                            <div>
                                <h3>Price:</h3>
                                <span><%=request.getAttribute("TotalAmoutprice") %></span>
                                <ion-icon name="checkmark-circle-outline"></ion-icon>
                            </div>
                        </div>
                    </div>

                    <div class="right-side">
                        <div>
                            <img src="./images/bus-inside2.jpg" alt="img" width="100%">
                        </div>
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
                <div class="payment">
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
                        <li><a href="#">Nairobi - Eldoret</a></li>
                        <li><a href="#">Nairobi - Mumias</a></li>
                        <li><a href="#">Nairobi - Kisumu</a></li>
                        <li><a href="#">Nairobi - Mombasa</a></li>
                        <li><a href="#">Nairobi - Kitale</a></li>
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
		    var userName2 = ".";
		    userName2 += document.querySelector(".userName").value;
		    if(userName2 !== ".null"){
		    	container. innerHTML = '<a href="#" class="user-icon">'+'<ion-icon name="person"></ion-icon>'+'<span class="tooltip">'+ userName +'</span>'+' </a>'+'<a href="#" class="logOut-btn">Log-out</a>'	
		    	const logOutBtn = document.querySelector(".logOut-btn");
				
				 logOutBtn.addEventListener('click', ()=>{
					 console.log("hello");
					window.location.href = "index.jsp";
				});
		    }
		    
		    
		    
        </script>
    </body>
    
    
</html>