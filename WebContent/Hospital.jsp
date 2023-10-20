<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Directory</title>
    <link rel="stylesheet" href="css/hospital.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" href="H&F.css">
    <link rel="stylesheet" type="text/css "href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/footer.css">
    <style>
        .hospital-container {
            display: flex;
            justify-content: space-between;
        }

        .left-container, .right-container {
            width: 48%; /* Set the width to 48% for both containers to account for spacing */
            text-align: center;
            padding: 10px;
            border: 1px solid #ccc; /* Add borders for separation */
        }

        .left-container {
            order: 1; /* Display the left container first */
        }

        .right-container {
            order: 2; /* Display the right container second */
        }

        .hospital {
            text-align: center;
            margin-bottom: 20px; /* Add spacing between hospitals */
        }

        .image-slider {
            width: 300px; /* Set a fixed width for the image slider */
            height: 200px; /* Set a fixed height for the image slider */
            margin: 0 auto;
            position: relative;
            overflow: hidden;
        }

        .slide {
            display: none;
            width: 100%; /* Ensure the image takes up the full width of the slider */
            height: 100%; /* Ensure the image takes up the full height of the slider */
            object-fit: cover; /* Maintain aspect ratio and cover the entire slider area */
            transition: opacity 1s ease;
        }

        .slide:first-child {
            display: block;
        }

        .image-slider img {
            width: 100%;
            height: 100%;
        }

        .image-slider .prev, .image-slider .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            padding: 10px;
            background: rgba(0, 0, 0, 0.5);
            color: white;
        }

        .image-slider .prev {
            left: 0;
        }

        .image-slider .next {
            right: 0;
        }
    </style>
</head>
<body>
  
    <header class="header">
        <div class="hcontainer">
            <nav class="navbar">
               <div class="logo"><a href="#"><img src="img/logo.jpg" alt="logo"></a></div>
               <ul class="nav-links">
                    <li><a href="home.jsp">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn">Services</a>
                        <div class="dropdown-content">
                            <a href="Hospital.jsp">Hospital</a>
                            <a href="#">Doctors</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn">Products</a>
                        <div class="dropdown-content">
                            <a href="#">Foods</a>
                            <a href="#">Medicine</a>
                            <a href="#">Accessories</a>
                            <a href="#">Toys</a>
                        </div>
                    </li>
                    <li><a href="about_us.jsp">About us</a></li>
                    <li><a href="contact.jsp">Contact </a></li>
                    <li><a href="user_info.jsp">User Info</a></li>
                </ul>
                <div class="nav-buttons">
                    <a href="register.jsp" class="sbutton">Sign Up</a>
                    <a href="login.jsp" class="sbutton">Sign In</a>
                </div>
            </nav>
        </div>
    </header>
      <header>
        <h1>Hospital Directory</h1>
    </header>
    <main>
        <div class="hospital-container">
            <div class="left-container">
                <section class="hospital">
                    <div class="image-slider">
                        <img class="slide" src="img/asiri/011.jpg" alt="Hospital 1 - Photo 1">
                        <img class="slide" src="img/asiri/Asiri-Hospital-Ward.jpg" alt="Hospital 1 - Photo 2">
                         <img class="slide" src="img/asiri/image_1d3d57840e.jpg" alt="Hospital 1 - Photo 3">
                          <img class="slide" src="img/asiri/MB_8-7.jpg" alt="Hospital 1 - Photo 4">
                        <!-- Add more images for the same hospital as needed -->
                    </div>
                    <h2>Asiri Hospital</h2>
                    <p>Address: 114 Norris Canal Rd, Colombo 01000<br>Phone: <a href="tel:0114665500">0114 665 500</a></p>

                    <p>Services:<br> 24-hour OPD/accident and emergency services.<br>
								24-hour laboratory services and pharmacy.<br>
								Channelled consultation.<br>
								Fully-equipped operating theatre complex.<br>
								General/neurological/orthopaedic/maternity/genitourinary surgery.<br>
								Eye unit/eye surgery.<br>
								Dental clinic.<br>
								Intensive care unit (ICU)/neonatal ICU</p>
                </section>

                <!-- Add more hospitals on the left side -->
                <section class="hospital">
                    <div class="image-slider">
                        <img class="slide" src="img/lanka/download%20(1).jpeg" alt="Hospital 1 - Photo 1">
                        <img class="slide" src="img/lanka/download.jpeg" alt="Hospital 1 - Photo 2">
                         <img class="slide" src="img/lanka/images.jpeg" alt="Hospital 1 - Photo 3">
                          <img class="slide" src="img/lanka/LANKA-HOSPITALS.png" alt="Hospital 1 - Photo 4">
                    </div>
                    <h2>Lanka Hospitals</h2>
                    <p>Address: 578 Elvitigala Mawatha, Colombo 00500<br>Phone: <a href="tel:0115430000">0115 430 000</a></p>
                    <p>Services: Service A, Service B, Service C</p>
                </section>

                <section class="hospital">
                    <div class="image-slider">
                       <img class="slide" src="img/hemas/download%20(2).jpeg" alt="Hospital 1 - Photo 1">
                        <img class="slide" src="img/hemas/download.jpeg" alt="Hospital 1 - Photo 2">
                         <img class="slide" src="img/hemas/images%20(1).jpeg" alt="Hospital 1 - Photo 3">
                          <img class="slide" src="img/hemas/images.jpeg" alt="Hospital 1 - Photo 4">
                    </div>
                    <h2>Hemas Hospital</h2>
                    <p>Address: 647/2A Pannipitiya Road, Thalawathugoda 10116<br>Phone: <a href="tel:0117888888">0117 888 888</a></p>

                    <p>Services: Service A, Service B, Service C</p>
                </section>
            </div>
            <div class="right-container">
                <section class="hospital">
                    <div class="image-slider">
                        <img class="slide" src="img/nawaloka/download%20(1).jpeg" alt="Hospital 1 - Photo 1">
                        <img class="slide" src="img/nawaloka/download%20(2).jpeg" alt="Hospital 1 - Photo 2">
                         <img class="slide" src="img/nawaloka/download.jpeg" alt="Hospital 1 - Photo 3">
                          <img class="slide" src="img/nawaloka/images.jpeg" alt="Hospital 1 - Photo 4">
                    </div>
                    <h2>Nawaloka Hospita</h2>
                    <p>Address: Nawaloka Hospitals PLC, Colombo 2, Sri Lanka 2<br>Phone: General Line: <a href="tel:0115577111">0115 577 111</a> Channeling Hotline: <a href="tel:0115777888">0115 777 888</a></p>
                    <p>Services:<br> 24-hour OPD/accident and emergency services.<br>
								24-hour laboratory services and pharmacy.<br>
								Channelled consultation.<br>
								Fully-equipped operating theatre complex.<br>
								General/neurological/orthopaedic/maternity/genitourinary surgery.<br>
								Eye unit/eye surgery.<br>
								Dental clinic.<br>
								Intensive care unit (ICU)/neonatal ICU</p>
                </section>
                <section class="hospital">
                    <div class="image-slider">
                        <img class="slide" src="img/9wels/download (3).jpeg" alt="Hospital 1 - Photo 1">
                        <img class="slide" src="img/9wels/download.jpeg" alt="Hospital 1 - Photo 2">
                         <img class="slide" src="img/9wels/image_73f729462b.jpg" alt="Hospital 1 - Photo 3">
                          <img class="slide" src="img/9wels/images.jpeg" alt="Hospital 1 - Photo 4">
                    </div>
                    <h2>Ninewells Hospita </h2>
                    <p>Address: 55/1 Kirimandala Mawatha, Colombo 11222<br>Phone: <a href="tel:0114520999">0114 520 999</a></p>
                    <p>Services: Service X, Service Y, Service Z</p>
                </section>
                <!-- Add more hospitals on the right side -->
                <section class="hospital">
                    <div class="image-slider">
                        <img class="slide" src="img/lessons/download.jpeg" alt="Hospital 1 - Photo 1">
                        <img class="slide" src="img/lessons/images%20(1).jpeg" alt="Hospital 1 - Photo 2">
                         <img class="slide" src="img/lessons/images%20(2).jpeg" alt="Hospital 1 - Photo 3">
                          <img class="slide" src="img/lessons/images.jpeg" alt="Hospital 1 - Photo 4">
                    </div>
                    <h2>Leesons Hospital</h2>
                    <p>Address: 33 Thewatta Rd, Ragama<br>Phone: <a href="tel:0112961300">0112 961 300</a></p>
                    <p>Services: Service X, Service Y, Service Z</p>
                </section>
            </div>
        </div>
    </main>

    <script>
        function startImageSlider(slider) {
            var slides = slider.getElementsByClassName("slide");
            var currentSlide = 0;

            function showSlide(index) {
                for (var i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slides[index].style.display = "block";
            }

            showSlide(currentSlide);

            setInterval(function () {
                currentSlide = (currentSlide + 1) % slides.length;
                showSlide(currentSlide);
            }, 3000); // Change image every 3 seconds (adjust as needed)
        }

        var sliders = document.getElementsByClassName("image-slider");
        for (var i = 0; i < sliders.length; i++) {
            startImageSlider(sliders[i]);
        }
    </script>
</body>
 <footer class="footer">
        <div class="fcontainer">
            <div class="row">
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Privacy Policies</a></li>
                        <li><a href="#">T & C</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>               
                <div class="footer-col">
                    <h4>Get Help</h4>
                    <ul>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Live Chat</a></li>
                        <li><a href="#">Refund</a></li>
                    </ul>
                </div>               
 
                <div class="footer-col">
                    <h4>Payment</h4>
                    <div class="payment-links">
                        <a href="#"><i class="fab fa-cc-visa"></i></a>
                        <a href="#"><i class="fab fa-cc-mastercard"></i></a>
                        <a href="#"><i class="fab fa-cc-amex"></i></a>
                        <a href="#"><i class="fab fa-cc-paypal"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
                <div class="copyright"> <p>&copy; 2023 E-Channelling</p>
            <p><a href="4member.html"> By NexTech Visionaries</a></p>
            
        </div>
        
    </footer>    

</html>
