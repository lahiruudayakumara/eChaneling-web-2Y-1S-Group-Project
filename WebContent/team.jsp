<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexTech Visionaries</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column; 
            align-items: center;
            height: 100vh;
            background-image: url('img/team2.jpg');
            background-size: cover;
            margin: 0;
        }
        .team-name {
            font-size: 36px;
            margin-bottom: 20px;
            color: #000000;
            text-align: center; 
            font-family: 'Arial', sans-serif; 
            font-style: italic; 
        }
        .team-container {
            display: flex;
            flex-direction: row;
        }
        .team-member {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 20px;
            background-color: rgba(255, 255, 255, 0.0);
            padding: 20px;
            border-radius: 10px;
            color: rgb(19, 19, 19);
        }
        .team-member img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            transition: transform 0.3s; /* Add a smooth transition effect for scale */
        }
        .team-member img:hover {
            transform: scale(1.1); /* Scale up the image on hover */
        }
        .team-member h2 {
            margin-top: 10px;
        }
        .social-links {
            margin-top: 10px;
        }
        .social-links a {
            text-decoration: none;
            margin: 5px;
            position: relative; /* Required for positioning the tooltip */
        }
        .social-links img {
            width: 30px;
            height: 30px;
            transition: transform 0.3s, opacity 0.3s; /* Add transitions for scale and opacity */
        }
        .social-links img:hover {
            transform: scale(1.2); /* Scale up the icon on hover */
        }
        .social-links span.tooltip {
            position: absolute;
            bottom: 100%; /* Position the tooltip above the icon */
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
            padding: 5px;
            border-radius: 5px;
            opacity: 0; /* Initially hide the tooltip */
            transition: opacity 0.3s; /* Add a transition for opacity */
        }
        .social-links a:hover .tooltip {
            opacity: 1; /* Show the tooltip on hover */
        }

        /* Responsive settings */
        @media (max-width: 768px) {
            body {
                background-size: auto;
            }

            .team-name h1 {
                font-size: 24px;
            }

            .team-member {
                width: 100%;
                margin: 10px 0;
            }

            .team-member img {
                width: 150px;
                height: 150px;
            }

            .social-links {
                margin-top: 5px;
            }
        }

        @media (max-width: 576px) {
            body {
                background-size: auto;
            }

            .team-name h1 {
                font-size: 20px;
            }

            .team-member img {
                width: 100px;
                height: 100px;
            }
        }
    </style>
</head>
<body>
    <div class="team-name">
        <center><h1>NexTech Visionaries</h1></center>
    </div>
    <div class="team-container">
        <div class="team-member">
          
                <img src="img/dushan.png" alt="Facebook">
            </a>
            <h2>K K D D KEERTHI</h2>
            <div class="social-links">
            	<a href="https://www.linkedin.com/in/member2" target="_blank"><img src="img/in.png" alt="LinkedIn"></a> 
                <a href="https://github.com/member2" target="_blank"><img src="img/git.png" alt="GitHub"></a>
                 <a href="https://www.facebook.com/member2" target="_blank"><img src="img/fb.png" alt="Facebook"></a>
                
            </div>
        </div>

        <div class="team-member">
            
                <img src="img/lahiru.jpeg" alt="Facebook">
            </a>
            <h2>W D L UDAYAKUMARA</h2>
            <div class="social-links">
             	<a href="https://www.linkedin.com/in/member2" target="_blank"><img src="img/in.png" alt="LinkedIn"></a> 
                <a href="https://github.com/member2" target="_blank"><img src="img/git.png" alt="GitHub"></a>
                 <a href="https://www.facebook.com/member2" target="_blank"><img src="img/fb.png" alt="Facebook"></a>
                
            </div>
        </div>

        <div class="team-member">
           
                <img src="img/yohan.jpeg" alt="Facebook">
            </a>
            <h2>W D Y C WEERAPPERUMA</h2>
            <div class="social-links">
                      	<a href="https://www.linkedin.com/in/member2" target="_blank"><img src="img/in.png" alt="LinkedIn"></a> 
                <a href="https://github.com/member2" target="_blank"><img src="img/git.png" alt="GitHub"></a>
                 <a href="https://www.facebook.com/member2" target="_blank"><img src="img/fb.png" alt="Facebook"></a>
                
            </div>
        </div>

        <div class="team-member">
           
                <img src="img/duvindu.jpeg" alt="Facebook">
            </a>
            <h2>N A D NIMSARA</h2>
            <div class="social-links">
             <a href="https://www.linkedin.com/in/duvindu-nimsara/" target="_blank"><img src="img/in.png" alt="LinkedIn"></a>
              <a href="https://github.com/duvindunimsara" target="_blank"><img src="img/git.png" alt="GitHub"></a>
                <a href="https://m.facebook.com/duvindu.nimsara/" target="_blank"><img src="img/fb.png" alt="Facebook"></a>
               
            </div>
        </div>
    </div>
</body>
</html>
