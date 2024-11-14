
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conexiones a base de datos con Java</title>
    <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <style>
        /* Estilo para el canvas de confetti */
        #confettiCanvas {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none; /* Hace que el canvas no interfiera con clics en otros elementos */
            z-index: 9999; /* Asegura que el confetti esté encima del resto del contenido */
        }
    </style>
</head>
<body>
    <canvas id="confettiCanvas"></canvas>

    <script>
        const canvas = document.getElementById("confettiCanvas");
        const ctx = canvas.getContext("2d");

        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;

        let confettiArray = [];
        const colors = ["#FFC107", "#E91E63", "#9C27B0", "#03A9F4", "#4CAF50", "#FFEB3B"];
        let animationId;

        class Confetti {
            constructor() {
                this.x = Math.random() * canvas.width;
                this.y = Math.random() * canvas.height - canvas.height;
                this.size = Math.random() * 10 + 5;
                this.speed = Math.random() * 3 + 2;
                this.color = colors[Math.floor(Math.random() * colors.length)];
            }

            update() {
                this.y += this.speed;
                if (this.y > canvas.height) {
                    this.y = 0 - this.size;
                    this.x = Math.random() * canvas.width;
                }
            }

            draw() {
                ctx.fillStyle = this.color;
                ctx.fillRect(this.x, this.y, this.size, this.size);
            }
        }

        function initConfetti() {
            confettiArray = [];
            for (let i = 0; i < 200; i++) {
                confettiArray.push(new Confetti());
            }
        }

        function animateConfetti() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            confettiArray.forEach(confetti => {
                confetti.update();
                confetti.draw();
            });
            animationId = requestAnimationFrame(animateConfetti);
        }

        initConfetti();
        animateConfetti();

        setTimeout(() => {
            cancelAnimationFrame(animationId);
            canvas.remove();
        }, 3000);

        window.addEventListener("resize", () => {
            canvas.width = window.innerWidth;
            canvas.height = window.innerHeight;
            initConfetti();
        });
    </script>
    <style>
    *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      text-decoration: none;
      list-style: none;
     } 
        body{
        font-family: 'Roboto', sans-serif;
    }
    
    .header {
        display: flex;
        align-items: center;
        height: 70vh;
        min-height: 700px;
    }
    
    .container {
        max-width: 1200px;
        margin: 0 auto;
    }
    
    .menu {
        position: absolute;
        top: 10px;
        left: 0;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    
    .logo {
        font-weight: 800;
        font-size: 25px;
        color: #FC697A;
        text-transform: uppercase;   
    }
    .menu .navbar ul li {
        position: relative;
        float: left;  
    }
    
    .menu .navbar ul li a {
        font-size: 17px;
        font-weight: 600;
        padding: 20px;
        color: #656875;
        display: block;
        text-transform: uppercase;
    }
    
    .menu .navbar ul li a:hover {
        color: #12114D;
    }
    
    #menu {
        display: none; 
    }
    .menu-icono {
        width: 25px; 
    }
    
    .menu label {
        cursor: pointer; 
        display: none;
    }
    
    
    .header-content{
        margin-top: 100px;
        display: flex;
        padding: 50px;
        background-color: #F5F9FC;
        border-radius: 25px;
    }
    
    .header-txt {
        width: 50%; 
    }
    .header-txt h1{
        font-size: 50px;
        line-height: 70px;
        color: #12114D;
        text-transform: capitalize;
        font-weight: 800;
        margin-bottom: 25px;
    }
    
    .header-txt p {
        font-size: 16px;
        color: #656875;
        margin-bottom: 35px;
    }
    
    .btn-1{
        display: inline-block;
        padding: 13px 25px;
        background-color: #FC697A;
        font-size: 17px;
        color: #FFFFFF;
        border-radius: 15px;
        text-transform: capitalize;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }
    
    .btn-1:hover {
        background-color: #E95F6F; 
    }
    
    .header-img img {
       width: 50%;
       text-align: right;
    }
    
    .header-img img {
       width: 400px;  
    }
    
    .general {
       padding: 100px 0;
       display: flex;
    }
    
       .general-1 {
       width: 70%;
       display: flex;
    }
       .general-card {
       padding: 40px;
       text-align: center;
       margin: 0 10px;
       border-radius: 25px;
       box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
       background-color: #f5f5dc;
    }
    
    .general-card img {
       width: 200px;
       margin-bottom: 20px;
    }
    
    .general-card h3 {
       font-size: 18px;
       color: #12114D;
       margin-bottom: 15px;
    }
    
    .general-card p {
       font-size: 16px;
       color: #656875;
    }
    
    .general-2 {
       width: 30%;
       margin: 0 35px;
    }
    
    h2{
       font-size: 40px;
       line-height: 50px;
       color: #12114D;
       margin-bottom: 20px;
    }
    
    .general-2 p {
       font-size: 16px;
       color: #656875;
       margin-bottom: 35px;
    }
    
    .btn-2 {
       display: inline-block;
       padding: 13px 25px;
       color: #12114D;
       font-size: 17px;
       text-transform: capitalize;
       border-radius: 15px;
       box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); /* Remover espacio en rgba */

    }
    
    .btn-2:hover {
       background-color: #FC697A;
       color: #FFFFFF;
    }
    
    .bg-1{
       width: 33%;
       height: 400px;
       background-image: url(vistas/imagenes/conexion.jpg);
       background-position: center center;
       background-repeat: no-repeat;
       background-size: cover;
    }
    
    .bg-2{
       width: 33%;
       height: 400px;
       background-image: url(vistas/imagenes/crud.jpg);
       background-position: center center;
       background-repeat: no-repeat;
       background-size: cover;
    }
    
    .bg-3{
       width: 33%;
       height: 400px;
       background-image: url(vistas/imagenes/base.jpeg);
       background-position: center center;
       background-repeat: no-repeat;
       background-size: cover;
       
    }
    
    .information {
       padding: 100px 0;
       background-color: #F5F9FC;
       text-align: center;
    }
    
    .information-content {
       margin-top: 70px;
       display: flex;
    }
    
    .information-1 {
       margin: 0 25px;
    }
    
    .information-1 h3 {
       text-transform: capitalize;
       font-size: 30px;
       color: #12114D;
       margin-bottom: 16px;
    }
    .information-1 p {
       font-size: 25px;
       color: #656875;
       margin-bottom: 35px;
    }
    
    .footer {
       padding: 50px 0;
       display: flex;
       align-content: center;
       justify-content: space-between;
    }
    
    .footer-txt{
       padding-right: 500px;
    }
    
    .footer-txt p {
       font-size: 16px;
       color: #656875;
       margin-top: 25px;
    }
    
    .footer-socials img{
       display: flex;
    }
    
    .footer-socials img {
       margin: 0 15px;
       width: 30px;
       height: 30px;
    }
    
    @media(max-width:991px){
       .menu {
       padding: 30px;
    }
    .menu label {
       display: initial;
    }
    
    .menu .navbar {
       position: absolute;
       top: 100%;
       right: 0;
       left: 0;
       background-color: #F0EFEF;
       display: none;
    }
    .menu .navbar ul li{
       width: 100%
    }
    #menu:checked ~ .navbar{
       display: initial;
       
    }
    .header-content{
      height: 0vh;
      min-height: 1000px;
      background-color: #F5F9FC;
      
     }
     .header-content {
       flex-direction: column;
       padding: 50px 30px 20px 30px;
       margin:0;
    }
    .header-txt {
       width: 100%;
       margin-right: 0;
       text-align: center;
       margin-bottom: 25px;   
    }
    .header-img {
       width: 100%;
       text-align: center;
       }
       .header-img img {
       width: 100%;
       
       }
       .general {
       padding: 30px;
       flex-direction: column;
       }
       .general-1 {
       width: 100%;
       flex-direction: column;
       order: 2;
       }
       
       .general-2 {
       width: 100%;
       margin: 0 0 40px 0;
       text-align: center;
       }
       .general-card {
       margin: 0 0 25px 0;
       }
       .bg-1 , .bg-2 , .bg-3 {
       width: 100%
       }
       .information {
       padding: 30px;
       }
       .information-content{
       margin-top: 30px;
       flex-direction: column;
       
       }
       .information-1{
       text-align: center;
       margin: 0 0 45px 0;
       }
       .footer{
       flex-direction: column;
       align-items: center;
       text-align: center;
       }
       .footer-txt{
       padding-right: 0;
       }
       .footer-socials {
       margin-top: 50px;
       }
    }
</style>
    <header class="header">
        <div class="menu container">
            <a href="#" class="logo">Menú</a>
            <input type="checkbox" id="menu"/>
            <label for="menu">
                <img src="vistas/imagenes/menu.png" class="menu-icono" alt="">
            </label>
            <nav class="navbar">
                <ul>
                    <li><a href="programacion.jsp" target="_blank">Programación Orientada a Objetos</a></li>
                    <li><a href="conexiones.jsp" target="_blank">Conexiones a bases de datos</a></li>
                </ul>  
            </nav>
        </div>
        
        <div class="header-content container">
            <div class="header-txt">
                <h1>Conexion a Base de datos con Java</h1>
                <p>
                    En Java, las conexiones a bases de datos se realizan principalmente
                    a través de la API JDBC (Java Database Connectivity), que permite a 
                    las aplicaciones conectarse, ejecutar consultas SQL y obtener resultados 
                    de bases de datos relacionales (como MySQL, PostgreSQL, Oracle, etc.).
                    
                </p>
                <a href="https://es.stackoverflow.com/questions/138638/conectar-java-con-mysql" class="btn-1">Click para más información</a>
            </div>
            <div class="header-img">
                <img src="vistas/imagenes/conexion11.jpg" alt="">
            </div>
        </div>
    </header>
    
    
    <footer class="footer container">
        <div class="footer-txt">
            <a href="#" class="logo">Programación II UMG</a>
            <p>Página Web</p>
        </div>
        
        <div class="footer socials">
            <a href="https://www.umg.edu.gt/"><img src="vistas/imagenes/mariano.png"width="100" height="100"></a>
            <a href="#"><img src="vistas/imagenes/cmc.png" alt=""></a>
            <a href="#"><img src="vistas/imagenes/cmc.png" alt=""></a>
        </div>
    </footer>

    
</body>
</html>


