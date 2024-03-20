<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-icon" href="./images/easycoach-icon.png">
    <title>Home Page</title>
    <link rel="stylesheet" href="./css-files/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
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

    <main class="main">
        <div class="large-image-background">
        </div>
        <div class="middle-section">
            <form method="post" action="index" class="booking-section">
                <div class="radio-btn">
                    <input type="radio" name="one-way" id="one-way" checked>
                    <label for="one-way">One way</label>
                </div>
               
                <div class="from-input input">
                    <label for="from-destinations">From:</label>
                    <select name="from-destinations" id="from-destinations" class="inputBox">
	                    <option value="Nairobi">Nairobi</option>
	                    <option value="Eldoret">Eldoret</option>
	                    <option value="Mombasa">Mombasa</option>
	                    <option value="Kisi">Kisi</option>
	                    <option value="Kapsabet">Kapsabet</option>
	                    <option value="Kericho">Kericho</option>
	                    <option value="Kisumu">Kisumu</option>
	                    <option value="Migori">Migori</option>
	                    <option value="Lodwar">Lodwar</option>
	                    <option value="Machakos">Machakos</option>
                    </select>
                </div>
                <div class="to-input input">
                    <label for="to-destinations">To:</label>
                    <select name="to-destinations" id="to-destinations" class="inputBox">
	                    <option value="Meru">Meru</option>
	                    <option value="Nairobi">Nairobi</option>
	                    <option value="Eldoret">Eldoret</option>
	                    <option value="Mombasa">Mombasa</option>
	                    <option value="Kitui">Kitui</option>
	                    <option value="Kisi">Kisi</option>
	                    <option value="Kapsabet">Kapsabet</option>
	                    <option value="Kericho">Kericho</option>
	                    <option value="Kisumu">Kisumu</option>
	                    <option value="Migori">Migori</option>
	                    <option value="Lodwar">Lodwar</option>
	                    <option value="Machakos">Machakos</option>
                    </select>
                </div>
                <div class="depature-time-input input">
                    <label for="depature">Depature:</label>
                    <input type="date" name="depature" id="depature" class="inputBox">
                </div>
                <input type="hidden" name="myName" value="<%=request.getAttribute("userName")%>">
                <button type="submit">Make a Booking</button>
            </form>
       </div>

            <div class="long-image">
            </div>

            <div class="more-info">
                <div>
                    <ion-icon name="bus-outline" class="icon"></ion-icon>
                    <h2>Comfort on board</h2>
                    <p>Our buses are equipped with large and comfortable seats</p>
                </div>
           
                <div>
                    <ion-icon name="location-outline" class="icon"></ion-icon>
                    <h2>Largest bus network in Kenya</h2>
                    <p>Choose from over 35 travel destinations all around Africa</p>
                </div>
                <div>
                    <ion-icon name="leaf-outline" class="icon"></ion-icon>
                    <h2>Travel environmentally-friendly</h2>
                    <p>Our efficient coaches are proven to have an excellent carbon footprint.</p>
                </div> 
            </div>
    </main>
    <section class="top-destinations">
        <h1>Top Destinations</h1>
        <div class="container">
            <div class="card">
                <div class="image-container btn">
                    <span>Nairobi</span>
                    <img src="./images/nairobi.jpeg" alt="img" width="100%">
                </div>
                <h2>Nairobi to Mombasa</h2>
            </div>
            <div class="card">
                <div class="image-container btn">
                    <img src="./images/eldoret-town.jpg" alt="img" width="100%">
                    <span>Eldoret</span>
                </div>
                <h2>Nairobi to Eldoret</h2>
            </div>
            <div class="card">
                <div class="image-container btn">
                    <img src="./images/kisumu-town.jpg" alt="img" width="100%">
                    <span>Kisumu</span>
                </div>
                <h2>Nairobi to Kisumu</h2>
            </div>
            <div class="card">
                <div class="image-container btn">
                    <img src="./images/busia-town.jpg" alt="img" width="100%">
                    <span>Busia</span>
                </div>
                <h2>Nairobi to Busia</h2>
            </div>
            <div class="card">
                <div class="image-container btn">
                    <img src="./images/kericho-town.jpg" alt="img" width="100%">
                    <span>Kericho</span>
                </div>
                <h2>Nairobi to Kericho</h2>
            </div>
            <div class="card">
                <div class="image-container btn">
                    <img src="./images/migori-town.jpg" alt="img" width="100%">
                    <span>Migori</span>
                </div>
                <h2>Nairobi to Sirare</h2>
            </div>
        </div> 
        <div class="second-long-image">
            <h2>Discover all destinations</h2>
            <p>Choose from over 35 travel destinations.</p>
        </div>
        <h1>Awards</h1>
        <div class="awards">
            <div>
                <img src="./images/first-award.jpeg" alt="img" width="100%">
            </div>
            <div>
               <img src="./images/second-award.png" alt="img" width="100%">
            </div>
            <div>
                <img src="./images/third-award.jpeg" alt="img" height="100px">
            </div>
            <div>
                <img src="./images/fourth-award.png" alt="img" height="100px">
            </div>    
        </div>

       <h1 class="h1-span">Our Happy Travelers</h1>
   

        <div class="comments-container">
            <div class="comment">
                <p>I've used Easy Coach Ltd for the last 7 years, 4/6 times in each of those years... efficiency, reliability and most importantly safety has been your mantra all along, keep it up.
                </p>
                <h2>Kevin Biwott</h2>
                <h3>Kenya</h3>
                <ul class="ratings">
                    <li><ion-icon name="star" class="star-icon"></ion-icon></li>
                    <li><ion-icon name="star" class="star-icon"></ion-icon></li>
                    <li><ion-icon name="star" class="star-icon"></ion-icon></li>
                    <li><ion-icon name="star" class="star-icon"></ion-icon></li>
                    <li><ion-icon name="star-half-outline" class="star-icon"></ion-icon></li>
                </ul>
            </div>
            <div class="comment">
                <p>This for sure is the one and only recommended passengers urban connections. Why am I not surprised that it keeps scooping the "Best and Safest Road Transport" year in year out. Love you Easy!
                </p>
                <h2>James Mutemi</h2>
                <h3>Kenya</h3>
                <ul class="ratings">
                    <li><ion-icon name="star" class="star-icon"></ion-icon></li>
                    <li><ion-icon name="star" class="star-icon"></ion-icon></li>
                    <li><ion-icon name="star" class="star-icon"></ion-icon></li>
                    <li><ion-icon name="star" class="star-icon"></ion-icon></li>
                    <li><ion-icon name="star-half-outline" class="star-icon"></ion-icon></li>
                </ul>
            </div>
        </div>
    </section>
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
    const btn = document.querySelectorAll('.btn');
    const container = document.querySelector(".this");
    var userName2 = ".";
    var userName = document.querySelector(".userName").value;
    userName2 += document.querySelector(".userName").value;
    
    
    const to = [ "Mombasa", "Eldoret","Kisumu", "Busia","Kericho", "Migori"];
		btn.forEach((button, index)=>{
    		button.addEventListener('click', ()=>{
    			let destination = to[index];
    			if(userName2 !== ".null"){
    				window.location.href = "index?from=Nairobi&to="+destination+"&userName="+userName;	
    			}else{
    				window.location.href = "index?from=Nairobi&to="+destination
    			}
     			
   			});
	});
		

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