<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing page</title>
    <link rel="stylesheet" href="./css-files/landing-page.css">
    
    <link rel="shortcut icon" type="x-icon" href="./images/easycoach-icon.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>

<input type="hidden" class="userName" value="<%=request.getAttribute("userName")%>">


<body>
    <nav class="main-nav">
        <div class="logo">
            <a href="index.jsp">
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

    <section class="booking-main-container">
        <div class="date-destination-info">
            <span class="from-to"><%=request.getAttribute("from-destination") %> - <%=request.getAttribute("to-destination") %></span><br>
            <span class="date">2024-03-06</span>
        </div>
       
        <div class="custom-select" style="width:200px;">
            <select>
                <option value="0"><%=request.getAttribute("from-destination") %></option>
                <option value="1">Nairobi</option>
                <option value="2">Eldoret</option>
                <option value="3">Mombasa</option>
                <option value="4">Kisumu</option>
                <option value="5">Mumias</option>
                <option value="6">Kisii</option>
                <option value="7">Kitui</option>
            </select>
        </div>
        <div class="custom-select" style="width:200px;">
            <select>
                <option value="0"><%=request.getAttribute("to-destination") %></option>
                <option value="1">Nairobi</option>
                <option value="2">Eldoret</option>
                <option value="3">Mombasa</option>
                <option value="4">Kisumu</option>
                <option value="5">Mumias</option>
                <option value="6">Kisii</option>
                <option value="7">Kitui</option>
            </select>
        </div>

        <div class="date-display">
            <ion-icon name="calendar-outline"></ion-icon>
            <span>2024-03-06</span>
        </div>

        <button type="button">Make a Booking</button>
    </section>

    <main>
        <h1>
            <span class="from"> <%=request.getAttribute("from-destination")%></span> <ion-icon class="arrow" name="arrow-forward-outline"></ion-icon><span class="to"><%=request.getAttribute("to-destination") %></span>
        </h1>
        
        <div class="date-container">
            <button class="left-btn">
                <ion-icon name="chevron-back-outline"></ion-icon>
            </button>
            <div>
                <h3><%=request.getAttribute("prevDayOfWeek") %>, <%=request.getAttribute("prevDateOfMonth") %> <%=request.getAttribute("prevMonth") %></h3>
            </div>
            <div class="selected-date">
                <h3 ><%=request.getAttribute("dayOfWeek") %>, <%=request.getAttribute("dateOfMonth") %> <%=request.getAttribute("month") %></h3>
            </div>
            <div>
                <h3><%=request.getAttribute("nextDayOfWeek") %>, <%=request.getAttribute("nextDateOfMonth") %> <%=request.getAttribute("nextMonth") %></h3>
            </div>
            <button class="right-btn">
                <ion-icon name="chevron-forward-outline"></ion-icon>
            </button>
        </div>

        <div class="buses-info-container">
        	<%=request.getAttribute("buses") %>
        </div>
    </main>

    <div class="select-seat-container">
        <button class="close-section">
            <ion-icon name="close-outline"></ion-icon>
        </button>
        <div class="guide-container">
            <div>
                <div class="box"></div>
                <span>Available</span>
            </div>
            <div>
                <div class="box occupied-seat"></div>
                <span>Occupied</span>
            </div>

            <div>
                <div class="box selected-seat"></div>
                <span>Selected</span>
                </div>
            </div>

            <div class="bus">
                <h3>Driver</h3>
                <div class="row">
                    <div class="box St">
                        <span class="seat">1A</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2A</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3A</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1B</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2B</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3B</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1C</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2C</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3C</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1D</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2D</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3D</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1E</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2E</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3E</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1F</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2F</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3F</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1G</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2G</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3G</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1H</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2H</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3H</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1I</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2I</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3I</span>
                    </div>
                </div>

                <div class="row">
                    <div class="box St">
                        <span class="seat">1J</span>
                    </div>
                    <div class="box St">
                        <span class="seat">2J</span>
                    </div>
                    <div class="box St">
                        <span class="seat">3J</span>
                    </div>
                </div>
            </div>

            <div class="book-now">
                <span class="total-price">Ksh 1700</span>
                <button class="bookNow">BOOK NOW</button>
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
    	//const JavaBuses = document.querySelector(".buses").value;
    	//const busesTable = document.querySelector(".buses-info-container");
    	const Span = document.querySelectorAll('.seat');
		const St = document.querySelectorAll('.St');
        const selectSeatButton = document.querySelectorAll('.select-seat-btn');
        const busSection = document.querySelector('.select-seat-container');
        const closeBuseSectionBtn = document.querySelector('.close-section');
        const totalPrice = document.querySelector('.total-price');
        const bookNow = document.querySelector('.bookNow'); 
    	
    	const buses = document.querySelectorAll('.buses-table');
    	
    	function loadOccupiedSeats(Index){
    		var obs = buses[Index].getAttribute('data-busOccupiedSeats');
    		var myArr;
    		if(obs){
        		myArr = obs.split(" ");
        		myArr.shift();
        		myArr.pop();
        		myArr.pop();
        
        		Span.forEach((span, index)=>{	
        			myArr.forEach((seatId)=>{
        	        	if(seatId == span.innerHTML){
        	            	St[index].classList.add("occupied-seat");
        	           		St[index].disabled = true;
        	        	}   
        	         });	
        		});	
    		}
    	}
    	
    	
    
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
    
    
        var x, i, j, l, ll, selElmnt, a, b, c;
        x = document.getElementsByClassName("custom-select");
        l = x.length;
        for (i = 0; i < l; i++) {
            selElmnt = x[i].getElementsByTagName("select")[0];
            ll = selElmnt.length;
            a = document.createElement("DIV");
            a.setAttribute("class", "select-selected");
            a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
            x[i].appendChild(a);
            b = document.createElement("DIV");
            b.setAttribute("class", "select-items select-hide");
            for (j = 1; j < ll; j++) {
                c = document.createElement("DIV");
                c.innerHTML = selElmnt.options[j].innerHTML;
                c.addEventListener("click", function(e) {
                    var y, i, k, s, h, sl, yl;
                    s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                    sl = s.length;
                    h = this.parentNode.previousSibling;
                    for (i = 0; i < sl; i++) {
                        if (s.options[i].innerHTML == this.innerHTML) {
                            s.selectedIndex = i;
                            h.innerHTML = this.innerHTML;
                            y = this.parentNode.getElementsByClassName("same-as-selected");
                            yl = y.length;
                            for (k = 0; k < yl; k++) {
                            y[k].removeAttribute("class");
                            }
                            this.setAttribute("class", "same-as-selected");
                            break;
                        }
                    }
                    h.click();
                });
                b.appendChild(c);
            }
            x[i].appendChild(b);
            a.addEventListener("click", function(e) {
                e.stopPropagation();
                closeAllSelect(this);
                this.nextSibling.classList.toggle("select-hide");
                this.classList.toggle("select-arrow-active");
            });
        }

        function closeAllSelect(elmnt) {
            var x, y, i, xl, yl, arrNo = [];
            x = document.getElementsByClassName("select-items");
            y = document.getElementsByClassName("select-selected");
            xl = x.length;
            yl = y.length;
            for (i = 0; i < yl; i++) {
                if (elmnt == y[i]) {
                arrNo.push(i)
                } else {
                y[i].classList.remove("select-arrow-active");
                }
            }
            for (i = 0; i < xl; i++) {
                if (arrNo.indexOf(i)) {
                x[i].classList.add("select-hide");
                }
            }
        }

        document.addEventListener("click", closeAllSelect);
		
		
		
		var price = 0.00
		var UserslelectedSeats = [];
        St.forEach((seat, index)=>{
            seat.addEventListener('click', ()=>{
                
                if(seat.classList.contains('selected-seat')){
                	seat.classList.remove('selected-seat');
                	UserslelectedSeats.pop(Span[index].innerText);
                	if(price > 1700){
                		price -= 1700;
                		totalPrice.innerText = "Ksh " + price;
                		
                	}else{
                		document.querySelector('.book-now').style.display = 'none';	
                		price = 0;
                	}
                	
                }else{
                	seat.classList.add('selected-seat');
                	UserslelectedSeats.push(Span[index].innerText);
               
                	document.querySelector('.book-now').style.display = 'block';
                	price += 1700.00;
                	totalPrice.innerText = "Ksh " + price;
                	console.log(UserslelectedSeats);
                	console.log(UserslelectedSeats.join(" ") + ".");
                }
                
            })     
        });
         var busIdentifier;
        selectSeatButton.forEach((button, index)=>{
            button.addEventListener('click', ()=>{
            	loadOccupiedSeats(index);
            	busIdentifier = index;
            	busSection.style.visibility = "visible"; 
              	busSection.style.top = '0';
              	
            })
        });

        closeBuseSectionBtn.addEventListener('click', ()=>{
            busSection.style.top = '-500px';
            busSection.style.visibility = "hidden";
        })
        
        
        bookNow.addEventListener('click', ()=>{
        	const SelectedSeats = UserslelectedSeats.join(" ");
        	const depatureLocation = document.querySelector(".from").innerText;
        	const arivalLocation = document.querySelector(".to").innerText;
        	const depatureTime = document.querySelector(".Dtime").innerText;
        	const TotalAmoutprice = totalPrice.innerText;
        	const Totalpassengers = UserslelectedSeats.length;
        	
        	
        	if(userName2 !== ".null"){
            	window.location.href = "BookNowServlet?from="+depatureLocation+"&to="+arivalLocation+"&depatureTime="+depatureTime+"&TotalAmoutprice="+TotalAmoutprice+"&Totalpassengers="+Totalpassengers+"&SelectedSeats="+SelectedSeats+"&userName="+userName+"&busIdentifier="+busIdentifier;    
        	}else{
            	window.location.href = "BookNowServlet?from="+depatureLocation+"&to="+arivalLocation+"&depatureTime="+depatureTime+"&TotalAmoutprice="+TotalAmoutprice+"&Totalpassengers="+Totalpassengers+"&SelectedSeats="+SelectedSeats+"&userName="+""+"&busIdentifier="+busIdentifier;
        	}
        	
        	
        });
          

    </script>
</body>
</html>