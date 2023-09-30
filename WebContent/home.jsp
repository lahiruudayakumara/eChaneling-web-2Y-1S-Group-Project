<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Channelling</title>
    <link rel="stylesheet" href="/css/home.css">
    
</head>
<body>
    <header>
        <h1>Welcome to E-Channelling</h1>
    </header>

    <div class="content1">
        <div class="content2">
            <section class="search-section">
                <h2>FIND A DOCTOR</h2>
                <form id="doctor-search-form" method="post" action="#">
                    <input type="text" name="doctor-name" placeholder="Doctor's Name">
                    <select name="specialization">
                        <option value="" disabled selected>Select a specialization</option> 
                        <option value="Anaesthetist">Anaesthetist</option>
                        <option value="Audiologist">Audiologist</option>
                        <option value="Ayurvedha">Ayurvedha</option>
                        <option value="Cardiologist">Cardiologist</option>
                        <option value="Dentist">Dentist</option>
                        <option value="Diabetologist">Diabetologist</option>
                        <option value="ENT">ENT</option>
                        <option value="Neurologist">Neurologist</option>
                        <option value="Physiotherapy">Physiotherapy</option>
                        <option value="Psychiatrist">Psychiatrist</option>
                    </select>
                    <select name="hospital">
                        <option value="" disabled selected>Select a hospital</option>
                        <option value="Asiri">Asiri Hospital</option>
                        <option value="Hemas">Hemas Hospital</option>
                        <option value="Lanka">Lanka Hospital</option>
                        <option value="Nawaloka">Nawaloka Hospital</option>
                        <option value="Ninewhales">Ninewhales Hospital</option>
                    </select>
                    <input type="date" name="date" placeholder="Select a date">
                    <button type="submit">Search</button>
                </form>
            </section>
        </div>
    </div>

<div class="content3">
    <div class="quick-access">
        <h2>Quick Access</h2>
    </div>

    <div class="box-container">
        <!-- Box 1 -->
        <div class="box">
            <a href="page2.html">
                <img src="/img/delivery.png" alt="Image 1">
                <h3>Order Medicine</h3>
            </a>
        </div>
        
        
        <!-- Box 2 -->
        <div class="box">
            <a href="page3.html">
                <img src="/img/refund.png" alt="Image 2">
                <h3> Claim Refund</h3>
            </a>
        </div>

        <!-- Box 3 -->
        <div class="box">
            <a href="page1.html">
                <img src="/img/privacyPolicy.png" alt="Image 3">
                <h3>Privacy Policy</h3>
            </a>
        </div>

        <!-- Box 4 -->
        <div class="box">
            <a href="page4.html">
                <img src="/img/terms-and-conditions.png" alt="Image 4">
                <h3>Terms & Conditions</h3>
            </a>
        </div>
    </div>

    <div class="content4">
        <div class="slideshow-container">
            <div class="slide fade">
                <img src="/img/Slide1.png" alt="Slide 1">
            </div>
            <div class="slide fade">
                <img src="/img/Slide2.png" alt="Slide 2">
            </div>
            <div class="slide fade">
                <img src="/img/Slide3.png" alt="Slide 3">
            </div>
            <div class="slide fade">
                <img src="/img/slide4.png" alt="Slide 4">
            </div>
            <div class="slide fade">
                <img src="/img/slide5.png" alt="Slide 5">
            </div>
            <div class="slide fade">
                <img src="/img/slide6.png" alt="Slide 6">
            </div>
        </div>
    </div>

    <script src="/js/HomeSlideShow.js"></script>
</div>
    
    
    <footer>
        <p>&copy; 2023 E-Channelling</p>
    </footer>


</body>
</html>